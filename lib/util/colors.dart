import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFA5DD9B);
  static const Color secondary = Color(0xFFC5EBAA);
  static const Color tertiary = Color(0xFFF6F193);
  static const Color quaternary = Color(0xFFF2C18D);

  static const Color primaryDark = Color(0xFF182C25);
  static const Color secondaryDark = Color(0xFF2C4C3B);
  static const Color tertiaryDark = Color(0xFF455B55);
  static const Color quaternaryDark = Color(0xFF1E453E);

  static const Color primaryLight = Color(0xFFFFFFFF);
  static const Color secondaryLight = Color(0xFFF6F6F6);
  static const Color tertiaryLight = Color(0xFFECECEC);
  static const Color quaternaryLight = Color(0xFFE1E1E1);

  static const Color danger = Color(0xFFBB2124);
  static const Color success = Color(0xFF22BB33);
  static const Color warning = Color(0xFFF0AD4E);
  static const Color info = Color(0xFF5BC0DE);

  static const primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFA5DD9B), Color(0xFF1E453E)],
  );
}

// Main Color palette
// 1) #A5DD9B - rgb(165, 221, 155)
// 2) #C5EBAA - rgb(197, 235, 170)
// 3) #F6F193 - rgb(246, 241, 147)
// 4) #F2C18D - rgb(242, 193, 141)

// Dark Color palette
// 1) #182c25	rgb(24,44,37)
// 2) #2c4c3b	rgb(44,76,59)
// 3) #455b55	rgb(69,91,85)
// 4) #1e453e	rgb(30,69,62)

// Light Color palette
// 1) #ffffff	rgb(255,255,255)
// 2) #f6f6f6	rgb(246,246,246)
// 3) #ececec	rgb(236,236,236)
// 4) #e1e1e1	rgb(225,225,225)

// Alert Color palette
// 1) #bb2124	rgb(187,33,36)
// 2) #22bb33	rgb(34,187,51)
// 3) #f0ad4e	rgb(240,173,78)
// 4) #5bc0de	rgb(91,192,222)