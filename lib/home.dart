import 'package:flutter/material.dart';
import 'package:smooth_ui_designs/colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'footer.dart';
import 'header.dart';
import 'middle.dart';

 class HomeScreen extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return Material(
       color: UIColors.primaryColor,
       child: VStack([
         HeaderScreen(),
         if (context.isMobile) IntroductionWidget().p16(),
         MiddleScreen(),
         FooterScreen()
       ]).scrollVertical(),
     );
   }
 }
