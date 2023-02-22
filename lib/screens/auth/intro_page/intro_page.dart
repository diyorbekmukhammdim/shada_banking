import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:shada_banking/app/app_images.dart';
import 'package:shada_banking/app/app_strings.dart';
import 'package:shada_banking/screens/main/main_Screen.dart';
import '../../../widgets/auth/pager_item.dart';
import 'model/intro_model.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  var introData = List.of({
    IntroModel(title: AppStrings.virtualCardTitle, icon: AppImages.orderVirtualCard, text: AppStrings.virtualCardDesc),
    IntroModel(title: AppStrings.otmContractTitle, icon: AppImages.introWoman, text: AppStrings.otmContractDesc),
    IntroModel(title: AppStrings.onlineCountryServiceTitle, icon: AppImages.myGovWhite, text: AppStrings.onlineCountryServiceDesc),
    IntroModel(title: AppStrings.visaDirectTitle, icon: AppImages.visaDirect, text: AppStrings.visaDirectDesc),
  });

  final pageController = PageController();
  var position = 0.0;

  @override
  void initState() {
    pageController.addListener(() {
      setState(() {});
      position = pageController.page!;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
          itemCount: introData.length,
          controller: pageController,
          itemBuilder: (context, index) {
            return PagerItem(model: introData[index]);
          },
        ),
        Positioned(
            bottom: 30,
            left: 30,
            right: 30,
            child: Row(
              children: [
                DotsIndicator(
                  dotsCount: introData.length,
                  position: position,
                  decorator: DotsDecorator(
                    color: const Color(0xFFFBF8FC),
                    activeColor: const Color(0xFF037465),
                    size: const Size.square(10.0),
                    activeSize: const Size(24.0, 12.0),
                    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()));
                  },
                  child: const Text("O'tkazib yuborish", textAlign: TextAlign.end, style: TextStyle(fontSize: 16, color: Color(0xFFFBF8FC))),
                )
              ],
            ))
      ],
    ));
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
