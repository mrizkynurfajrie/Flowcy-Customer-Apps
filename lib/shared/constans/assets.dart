import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIcons {
  //register page//
  static const user = 'assets/icons/user.svg';
  static const calendar = 'assets/icons/calendar.svg';

  static Widget iconApp(String asset, {Color? color, double? height}) {
    return SvgPicture.asset(
      asset,
      height: height,
      fit: BoxFit.contain,
      color: color,
    );
  }
}

class FeatureImages {
  // static const menuNebeng = 'assets/icons/menu-nebeng.svg';

  static Widget imageApp(
    String asset, {
    Color? color,
    double? height,
  }) {
    return SvgPicture.asset(
      asset,
      color: color,
      // height: height ?? IconSizes.menu,
      fit: BoxFit.contain,
    );
  }
}

class PopUpIcons {
  static const error = 'assets/icons/error_popup.svg';

  static Widget svgIcon(String asset, {double? size}) {
    return SvgPicture.asset(
      asset,
      // height: size ?? IconSizes.xxxl,
      fit: BoxFit.contain,
    );
  }

  static Widget pngIcon(String asset, {double? size}) {
    return Image.asset(
      asset,
      // height: size ?? IconSizes.xxxl,
      fit: BoxFit.contain,
    );
  }
}

class AppLogos {
  // static const logoOnly = 'assets/logo/logo-only.png';

  static Widget logoApp(String asset) {
    return Image.asset(
      asset,
      // height: IconSizes.xl,
    );
  }
}

class AppLotties {
  // static const loadingProcess = 'assets/lottie/loading-orange.json';
}

class AppImages {
  // static const onboardFirst = 'assets/images/onboard1.png';
}
