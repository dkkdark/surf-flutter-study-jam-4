import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:surf_practice_magic_ball/service/model/prediction_model.dart';

import '../ball.dart';

class MagicBallScreen extends StatelessWidget {
  const MagicBallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const AnimatedBall(),
              Stack(
                children: [
                  Image.asset(
                    'docs/assets/ellipse_base.png'
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Image.asset(
                        'docs/assets/ellipse_blue.png',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: SizedBox(
                  width: 250,
                  child: Text(
                    "Нажмите на шар или потрясите телефон",
                    style: GoogleFonts.albertSans(
                      textStyle: const TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
