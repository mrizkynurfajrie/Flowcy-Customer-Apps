import 'package:flutter/material.dart';

class AppColor {
  //BRANDCOLOR

  static const MaterialColor primaryColor = MaterialColor(
    _orangePrimaryValue,
    <int, Color>{
      25: Color(0xFFF8FCFA),
      50: Color(0xFFF2F9F4),
      100: Color(0xFFE5F4EA),
      200: Color(0xFFB0DEBF),
      300: Color(0xFF9DD6AF),
      400: Color(0xFF7CC895),
      500: Color(_orangePrimaryValue),
      600: Color(0xFF499562),
      700: Color(0xFF377049),
      800: Color(0xFF244A31),
    },
  );
  static const int _orangePrimaryValue = 0xFF5BBA7A;

  // static const MaterialColor secondaryColor = MaterialColor(
  //   _secondaryColorValue,
  //   <int, Color>{
  //     100: Color(0xFFFFEAE6),
  //     200: Color(0xFFFFC0B3),
  //     300: Color(0xFFFFAB99),
  //     400: Color(0xFFFF9780),
  //     500: Color(0xFFFF8266),
  //     600: Color(0xFFFF6D4D),
  //     700: Color(0xFFFF5833),
  //     800: Color(0xFFFF431A),
  //     900: Color(_secondaryColorValue),
  //   },
  // );
  // static const int _secondaryColorValue = 0xFFFF2E00;

  //NEUTRAL
  static const MaterialColor neutral = MaterialColor(
    _neutral,
    <int, Color>{
      25: Color(0xFFFCFCFD),
      50: Color(0xFFF9FAFB),
      100: Color(0xFFF3F4F6),
      200: Color(0xFFE5E7EB),
      300: Color(0xFFD2D6DB),
      400: Color(0xFF9DA4AE),
      500: Color(0xFF6C737F),
      600: Color(0xFF4D5761),
      700: Color(0xFF384250),
      800: Color(0xFF1F2A37),
      900: Color(_neutral),
    },
  );
  static const int _neutral = 0xFF111927;

  static const MaterialColor info = MaterialColor(
    _info,
    <int, Color>{
      25: Color(0xFFF5FAFF),
      50: Color(0xFFEFF8FF),
      100: Color(0xFFD1E9FF),
      200: Color(0xFFB2DDFF),
      300: Color(0xFF84CAFF),
      400: Color(0xFF53B1FD),
      500: Color(_info),
      600: Color(0xFF1570EF),
      700: Color(0xFF175CD3),
      800: Color(0xFF1849A9),
      900: Color(0xFF194185),
    },
  );
  static const int _info = 0xFF2E90FA;

  static const MaterialColor success = MaterialColor(
    _success,
    <int, Color>{
      25: Color(0xFFF6FEF9),
      50: Color(0xFFECFDF3),
      100: Color(0xFFD1FADF),
      200: Color(0xFFA6F4C5),
      300: Color(0xFF6CE9A6),
      400: Color(0xFF32D583),
      500: Color(_success),
      600: Color(0xFF039855),
      700: Color(0xFF027A48),
      800: Color(0xFF05603A),
      900: Color(0xFF054F31),
    },
  );
  static const int _success = 0xFF12B76A;

  static const MaterialColor error = MaterialColor(
    _error,
    <int, Color>{
      25: Color(0xFFFFFBFA),
      50: Color(0xFFFEF3F2),
      100: Color(0xFFFEE4E2),
      200: Color(0xFFFECDCA),
      300: Color(0xFFFDA29B),
      400: Color(0xFFF97066),
      500: Color(_error),
      600: Color(0xFFD92D20),
      700: Color(0xFFB42318),
      800: Color(0xFF912018),
      900: Color(0xFF7A271A),
    },
  );
  static const int _error = 0xFFF04438;

  static const MaterialColor warning = MaterialColor(
    _warning,
    <int, Color>{
      25: Color(0xFFFFFCF5),
      50: Color(0xFFFFFAEB),
      100: Color(0xFFFEF0C7),
      200: Color(0xFFFEDF89),
      300: Color(0xFFFEC84B),
      400: Color(0xFFFDB022),
      500: Color(_warning),
      600: Color(0xFFDC6803),
      700: Color(0xFFB54708),
      800: Color(0xFF93370D),
      900: Color(0xFF7A2E0E),
    },
  );
  static const int _warning = 0xFFF79009;

  static const Map<int, Color> color = {
    50: Color.fromRGBO(136, 14, 79, .1),
    100: Color.fromRGBO(136, 14, 79, .2),
    200: Color.fromRGBO(136, 14, 79, .3),
    300: Color.fromRGBO(136, 14, 79, .4),
    400: Color.fromRGBO(136, 14, 79, .5),
    500: Color.fromRGBO(136, 14, 79, .6),
    600: Color.fromRGBO(136, 14, 79, .7),
    700: Color.fromRGBO(136, 14, 79, .8),
    800: Color.fromRGBO(136, 14, 79, .9),
    900: Color.fromRGBO(136, 14, 79, 1),
  };

  //SHIMMER
  static const LinearGradient shimmerGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.3, 0.5, 0.7],
    colors: [
      Color.fromARGB(255, 220, 220, 220),
      Color.fromARGB(255, 169, 169, 169),
      Color.fromARGB(255, 220, 220, 220),
    ],
  );

  //ACCENT
  static const Color transparentColor = Colors.transparent;
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color blackColor = Color(0xFF000000);

  //BGPGCOLOR
  static const Color bgPageColor = Color(0xFFF5F5F5);
}
