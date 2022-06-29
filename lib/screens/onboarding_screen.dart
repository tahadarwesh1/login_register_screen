import 'package:flutter/material.dart';
import 'package:login_register_screen/shared/components.dart';
import 'package:login_register_screen/models/onboarding_model.dart';
import 'package:login_register_screen/screens/login_screen.dart';
import 'package:login_register_screen/screens/register_screen.dart';
import 'package:login_register_screen/widgets/default_button.dart';
import 'package:login_register_screen/widgets/onboarding_build_item.dart';
import 'package:login_register_screen/widgets/text_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({
    Key? key,
  }) : super(key: key);
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 45,
        actions: [
          Container(
            padding: EdgeInsets.zero,
            width: 80,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.amber.shade50,
            ),
            margin: const EdgeInsets.only(right: 16),
            child: MaterialButton(
              height: 40,
              padding: EdgeInsets.zero,
              onPressed: () {
                navigateTo(context, LoginScreen());
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '7',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber.shade300,
                  ),
                ),
                Text(
                  'Krave',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal.shade300,
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                physics: const BouncingScrollPhysics(),
                itemCount: OnboardingModel.onboardingList.length,
                itemBuilder: (context, index) {
                  return OnboardingBuildItem(
                    onboardingModel: OnboardingModel.onboardingList[index],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: OnboardingModel.onboardingList.length,
              effect: const SlideEffect(
                spacing: 4.0,
                dotWidth: 20.0,
                dotHeight: 8.0,
                strokeWidth: 1.5,
                dotColor: Colors.grey,
                activeDotColor: Colors.amberAccent,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DefaultButton(
              text: 'Get Started',
              buttonColor: Colors.teal.shade300,
              textColor: Colors.white,
              onPressed: () {
                navigateTo(context, LoginScreen());
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                MyTextButton(
                  text: 'Sign Up',
                  color: Colors.teal.shade300,
                  onPressed: (){
                    navigateTo(context, RegisterScreen());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
