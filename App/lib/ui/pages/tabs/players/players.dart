import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'players_controller.dart';

class PlayersTab extends StatelessWidget {
  final controller = Get.put(PlayersController());

  final ScrollController scrollController = ScrollController();

  PlayersTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  if (controller.showProgress.value) const LinearProgressIndicator() else const SizedBox(height: 4.0),
                  Expanded(
                    child: SizedBox(
                      width: min(700, MediaQuery.of(context).size.width),
                      child: Scrollbar(
                        controller: scrollController,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            controller: scrollController,
                            children: controller.playerItems,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}