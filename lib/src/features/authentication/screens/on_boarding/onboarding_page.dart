import 'package:flutter/material.dart';

import '../../models/on_boarding_model.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      color: model.bgColor,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image(
              image: AssetImage(model.image),
              height: height * 0.5,
            ),
            Column(
              children: [
                Text(
                  model.title,
                  style: TextStyle(
                      color: model.color,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0),
                ),
                Text(
                  model.subTitle,
                  style: TextStyle(color: model.color),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const SizedBox(
              height: 250.0,
            ),
            Text(
              model.counterText,
              style: TextStyle(color: model.color),
            ),
          ],
        ),
      ),
    );
  }
}
