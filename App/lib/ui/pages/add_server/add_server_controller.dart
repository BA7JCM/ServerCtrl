import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:is_first_run/is_first_run.dart';
import 'package:server_ctrl/ui/navigation/navigator.dart';
import 'package:server_ctrl/utilities/dialogs/dialogs.dart';
import 'package:server_ctrl/values/navigation_routes.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../generated/l10n.dart';
import '../../../navigator_key.dart';
import '../../../utilities/http/session.dart';
import '../../../utilities/snackbar/snackbar.dart';

class AddServerController extends GetxController {

  final servernameController = TextEditingController().obs;
  final ipController = TextEditingController().obs;
  final usernameController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final isHttps = true.obs;

  final isLoggingIn = false.obs;
  final errorMessage = "".obs;

  AddServerController() {
    showDialogIfFirstRun();
  }

  void showDialogIfFirstRun() async {
    bool firstRun = await IsFirstRun.isFirstCall();
    if (firstRun) {
      showDialog(
        context: navigatorKey.currentContext!,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text(S.current.important),
              content: Text(S.current.InstallPlugin),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: () => launchUrl(Uri.parse("https://github.com/blitzdose/ServerCtrl")), child: Text(S.current.moreInfo)),
                    TextButton(onPressed: () => Navigator.pop(context), child: Text(S.current.ok))
                  ],
                )
              ]
          );
        },
      );
    }
  }

  login() async {
    isLoggingIn(true);
    errorMessage("");
    String servername = servernameController.value.text;
    String ip = ipController.value.text;
    String username = usernameController.value.text;
    String password = passwordController.value.text;

    if (ip.isEmpty || username.isEmpty || password.isEmpty) {
      errorMessage(S.current.errorInputMissing);
      isLoggingIn(false);
      return;
    }

    ip = "$ip/main";

    String protocol = "http://";
    if (isHttps.isTrue) {
      protocol = "https://";
    }

    servername = servername.isNotEmpty ? servername : ip;

    const storage = FlutterSecureStorage();
    String? servers = await storage.read(key: "servers");
    List<String>? serverList = servers?.split("~*~*~");
    if (serverList != null && serverList.contains(protocol + ip)) {
      errorMessage(S.current.youAlreadyAddedThisServer);
      isLoggingIn(false);
      return;
    }

    await loginProcess(protocol, ip, username, password, null, storage, servername, serverList);
  }

  Future<void> loginProcess(String protocol, String ip, String username, String password, String? code, FlutterSecureStorage storage, String servername, List<String>? serverList) async {
    Session.setBaseURL(protocol + ip);
    var map = <String, dynamic>{};
    map['username'] = username;
    map['password'] = base64.encode(utf8.encode(password));
    if (code != null) {
      map['code'] = code;
      map['needsAppPassword'] = "true";
    }  
    try {
      var response = await Session.post("/api/user/login", map);
      if (response.statusCode == 401) {
        errorMessage(S.current.wrongUsernameOrPassword);
      } else if (response.statusCode == 402) {
        InputDialog(
          title: S.current.twofactorAuthentication,
          textInputType: TextInputType.number,
          message: S.current.pleaseInputYourCode,
          inputFieldHintText: S.current.totpCode,
          inputFieldBorder: const OutlineInputBorder(),
          inputFieldLength: 6,
          inputFieldError: (code == null) ? null : S.current.wrongCode,
          rightButtonText: S.current.login,
          leftButtonText: S.current.cancel,
          onLeftButtonClick: null,
          onRightButtonClick: (text) {
            loginProcess(protocol, ip, username, password, text, storage, servername, serverList);
          },
        ).showInputDialog(navigatorKey.currentContext!);
      } else if (response.statusCode == 200) {
        var responseJson = jsonDecode(response.body);
        if (responseJson['appPassword'] != null) {
          password = responseJson['appPassword'];
        }  
        await storage.write(key: Session.baseURL, value: "$servername\n$username\n$password");
        serverList ??= [];
        serverList.add(Session.baseURL);
        await storage.write(key: "servers", value: serverList.join("~*~*~"));

        NavigationRoutes.routes.removeRange(0, NavigationRoutes.routes.length-3);

        MNavigator.initialSetup = true;
        MNavigator.initRoutes(openNewestEntry: true);

        //NavigationRoutes.routes.insert(
        //    NavigationRoutes.routes.length-3,
        //    NavigationRoute(
        //        id: Session.baseURL,
        //        title: servername,
       //         icon: Icons.dns_rounded,
       //         route: () {return MainLogin.mainLogin(Session.baseURL);}
        //    )
        //);
        //LayoutStructureState.navigator?.onItemTap_(NavigationRoutes.routes.length-3, false);
        Snackbar.createWithTitle(S.current.newServer, S.current.newServerAdded);
        servernameController.value.text = "";
        ipController.value.text = "";
        usernameController.value.text = "";
        passwordController.value.text = "";
        isHttps(true);
        FocusManager.instance.primaryFocus?.unfocus();
      }
    } on SocketException catch (_) {
      errorMessage(S.current.cannotReachIp(ip));
    } on TimeoutException catch (_) {
      errorMessage(S.current.cannotReachIp(ip));
    } on HandshakeException catch (p) {
      if (p.osError != null && p.osError!.message.contains("CERTIFICATE_VERIFY_FAILED")) {
        errorMessage(S.current.acceptWarningTryAgain);
      } else {
        errorMessage(S.current.cannotReachIpOverHttps(ip));
      }
    } catch (e) {
      e.printError();
      errorMessage(S.current.somethingWentWrong);
    }
    isLoggingIn(false);
  }

}