import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.orange,
    iconTheme: IconThemeData(color: Colors.white),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
);
  // static final light = FlexThemeData.light(
  //     scheme: FlexScheme.orangeM3,
  //     surfaceMode: FlexSurfaceMode.highScaffoldLowSurfacesVariantDialog,
  //     blendLevel: 40,
  //     appBarStyle: FlexAppBarStyle.primary,
  //     appBarOpacity: 0.35,
  //     appBarElevation: 0,
  //     transparentStatusBar: true,
  //     tabBarStyle: FlexTabBarStyle.forBackground,
  //     tooltipsMatchBackground: true,
  //     swapColors: true,
  //     lightIsWhite: true,
  //     visualDensity: FlexColorScheme.comfortablePlatformDensity,
  //     fontFamily: GoogleFonts.roboto().fontFamily,
  //     subThemesData: const FlexSubThemesData(
  //       useTextTheme: true,
  //       fabUseShape: true,
  //       interactionEffects: true,
  //       bottomNavigationBarElevation: 0,
  //       bottomNavigationBarOpacity: 1,
  //       navigationBarOpacity: 1,
  //       navigationBarMutedUnselectedIcon: true,
  //       inputDecoratorBorderType: FlexInputBorderType.outline,
  //       inputDecoratorUnfocusedHasBorder: true,
  //       blendOnColors: true,
  //       blendTextTheme: true,
  //       popupMenuOpacity: 0.95,
  //     ));

  // static final dark = FlexThemeData.dark(
  //   scheme: FlexScheme.orangeM3,
  //   surfaceMode: FlexSurfaceMode.highScaffoldLowSurfacesVariantDialog,
  //   blendLevel: 40,
  //   appBarStyle: FlexAppBarStyle.primary,
  //   appBarOpacity: 0.35,
  //   appBarElevation: 0,
  //   transparentStatusBar: true,
  //   tabBarStyle: FlexTabBarStyle.forBackground,
  //   tooltipsMatchBackground: true,
  //   swapColors: true,
  //   darkIsTrueBlack: true, // Set to false for dark theme
  //   visualDensity: FlexColorScheme.comfortablePlatformDensity,
  //   fontFamily: GoogleFonts.roboto().fontFamily,
  //   subThemesData: const FlexSubThemesData(
  //       // Same sub-theme settings as light theme can be used here
  //       ),
  // );

