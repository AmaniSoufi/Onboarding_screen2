import 'package:flutter/material.dart';
import 'package:onboarding_screen/core/pallet.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:onboarding_screen/core/widgets/custom_button.dart';
import 'package:onboarding_screen/fetures/onBoarding/presentaton/widgets/custom_page_view.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({
    super.key,
  });

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          CustomPageView(
            height: height,
            width: width,
            pageController: pageController,
          ),
          Positioned(
            bottom: height * 0.3,
            left: 0,
            right: 0,
            child: CustomDots(
              dotsIndex: pageController!.hasClients ? pageController!.page! : 0,
            ),
          ),
          Positioned(
            top: height * 0.1,
            right: 32,
            child: Text(
              "Skip",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: height * 0.2,
            left: width * 0.3,
            right: width * 0.3,
            child: CustomButton(
              height: height,
              width: width,
              text: "Next",
            ),
          )
        ],
      ),
    );
  }
}

class CustomDots extends StatelessWidget {
  const CustomDots({
    super.key,
    required this.dotsIndex,
  });
  final double dotsIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(activeColor: kMainColor),
      dotsCount: 3,
      position: dotsIndex.toInt(),
    );
  }
}
