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
        Column(
          children: [
            if (controller.showProgress.value) const LinearProgressIndicator() else const SizedBox(height: 4.0),
            Expanded(
              child: SizedBox(
                width: min(700, MediaQuery.of(context).size.width),
                child: Scrollbar(
                  controller: scrollController,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    controller: scrollController,
                    children: controller.playerItems,
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}