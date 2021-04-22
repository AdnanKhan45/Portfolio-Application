import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:smooth_ui_designs/colors.dart';
import 'package:smooth_ui_designs/header.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack([
      VxDevice(
          mobile: VStack([
            "Got a project?\nLet's talk.".text.white.center.xl2.make(),
            10.heightBox,
            "etechviral@gmail.com".text.color(UIColors.accentColor).semiBold.make().box.border(color: UIColors.accentColor).p16.rounded.make()
          ],
            crossAlignment : CrossAxisAlignment.center,
          ),
          web: HStack([
            "Got a project?\nLet's talk.".text.white.center.xl2.make(),
            10.heightBox,
            "etechviral@gmail.com".text.color(UIColors.accentColor).semiBold.make().box.border(color: UIColors.accentColor).p16.rounded.make()
          ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16()
      ),
      50.heightBox,
      CostumAppBar(),
      10.heightBox,
      "Thanks for scrolling, ".richText.white.semiBold.withTextSpanChildren(["that's all folks.".textSpan.green50.make()]).make(),
      10.heightBox,
      ["Made in Pakistan with".text.red500.make(),
      10.widthBox,
      Icon(AntDesign.heart, color: Vx.red500, size: 14,)
      ].hStack(crossAlignment: CrossAxisAlignment.center)

    ], crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
