import 'dart:ui';

class AppColors {
  AppColors._();

  static const Color spaceLight = Color(0xff2b3a67);
  static const Color orangeWeb = Color(0xFFf59400);
  static const Color white = Color(0xFFf5f5f5);
  static const Color greyColor = Color(0xffaeaeae);
  static const Color greyColor2 = Color(0xffE8E8E8);
  static const Color lightGrey = Color(0xff928a8a);
  static const Color burgundy = Color(0xFF880d1e);
  static const Color indyBlue = Color(0xFF414361);
  static const Color spaceCadet = Color(0xFF2a2d43);
  static Color gray5001 = fromHex('#f8f8fb');
  static Color red600 = fromHex('#e93635');
  static Color indigoA100 = fromHex('#97a1f1');
  static Color red400 = fromHex('#f04a4c');
  static Color teal300 = fromHex('#57c3b5');
  static Color black90001 = fromHex('#000d07');
  static Color teal700 = fromHex('#24786d');
  static Color blueGray700 = fromHex('#4d5255');
  static Color black90003 = fromHex('#000e08');
  static Color black90002 = fromHex('#000000');
  static Color pink100 = fromHex('#f5b7bd');
  static Color gray600 = fromHex('#797c7b');
  static Color gray400 = fromHex('#b9c1be');
  static Color blueGray100 = fromHex('#ccd1cf');
  static Color gray800 = fromHex('#363f3b');
  static Color blueGray500 = fromHex('#62918b');
  static Color teal30001 = fromHex('#41b2a4');
  static Color amber300 = fromHex('#ffc746');
  static Color gray10007 = fromHex('#f1f9f8');
  static Color gray10006 = fromHex('#f0f3f5');
  static Color gray10003 = fromHex('#f2f7f6');
  static Color cyan200 = fromHex('#8ceee1');
  static Color gray10002 = fromHex('#f1f6fa');
  static Color blueGray1006c = fromHex('#6ccdd1d0');
  static Color gray10005 = fromHex('#f2f8f7');
  static Color gray10004 = fromHex('#f5f6f6');
  static Color black90099 = fromHex('#99050c09');
  static Color bluegray400 = fromHex('#888888');
  static Color gray10001 = fromHex('#eef9f8');
  static Color whiteA700 = fromHex('#ffffff');
  static Color teal40014 = fromHex('#1420a090');
  static Color black9009901 = fromHex('#99000c07');
  static Color blueGray10087 = fromHex('#87cdd1d0');
  static Color blueGray10001 = fromHex('#cdd1d0');
  static Color blueGray10002 = fromHex('#d9d9d9');
  static Color blueGray10003 = fromHex('#cfd3d1');
  static Color gray50 = fromHex('#f8fbfa');
  static Color greenA400 = fromHex('#0fe16d');
  static Color teal400 = fromHex('#20a090');
  static Color whiteA70033 = fromHex('#33ffffff');
  static Color black900 = fromHex('#001815');
  static Color gray50001 = fromHex('#999e9b');
  static Color yellow900 = fromHex('#d1950c');
  static Color black901 = fromHex('#000000');
  static Color gray50002 = fromHex('#9a9e9c');
  static Color greenA40001 = fromHex('#2bef83');
  static Color teal5001 = fromHex('#e0ebe9');
  static Color blueGray2007a = fromHex('#7abbc1cc');
  static Color deepOrangeA400 = fromHex('#ff2d1b');
  static Color gray90002 = fromHex('#0f0c22');
  static Color blueGray200 = fromHex('#bbc1cc');
  static Color gray500 = fromHex('#a8b0af');
  static Color gray60001 = fromHex('#797c7a');
  static Color gray90005 = fromHex('#05111222');
  static Color blueGray400 = fromHex('#848d9d');
  static Color gray90000 = fromHex('#000f0c22');
  static Color indigo50 = fromHex('#dfe5f3');
  static Color gray900 = fromHex('#1a1a1a');
  static Color gray90001 = fromHex('#111314');
  static Color amber200 = fromHex('#fadb94');
  static Color teal50 = fromHex('#e0eae9');
  static Color gray300 = fromHex('#d6e4df');
  static Color gray30002 = fromHex('#dbe7e6');
  static Color gray30001 = fromHex('#e6e6e6');
  static Color gray100 = fromHex('#f3f6f6');
  static Color blueGray200A7 = fromHex('#a7bbc1cc');
  static Color whiteA70087 = fromHex('#87ffffff');
  static Color black900Cc = fromHex('#cc000d07');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
