import 'package:flutter/material.dart';
import 'package:onboarding_screen/fetures/onBoarding/presentaton/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
    required this.height,
    required this.width,
    this.pageController,
  });
  final PageController? pageController;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          height: height,
          width: width,
          image:
              "images/Free Vector _ Environment concept illustration (1).jpg",
          title: "Shopping",
          subtitle: "Discover a wide variety of plants that will ",
          text: "beautify your home and garden",
        ),
        PageViewItem(
          height: height,
          width: width,
          image: "images/Free Vector _ Seeding concept illustration (8).jpg",
          title: "Explore Plant Varieties",
          subtitle: "Browse through our extensive collection ",
          text: "of plants. Find the perfect plant that suits your style.",
        ),
        PageViewItem(
          height: height,
          width: width,
          image: "images/Free Vector _ Investing concept illustration (9).jpg",
          title: "Expert Advice",
          subtitle: "Get expert tips and advice on plant care",
          text: "from our specialists.",
        ),
      ],
    );
  }
}
