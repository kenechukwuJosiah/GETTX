import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_string.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_string.dart';
import 'package:login_app/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:login_app/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:http/http.dart' as http;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    startAnimation();
    // test();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1100),
              top: animate ? -40 : -70,
              left: animate ? -30 : -70,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1100),
                opacity: animate ? 1 : 0,
                child: const Image(
                  height: 150,
                  width: 150,
                  image: AssetImage(KSplashTopIcon),
                ),
              )),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1100),
              top: animate ? 120 : -120,
              left: KDefaultSize,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1100),
                opacity: animate ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      KAppName,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      KAppTagLine,
                      style: Theme.of(context).textTheme.headline2,
                    )
                  ],
                ),
              )),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1100),
              bottom: animate ? 150 : -150,
              left: -20,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1100),
                opacity: animate ? 1 : 0,
                child: const Image(
                  image: AssetImage(KSplashImage),
                ),
              )),
          AnimatedPositioned(
              duration: const Duration(milliseconds: 1100),
              bottom: animate ? 40 : -40,
              right: KDefaultSize,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1100),
                opacity: animate ? 1 : 0,
                child: Container(
                  width: KDefaultSize,
                  height: KDefaultSize,
                  decoration: BoxDecoration(
                      color: KPrimaryColor,
                      borderRadius: BorderRadius.circular(100)),
                ),
              ))
        ],
      ),
    );
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));

    setState(() {
      animate = true;
    });

    await Future.delayed(const Duration(milliseconds: 4000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnboardingScreen()));
  }

  void test() async {
    var url = Uri.parse(
        'https://datausa.io/api/data?drilldowns=Nation&measures=Population');
    var response = await http.get(url);
    debugPrint('Response status: ${response.statusCode}');
    debugPrint('Response body: ${response.body}');
  }
}
