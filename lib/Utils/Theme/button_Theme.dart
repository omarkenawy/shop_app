part of './my_theme.dart';

final elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: Constans.greenColor,
    foregroundColor: Colors.white,
    textStyle: TextStyle(
        fontFamily: Constans.mainFont,
        fontWeight: FontWeight.w900,
        fontSize: 16),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6),
    ),
  ),
);
