import 'package:flutter/material.dart';
import 'package:login_register_screen/models/onboarding_model.dart';

class OnboardingBuildItem extends StatelessWidget {
  final OnboardingModel onboardingModel;
  const OnboardingBuildItem({
    Key? key,
    required this.onboardingModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(
            onboardingModel.image,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          onboardingModel.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          onboardingModel.description,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
