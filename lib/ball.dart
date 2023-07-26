import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shake/shake.dart';
import 'package:surf_practice_magic_ball/screen/rotation_stars.dart';
import 'package:surf_practice_magic_ball/service/provider/pred_provider.dart';

class AnimatedBall extends StatelessWidget {
  const AnimatedBall({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnimatedImageAnimation();
  }
}

class AnimatedImageAnimation extends ConsumerStatefulWidget {
  const AnimatedImageAnimation({super.key});

  @override
  AnimatedImageAnimationState createState() => AnimatedImageAnimationState();
}

class AnimatedImageAnimationState extends ConsumerState<AnimatedImageAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animationUp;
  late Animation<Offset> _animationDown;
  late ShakeDetector detector;

  @override
  void initState() {
    super.initState();

    detector = ShakeDetector.autoStart(
        onPhoneShake: () {
          ref.read(predDataProvider.notifier).getPred();
        }
    );

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    )..addListener(() {
      setState(() {});
    });

    _animationUp = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(0, -0.3),
    ).animate(_animationController);

    _animationDown = Tween<Offset>(
      begin: const Offset(0, -0.3),
      end: Offset.zero,
    ).animate(_animationController);

    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    detector.stopListening();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    final pred = ref.watch(predDataProvider).pred;
    final isLoading = ref.watch(predDataProvider).isLoading;

    return GestureDetector(
          onTap: () {
            ref.read(predDataProvider.notifier).getPred();
          },
          child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return FractionalTranslation(
                  translation: _animationController.value < 0.5
                      ? _animationUp.value
                      : _animationDown.value,
                  child: Stack(
                    children: [ 
                      Image.asset('docs/assets/ball.png'),
                      const Positioned(
                          left: 0,
                          top: 0,
                          right: 0,
                          bottom: 0,
                          child: Center(child: StarsRotating())
                      ),
                      pred.reading != null || isLoading ? Positioned(
                          left: 10,
                          top: 10,
                          right: 10,
                          bottom: 10,
                          child: Center(
                              child: Transform.scale(
                                scale: 0.8,
                                child: Container(
                                  decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.8),
                                  shape: BoxShape.circle
                                ),
                            ),
                              )
                          )
                      ) : Container(),
                      Positioned(
                          left: 0,
                          top: 0,
                          right: 0,
                          bottom: 0,
                          child: Center(
                            child: SizedBox(
                              width: 250,
                              child: Text(
                                pred.reading != null && !isLoading ? pred.reading! : "",
                                style: GoogleFonts.albertSans(
                                  textStyle: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                      )
                    ],
                  )
                );
              }
          ),

        );
      }
}
