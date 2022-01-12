

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum SocialButtonType {
  GOOGLE,
  FACEBOOK,
  APPLE,
}

class SocialButtons extends StatelessWidget {
  static const String _svgAssetPath = 'lib/assets/svg/';

  const SocialButtons.google({
    this.buttonType = SocialButtonType.GOOGLE,
    required this.onPress,
  });

  const SocialButtons.facebook({
    this.buttonType = SocialButtonType.FACEBOOK,
    required this.onPress,
  });

  const SocialButtons.apple({
    this.buttonType = SocialButtonType.APPLE,
    required this.onPress,
  });

  final SocialButtonType buttonType;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    if (buttonType == SocialButtonType.APPLE) {
      return InkWell(
        highlightColor: Colors.transparent,
        onTap: ()=>onPress,
        child: SvgPicture.asset(
          _svgAssetPath + 'apple.svg',
          height: 33,
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : Colors.black,
        ),
      );
    }

    if (buttonType == SocialButtonType.GOOGLE) {
      return InkWell(
        highlightColor: Colors.transparent,
        onTap: ()=>onPress,
        child: SvgPicture.asset(
          _svgAssetPath + 'google.svg',
          height: 30,
        ),
      );
    }

    if (buttonType == SocialButtonType.FACEBOOK) {
      return InkWell(
        highlightColor: Colors.transparent,
        onTap: ()=>onPress,
        child: SvgPicture.asset(
          _svgAssetPath + 'facebook.svg',
          height: 33,
        ),
      );
    }

    return const SizedBox();
  }
}
