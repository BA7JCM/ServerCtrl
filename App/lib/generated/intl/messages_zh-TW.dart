// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a zh_TW locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'zh_TW';

  static String m0(name) => "帳戶 ${name}";

  static String m1(ip) => "無法連線到 \"${ip}\"";

  static String m2(ip) => "無法透過 HTTPS 連線到 \"${ip}\"";

  static String m3(name) => "作者： ${name}";

  static String m4(accountName) => "帳號 \"${accountName}\" 將永久移除";

  static String m5(name) => "\"${name}\" 將永久刪除。";

  static String m6(routeTitle) => "刪除 \"${routeTitle}\"";

  static String m7(filename) => "已成功下載 \"${filename}\"";

  static String m8(name) => "檔案 \"${name}\"";

  static String m9(version) => "版本：${version}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "InstallPlugin": MessageLookupByLibrary.simpleMessage(
            "此應用程式需要在您現有的 Minecraft 伺服器上安裝本插件。請點擊 \"更多資訊\" 查看更多哦~ :)"),
        "about": MessageLookupByLibrary.simpleMessage("關於"),
        "aboutServerctrl":
            MessageLookupByLibrary.simpleMessage("關於 ServerCtrl"),
        "acceptNewCert":
            MessageLookupByLibrary.simpleMessage("金鑰已變更。請驗證並接受新金鑰。"),
        "acceptWarningTryAgain":
            MessageLookupByLibrary.simpleMessage("請接受警告並重新登入"),
        "account": MessageLookupByLibrary.simpleMessage("帳戶"),
        "accountAndName": m0,
        "accounts": MessageLookupByLibrary.simpleMessage("帳戶"),
        "add2FAtoApp": MessageLookupByLibrary.simpleMessage(
            "請將2FA(雙重驗證)金鑰添加到您的應用程式（例如Google Authenticator），方法是掃描QR圖碼或複製金鑰"),
        "addMinecraftServer": MessageLookupByLibrary.simpleMessage("新增伺服器"),
        "add_server": MessageLookupByLibrary.simpleMessage("新增伺服器"),
        "allYourChangesWillBeLost":
            MessageLookupByLibrary.simpleMessage("將不會儲存變更"),
        "allocated_memory": MessageLookupByLibrary.simpleMessage("分配記憶體"),
        "appearance": MessageLookupByLibrary.simpleMessage("外觀"),
        "ban": MessageLookupByLibrary.simpleMessage("封鎖"),
        "cancel": MessageLookupByLibrary.simpleMessage("取消"),
        "cannotConnectMaybeCredentials":
            MessageLookupByLibrary.simpleMessage("無法連接到伺服器，可能是金鑰變更了?"),
        "cannotFindCredentials":
            MessageLookupByLibrary.simpleMessage("找不到與此伺服器相關的金鑰，請重新輸入"),
        "cannotReachIp": m1,
        "cannotReachIpOverHttps": m2,
        "cannotReachTheServer":
            MessageLookupByLibrary.simpleMessage("無法連線到伺服器"),
        "certCannotBeVerified":
            MessageLookupByLibrary.simpleMessage("無法驗證伺服器金鑰。是否輸入正確？SHA1金鑰： "),
        "certificateFile": MessageLookupByLibrary.simpleMessage("金鑰檔案"),
        "certificateKeyFile": MessageLookupByLibrary.simpleMessage("金鑰密鑰檔案"),
        "certificateUploadedSuccessfully":
            MessageLookupByLibrary.simpleMessage("金鑰成功上傳"),
        "changePassword": MessageLookupByLibrary.simpleMessage("更改密碼"),
        "close": MessageLookupByLibrary.simpleMessage("關閉"),
        "codedBy": m3,
        "command": MessageLookupByLibrary.simpleMessage("指令"),
        "configureTwofactorAuthentication":
            MessageLookupByLibrary.simpleMessage("2FA(雙重驗證)設定"),
        "confirm": MessageLookupByLibrary.simpleMessage("確認"),
        "connectionFailed": MessageLookupByLibrary.simpleMessage("連線失敗"),
        "console": MessageLookupByLibrary.simpleMessage("控制台"),
        "copySecret": MessageLookupByLibrary.simpleMessage("複製金鑰"),
        "cpu_cores": MessageLookupByLibrary.simpleMessage("CPU 核心數"),
        "cpu_load": MessageLookupByLibrary.simpleMessage("CPU 使用率"),
        "cpu_usage": MessageLookupByLibrary.simpleMessage("CPU 使用率"),
        "create": MessageLookupByLibrary.simpleMessage("建立"),
        "createAccount": MessageLookupByLibrary.simpleMessage("建立帳戶"),
        "createFile": MessageLookupByLibrary.simpleMessage("建立檔案"),
        "createFolder": MessageLookupByLibrary.simpleMessage("建立資料夾"),
        "currentPassword": MessageLookupByLibrary.simpleMessage("目前密碼"),
        "darkMode": MessageLookupByLibrary.simpleMessage("暗色模式"),
        "dataPrivacy": MessageLookupByLibrary.simpleMessage("隱私權"),
        "defaultStr": MessageLookupByLibrary.simpleMessage("預設"),
        "delete": MessageLookupByLibrary.simpleMessage("刪除"),
        "deleteAccount": MessageLookupByLibrary.simpleMessage("你確定要刪除帳號?"),
        "deleteAccountMessage": m4,
        "deleteFile": MessageLookupByLibrary.simpleMessage("你確定要刪除檔案?"),
        "deleteFileMessage": m5,
        "deleteFiles": MessageLookupByLibrary.simpleMessage("確定要刪除檔案嗎?"),
        "deleteRoutetitle": m6,
        "deop": MessageLookupByLibrary.simpleMessage("移除伺服器管理員權限"),
        "design": MessageLookupByLibrary.simpleMessage("外觀主題"),
        "directory": MessageLookupByLibrary.simpleMessage("目錄"),
        "discard": MessageLookupByLibrary.simpleMessage("捨棄"),
        "discardChanges": MessageLookupByLibrary.simpleMessage("確定要捨棄變更?"),
        "discord": MessageLookupByLibrary.simpleMessage("Discord"),
        "donate": MessageLookupByLibrary.simpleMessage("捐款"),
        "download": MessageLookupByLibrary.simpleMessage("下載"),
        "downloaded": MessageLookupByLibrary.simpleMessage("已下載"),
        "downloadedFilenameSuccessfully": m7,
        "downloading": MessageLookupByLibrary.simpleMessage("下載中"),
        "dynamicColor": MessageLookupByLibrary.simpleMessage("動態顏色"),
        "edit": MessageLookupByLibrary.simpleMessage("編輯"),
        "egWithGoogleAuthenticator": MessageLookupByLibrary.simpleMessage(
            "例如：使用 Google Authenticator(沒有業配)"),
        "email": MessageLookupByLibrary.simpleMessage("電子郵件"),
        "errorCreatingAccount":
            MessageLookupByLibrary.simpleMessage("建立帳戶時發生錯誤"),
        "errorCreatingFile": MessageLookupByLibrary.simpleMessage("建立檔案時發生錯誤"),
        "errorCreatingFolder":
            MessageLookupByLibrary.simpleMessage("建立資料夾時發生錯誤"),
        "errorDeletingAccount":
            MessageLookupByLibrary.simpleMessage("刪除帳號時發生錯誤"),
        "errorDeletingFile": MessageLookupByLibrary.simpleMessage("刪除檔案時發生錯誤"),
        "errorDeletingFiles": MessageLookupByLibrary.simpleMessage("刪除檔案時發生錯誤"),
        "errorInputMissing":
            MessageLookupByLibrary.simpleMessage("請輸入伺服器IP、帳戶名稱和密碼"),
        "errorRenamingType": MessageLookupByLibrary.simpleMessage("重新命名時發生錯誤"),
        "errorResettingPassword":
            MessageLookupByLibrary.simpleMessage("更改密碼時發生錯誤"),
        "errorSavingPermissions":
            MessageLookupByLibrary.simpleMessage("儲存權限時發生錯誤"),
        "errorWhileDownloadingFile":
            MessageLookupByLibrary.simpleMessage("下載檔案時發生錯誤"),
        "errorWhileGeneratingCertificate":
            MessageLookupByLibrary.simpleMessage("產生金鑰時發生錯誤"),
        "errorWhileRemoving2fa":
            MessageLookupByLibrary.simpleMessage("停用2FA(雙重驗證)時發生錯誤"),
        "errorWhileSavingChanges":
            MessageLookupByLibrary.simpleMessage("儲存變更時發生錯誤"),
        "errorWhileSavingFile":
            MessageLookupByLibrary.simpleMessage("儲存檔案時發生錯誤"),
        "errorWhileUploadingCertificate":
            MessageLookupByLibrary.simpleMessage("上傳金鑰時發生錯誤"),
        "errorWhileUploadingFile":
            MessageLookupByLibrary.simpleMessage("上傳檔案時發生錯誤"),
        "error_sending_command":
            MessageLookupByLibrary.simpleMessage("執行指令時發生錯誤"),
        "file": MessageLookupByLibrary.simpleMessage("檔案"),
        "fileAndName": m8,
        "fileSavedSuccessfully": MessageLookupByLibrary.simpleMessage("檔案儲存成功"),
        "fileTooLarge": MessageLookupByLibrary.simpleMessage("檔案太大ㄌ"),
        "fileTooLargeText":
            MessageLookupByLibrary.simpleMessage("這個檔案對於內部編輯器來說太大了"),
        "files": MessageLookupByLibrary.simpleMessage("檔案"),
        "filesUploadedSuccessfully":
            MessageLookupByLibrary.simpleMessage("檔案成功上傳。"),
        "free_memory": MessageLookupByLibrary.simpleMessage("剩餘記憶體"),
        "generate": MessageLookupByLibrary.simpleMessage("生成"),
        "generateCertificate": MessageLookupByLibrary.simpleMessage("產生金鑰"),
        "generateNewHttpsCertificate":
            MessageLookupByLibrary.simpleMessage("產生新的通訊埠(HTTPS)金鑰"),
        "getInTouch": MessageLookupByLibrary.simpleMessage("聯絡我們"),
        "github": MessageLookupByLibrary.simpleMessage("GitHub"),
        "help": MessageLookupByLibrary.simpleMessage("協助"),
        "helpMe": MessageLookupByLibrary.simpleMessage("支持"),
        "helpMeKeepThisAppAlive": MessageLookupByLibrary.simpleMessage("感謝支持!"),
        "home": MessageLookupByLibrary.simpleMessage("首頁"),
        "howCanILogIn": MessageLookupByLibrary.simpleMessage("如何登入?"),
        "howCanILogInText": MessageLookupByLibrary.simpleMessage(
            "在您的 Bukkit / Spigot / Paper 伺服器上安裝本插件後，插件將在控制台中顯示帳戶 \"admin\" 的密碼。注意！這只在第一次安裝插件並開啟伺服器或未註冊名為\"admin\"的帳戶時出現。\n\n如果您忘記密碼了...又或是無法再取得控制台日誌，請刪除插\"ServerCtrl\"資料夾中的\"config.yml\"文件或僅刪除此檔案中的\"admin\"使用者。\n\n如果需要場外援助，請加入Discord伺服器！"),
        "https": MessageLookupByLibrary.simpleMessage("通訊埠(HTTPS)"),
        "important": MessageLookupByLibrary.simpleMessage("重要！"),
        "infoInstallPlugin":
            MessageLookupByLibrary.simpleMessage("你必須先安裝 ServerCtrl 插件"),
        "inputYourPassword": MessageLookupByLibrary.simpleMessage("輸入您的密碼"),
        "inputYourPasswordAndCurrent2fa":
            MessageLookupByLibrary.simpleMessage("輸入您的密碼和此刻 2FA 的動態密碼"),
        "ipOrHostname": MessageLookupByLibrary.simpleMessage("IP 或 網址"),
        "kick": MessageLookupByLibrary.simpleMessage("踢出"),
        "language": MessageLookupByLibrary.simpleMessage("語言"),
        "licenses": MessageLookupByLibrary.simpleMessage("執照"),
        "lightMode": MessageLookupByLibrary.simpleMessage("亮色模式"),
        "log": MessageLookupByLibrary.simpleMessage("日誌"),
        "loggingIn": MessageLookupByLibrary.simpleMessage("正在登入"),
        "login": MessageLookupByLibrary.simpleMessage("登入"),
        "longPressEntryToDeleteIt":
            MessageLookupByLibrary.simpleMessage("長按伺服器以刪除"),
        "material3": MessageLookupByLibrary.simpleMessage("背景(Material 3)"),
        "memory_usage": MessageLookupByLibrary.simpleMessage("記憶體使用率"),
        "moreInfo": MessageLookupByLibrary.simpleMessage("更多資訊"),
        "multipleFiles": MessageLookupByLibrary.simpleMessage("多個檔案"),
        "name": MessageLookupByLibrary.simpleMessage("名稱"),
        "newFile": MessageLookupByLibrary.simpleMessage("新檔案"),
        "newFolder": MessageLookupByLibrary.simpleMessage("新資料夾"),
        "newPassword": MessageLookupByLibrary.simpleMessage("新密碼"),
        "newServer": MessageLookupByLibrary.simpleMessage("新增伺服器"),
        "newServerAdded": MessageLookupByLibrary.simpleMessage("成功新增伺服器"),
        "no": MessageLookupByLibrary.simpleMessage("否"),
        "noFileSelected": MessageLookupByLibrary.simpleMessage("未選取檔案"),
        "noPlayersOnline": MessageLookupByLibrary.simpleMessage("伺服器線上沒有玩家"),
        "nothingSelected": MessageLookupByLibrary.simpleMessage("未選取"),
        "ok": MessageLookupByLibrary.simpleMessage("確定"),
        "op": MessageLookupByLibrary.simpleMessage("給予伺服器管理員權限"),
        "openWith": MessageLookupByLibrary.simpleMessage("開啟方式"),
        "password": MessageLookupByLibrary.simpleMessage("密碼"),
        "passwordChangedSuccessfully":
            MessageLookupByLibrary.simpleMessage("密碼成功更改"),
        "passwordsDoNotMatch": MessageLookupByLibrary.simpleMessage("密碼不一致"),
        "permissions": MessageLookupByLibrary.simpleMessage("權限"),
        "players": MessageLookupByLibrary.simpleMessage("在線玩家"),
        "pleaseAllowAccessToTheStorage":
            MessageLookupByLibrary.simpleMessage("請允許存取儲存空間"),
        "pleaseInputYourCode":
            MessageLookupByLibrary.simpleMessage("請輸入您的動態密碼"),
        "pleaseInputYourUsernameAndPassword":
            MessageLookupByLibrary.simpleMessage("請輸入您的帳戶名稱和密碼"),
        "pleasePutInYourCurrentPassword":
            MessageLookupByLibrary.simpleMessage("請輸入您目前的密碼"),
        "pleaseWait": MessageLookupByLibrary.simpleMessage("請稍後"),
        "plugin": MessageLookupByLibrary.simpleMessage("插件"),
        "pluginAndWebserverPort":
            MessageLookupByLibrary.simpleMessage("web伺服器連接埠(port)"),
        "port": MessageLookupByLibrary.simpleMessage("連接埠"),
        "remove": MessageLookupByLibrary.simpleMessage("停用"),
        "removeTwofactorAuthentication":
            MessageLookupByLibrary.simpleMessage("移除2FA(雙重驗證)？"),
        "rename": MessageLookupByLibrary.simpleMessage("重新命名"),
        "repeatNewPassword": MessageLookupByLibrary.simpleMessage("確認新密碼"),
        "reset": MessageLookupByLibrary.simpleMessage("重設"),
        "resetPassword": MessageLookupByLibrary.simpleMessage("重設密碼"),
        "reset_password": MessageLookupByLibrary.simpleMessage("重設密碼"),
        "restartToApplyLanguage":
            MessageLookupByLibrary.simpleMessage("請重新啟動應用程式以更新語言"),
        "save": MessageLookupByLibrary.simpleMessage("儲存"),
        "saveFile": MessageLookupByLibrary.simpleMessage("儲存檔案"),
        "savedChanges": MessageLookupByLibrary.simpleMessage("已儲存變更"),
        "savedSuccessfully": MessageLookupByLibrary.simpleMessage("成功儲存"),
        "saving": MessageLookupByLibrary.simpleMessage("儲存中"),
        "secretCopiedToClipboard":
            MessageLookupByLibrary.simpleMessage("金鑰已複製到剪貼簿"),
        "selectFile": MessageLookupByLibrary.simpleMessage("選擇檔案"),
        "selectedEntryWIllBeDeleted":
            MessageLookupByLibrary.simpleMessage("你選取的伺服器將永久從列表中刪除"),
        "server": MessageLookupByLibrary.simpleMessage("伺服器設定檔"),
        "serverNameInput":
            MessageLookupByLibrary.simpleMessage("伺服器名稱 (可自由命名)"),
        "server_ctrl": MessageLookupByLibrary.simpleMessage("ServerCtrl"),
        "settings": MessageLookupByLibrary.simpleMessage("設定"),
        "share": MessageLookupByLibrary.simpleMessage("分享"),
        "somethingWentWrong": MessageLookupByLibrary.simpleMessage("發生錯誤"),
        "specifyIpOrAddr":
            MessageLookupByLibrary.simpleMessage("請輸入 Minecraft 伺服器的網域或 IP "),
        "spigotmc": MessageLookupByLibrary.simpleMessage("SpigotMC"),
        "success": MessageLookupByLibrary.simpleMessage("成功"),
        "successfullyAdded2faToYourAccount":
            MessageLookupByLibrary.simpleMessage("您的帳號已成功啟用2FA(雙重驗證)"),
        "successfullyCreatedFile":
            MessageLookupByLibrary.simpleMessage("成功建立檔案"),
        "successfullyCreatedFolder":
            MessageLookupByLibrary.simpleMessage("成功建立資料夾"),
        "successfullyCreatedNewAccount":
            MessageLookupByLibrary.simpleMessage("成功建立新帳戶"),
        "successfullyDeleted": MessageLookupByLibrary.simpleMessage("成功刪除"),
        "successfullyGeneratedNewCertificate":
            MessageLookupByLibrary.simpleMessage("成功產生新金鑰"),
        "successfullyLoggedIn": MessageLookupByLibrary.simpleMessage("成功登入"),
        "successfullyRemoved2fa":
            MessageLookupByLibrary.simpleMessage("成功停用2FA(雙重驗證)"),
        "successfullyRenamed": MessageLookupByLibrary.simpleMessage("成功重新命名"),
        "successfullyResetPassword":
            MessageLookupByLibrary.simpleMessage("成功重設密碼"),
        "successfullySavedPermissions":
            MessageLookupByLibrary.simpleMessage("成功修改權限"),
        "test": MessageLookupByLibrary.simpleMessage("測試"),
        "thanks": MessageLookupByLibrary.simpleMessage("我很感謝支持我的人!"),
        "theSelectedFilesWillBePermanentlyDeleted":
            MessageLookupByLibrary.simpleMessage("選取的檔案將永久刪除"),
        "themeColor": MessageLookupByLibrary.simpleMessage("主題顏色"),
        "total_system_memory": MessageLookupByLibrary.simpleMessage("系統總記憶體"),
        "totpCode": MessageLookupByLibrary.simpleMessage("動態密碼 (TOTP)"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("重試"),
        "twofactorAuthentication":
            MessageLookupByLibrary.simpleMessage("2FA 雙重驗證"),
        "untrustedCertificate": MessageLookupByLibrary.simpleMessage("錯誤的金鑰"),
        "upload": MessageLookupByLibrary.simpleMessage("上傳"),
        "uploadCertificate": MessageLookupByLibrary.simpleMessage("上傳金鑰"),
        "uploadFiles": MessageLookupByLibrary.simpleMessage("上傳檔案"),
        "uploadHttpsCertificate":
            MessageLookupByLibrary.simpleMessage("上傳通訊埠(HTTPS)金鑰"),
        "usable_memory": MessageLookupByLibrary.simpleMessage("可用記憶體"),
        "useSystemSettings": MessageLookupByLibrary.simpleMessage("系統預設"),
        "used_memory": MessageLookupByLibrary.simpleMessage("已使用記憶體"),
        "username": MessageLookupByLibrary.simpleMessage("帳戶名稱"),
        "verifyPasswordForRemoving2FA":
            MessageLookupByLibrary.simpleMessage("請輸入您的密碼並停用2FA(雙重驗證)"),
        "verifyYourTwofactorAuthentication":
            MessageLookupByLibrary.simpleMessage("2FA(雙重驗證)"),
        "version": m9,
        "wrongCode": MessageLookupByLibrary.simpleMessage("密碼輸入錯誤"),
        "wrongPassword": MessageLookupByLibrary.simpleMessage("密碼錯誤"),
        "wrongUsernameOrPassword":
            MessageLookupByLibrary.simpleMessage("賬戶名稱或密碼錯誤"),
        "yes": MessageLookupByLibrary.simpleMessage("是"),
        "youAlreadyAddedThisServer":
            MessageLookupByLibrary.simpleMessage("您已經新增了伺服器"),
        "youAlreadyConfigured2FA":
            MessageLookupByLibrary.simpleMessage("您已經啟用了2FA(雙重驗證)，是否要移除？")
      };
}
