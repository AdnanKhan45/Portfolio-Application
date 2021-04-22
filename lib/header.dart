import 'dart:math';

import 'package:flutter/material.dart';
import 'package:smooth_ui_designs/colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nameWidget = "M.Adnan".text.white.xl5.lineHeight(1).size(context.isMobile ? 15 : 20).bold.make().shimmer();

    return SafeArea(
        child: VxBox(
            child: VStack([
      Stack(children: [
        PictureWidget(),
        Row(
          children: [
            VStack([
              if (context.isMobile) 50.heightBox else 10.heightBox,
              CostumAppBar().shimmer(primaryColor: UIColors.accentColor),
              15.heightBox,
              nameWidget,
              15.heightBox,
              VxBox().color(UIColors.accentColor).size(60, 10).make().shimmer(primaryColor: UIColors.accentColor),
              20.heightBox,
              SocialAccounts(),
            ]).pSymmetric(h: context.percentWidth * 8, v: 32),
            Expanded(
                child: VxResponsive(
              fallback: const Offstage(),
              medium: IntroductionWidget().pOnly(left: 120).h(context.percentHeight * 60),
              large: IntroductionWidget().pOnly(left: 120).h(context.percentHeight * 60),
            ))
          ],
        ).w(context.screenWidth)
      ])
    ])).size(context.screenWidth, context.percentHeight * 60).color(UIColors.secondaryColor).make());
  }
}

class IntroductionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        "- introduction".text.gray500.widest.sm.make().p16(),
        15.heightBox,
        "@cleverprogrammer flutter expert, dart, web developer, professional designer, Blogger".text.white.xl3.maxLines(5).make().w(context.isMobile ? context.screenWidth : context.screenHeight),
        20.heightBox,

        // ignore: deprecated_member_use
        RaisedButton(
          onPressed: () {
            launch("https://www.youtube.com/channel/UCO6gMNHYhRqyzbskNh4gG_A");
          },
          child: "Visit etechvirl.com".text.make(),
          color: UIColors.accentColor,
          shape: Vx.roundedSm,
          hoverColor: Vx.purple700,
        ).h(50)
      ],
    );
  }
}

class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "lib/assets/image.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class CostumAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: UIColors.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.twitter,
        color: Colors.white,
      ).mdClick(() {
        launch("https://twitter.com/Adnan54M");
      }).make(),
      10.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.instagram.com/ft.adnankhan/");
      }).make(),
      10.widthBox,
      Icon(
        AntDesign.facebook_square,
        color: Colors.white,
      ).mdClick(() {
        launch("https://web.facebook.com/profile.php?id=100011793480431");
      }).make(),
      10.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/AdnanKhan45");
      }).make()
    ].hStack();
  }
}
