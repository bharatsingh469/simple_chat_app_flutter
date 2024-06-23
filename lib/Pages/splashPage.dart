import 'package:chat_app/Config/Images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplacePage extends StatelessWidget {
  const SplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: SvgPicture.asset(
          AssetsImage.appIconSVG,
        ),
      ),
    );
  }
}