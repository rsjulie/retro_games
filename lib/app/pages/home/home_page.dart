import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neon/neon.dart';
import './home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            gradient: RadialGradient(colors: [
          Color.fromARGB(255, 19, 39, 105),
          Color.fromARGB(255, 10, 8, 34),
        ], radius: 0.8)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Neon(
                  text: 'Retro',
                  color: Colors.blue,
                  fontSize: 50,
                  font: NeonFont.Membra,
                  flickeringText: true,
                  flickeringLetters: const [0, 1],
                ),
                Text(
                  textAlign: TextAlign.center,
                  ' Games ',
                  style: GoogleFonts.rajdhani(
                      color: Colors.white, fontSize: 30, letterSpacing: 24),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 87, 158)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 116, 188, 255), width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 87, 158)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 116, 188, 255), width: 2),
                    ),
                  ),
                ),
                const SizedBox(height: 80),
                CustomPaint(
                  foregroundPainter: BorderPainter(),
                  child: SizedBox(
                    width: 500,
                    height: 80,
                    child: Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        ' LOGIN',
                        style: GoogleFonts.rajdhani(
                            shadows: [
                              const Shadow(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  blurRadius: 5,
                                  offset: Offset(1, 1)),
                              const Shadow(
                                  color: Color.fromARGB(255, 0, 162, 255),
                                  blurRadius: 20)
                            ],
                            color: Colors.white,
                            fontSize: 30,
                            letterSpacing: 24),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double sh = size.height; // for convenient shortage
    double sw = size.width; // for convenient shortage
    double th = sh * 0.1; // total frame thickness
    double side = sw * 0.12;

    Paint outerPaint = Paint()
      ..color = const Color.fromARGB(255, 86, 165, 255)
      ..strokeWidth = th
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Paint lightTopPaint = Paint()
      ..color = const Color.fromARGB(255, 177, 226, 255)
      ..style = PaintingStyle.fill;

    Paint lightSmallPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = th * 0.06
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    Paint arcPaint = Paint()
      ..color = const Color.fromARGB(255, 0, 65, 102)
      ..style = PaintingStyle.fill;

    Paint minilinePaint = Paint()
      ..color = const Color.fromARGB(255, 0, 26, 41)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = th * 0.06;

    Path outerPath = Path()
      ..moveTo(side, 0)
      ..lineTo(sw - side, 0)
      ..quadraticBezierTo(sw, 0, sw, sh / 2)
      ..quadraticBezierTo(sw, sh, sw - side, sh)
      ..lineTo(side, sh)
      ..quadraticBezierTo(0, sh, 0, sh / 2)
      ..quadraticBezierTo(0, 0, side, 0);

    Path lightTop = Path()
      ..moveTo(-th, sh / 2)
      ..quadraticBezierTo(0, 0, side, -th / 3)
      ..lineTo(sw - side, -th / 3)
      ..quadraticBezierTo(sw, 0, sw + th, sh / 2)
      ..quadraticBezierTo(sw, 0, sw - side, th / 20)
      ..lineTo(side, th / 20)
      ..quadraticBezierTo(0, 0, -th, sh / 2);

    Path lightBottom = Path()
      ..moveTo(-th, sh / 2)
      ..quadraticBezierTo(0, sh, side, sh + th / 3)
      ..lineTo(sw - side, sh + th / 3)
      ..quadraticBezierTo(sw, sh, sw + th, sh / 2)
      ..quadraticBezierTo(sw, sh, sw - side, sh - th / 20)
      ..lineTo(side, sh - th / 20)
      ..quadraticBezierTo(0, sh, -th, sh / 2);

    Path lightSmallTop = Path()
      ..moveTo(side * 0.8, th * 0.3)
      ..lineTo(sw - side * 0.8, th * 0.3);

    Path miniLineTop = Path()
      ..moveTo(side * 0.8, th / 3)
      ..lineTo(sw - side * 0.8, th / 3);

    Path miniLineBottom = Path()
      ..moveTo(side * 0.8, sh + th / 3)
      ..lineTo(sw - side * 0.8, sh + th / 3);

    Path lightSmallBottom = Path()
      ..moveTo(side * 0.8, sh - th * 0.3)
      ..lineTo(sw - side * 0.8, sh - th * 0.3);

    Path leftArc = Path()
      ..moveTo(side, -th / 2)
      ..quadraticBezierTo(0, 0, -th / 2, sh / 2)
      ..quadraticBezierTo(0, sh, side, sh)
      ..quadraticBezierTo(0, sh, 0, sh / 2)
      ..quadraticBezierTo(0, 0, side, -th / 2);

    Path rightArc = Path()
      ..moveTo(sw - side, th / 2)
      ..quadraticBezierTo(sw, 0, sw + th / 2, sh / 2)
      ..quadraticBezierTo(sw, sh, sw - side, sh)
      ..quadraticBezierTo(sw, sh, sw, sh / 2)
      ..quadraticBezierTo(sw, 0, sw - side, th / 2);

    Float64List matrix4 = Float64List.fromList(
        [1, 0, 0, 0, 0, 0.3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]);

    canvas.drawShadow(outerPath.transform(matrix4).shift(Offset(0, -sh)),
        const Color.fromARGB(255, 0, 235, 252), sh, true);
    canvas.drawShadow(outerPath.transform(matrix4).shift(const Offset(0, 0)),
        const Color.fromARGB(255, 0, 172, 252), sh, true);

    canvas.drawPath(outerPath, outerPaint);
    canvas.drawPath(lightTop, lightTopPaint);
    canvas.drawPath(miniLineTop, minilinePaint);
    canvas.drawPath(miniLineBottom, minilinePaint);
    canvas.drawPath(lightBottom, lightTopPaint);
    canvas.drawPath(lightSmallTop, lightSmallPaint);
    canvas.drawPath(lightSmallBottom, lightSmallPaint);
    canvas.drawPath(leftArc, arcPaint);
    canvas.drawPath(rightArc, arcPaint);
  }

  @override
  bool shouldRepaint(BorderPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BorderPainter oldDelegate) => false;
}
