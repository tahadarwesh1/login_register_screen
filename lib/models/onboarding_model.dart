class OnboardingModel {
  final String image;
  final String title;
  final String description;

  OnboardingModel({
    required this.image,
    required this.title,
    required this.description,
  });

  static List<OnboardingModel> onboardingList = [
    OnboardingModel(
      image: 'assets/images/onboard1.png',
      title: 'Get food delivery to your doorstep asap',
      description:
          'We have young and professional delivery team that will deliver your food as soon as possible to your doorstep.',
    ),
    OnboardingModel(
      image: 'assets/images/onboard2.png',
      title: 'Buy any food from your favorite restaurants',
      description:
          'We have young and professional delivery team that will deliver your food as soon as possible to your doorstep.',
    ),
    OnboardingModel(
      image: 'assets/images/onboard3.png',
      title: 'Get food delivery to your doorstep asap',
      description:
          'We have young and professional delivery team that will deliver your food as soon as possible to your doorstep.',
    ),
  ];
}
