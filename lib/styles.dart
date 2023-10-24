// styles.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double buttonSpacing = 40.0; // ボタン間の間隔

final ButtonStyle customButtonStyle = ElevatedButton.styleFrom(
  fixedSize: const Size(200, 100), // ボタンの高さを調整
  padding: const EdgeInsets.symmetric(vertical: 10), // パディングを調整
);

TextStyle robotoTextStyle({double fontSize = 24, FontWeight fontWeight = FontWeight.bold}) {
  return GoogleFonts.roboto(
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}

Widget buildElevatedButton({
  required String label,
  required VoidCallback onPressed,
}) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: buttonSpacing),
    child: ElevatedButton(
      style: customButtonStyle,
      onPressed: onPressed,
      child: Text(
        label,
        style: robotoTextStyle(), // Nunitoフォントスタイルを適用
      ),
    ),
  );
}