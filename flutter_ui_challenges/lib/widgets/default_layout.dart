import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/constants/layout.dart';
import 'package:get/get.dart';

class DefaultLayout extends StatelessWidget {
  const DefaultLayout({
    Key key,
    this.header,
    this.body,
    this.backgroundColor,
    this.cliped = false,
    this.overflow = false,
    this.overflowBody,
  }) : super(key: key);

  final Widget header;
  final Widget body;
  final Widget overflowBody;
  final Color backgroundColor;
  final bool cliped, overflow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Color(0xFF3A9EC1),
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            child: Column(
              children: [
                Container(
                  height: Get.height * 0.35,
                  width: Get.width,
                  child: header,
                ),
                SizedBox(height: spacing),
                Expanded(
                  child: Container(
                    clipBehavior: cliped ? Clip.hardEdge : Clip.none,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(borderRadius * 2),
                        topRight: Radius.circular(borderRadius * 2),
                      ),
                    ),
                    child: body,
                  ),
                ),
              ],
            ),
          ),
          overflowBody ?? SizedBox(),
        ],
      ),
    );
  }
}
