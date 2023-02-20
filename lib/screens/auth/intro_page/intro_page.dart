import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
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
    IntroModel(
        title: "Virtual karta oching!",
        icon: "assets/images/ic_order_virtual_card.png",
        text: "Identifikatsiyadan o'ting va ilovamiz orqali qisqa muddatda "
            "VISA va HUMO virtual kartalariga ega bo'ling.\n\nVISA Virtual - Online to'lovlar va konversiya operatsiyalarini "
            "amalga oshirish uchun cheksiz imkoniyat. 3D-secure xizmati avtomatik ravishda faollashtiriladi.\n\n"
            "HUMO Virtual - Oddiy va xavfsiz online to'lovlar hamda HUMOPay xizmati orqali kontaktsiz to'lov imkoniyati."),
    IntroModel(
        title: "OTM shartnoma to'lovi",
        icon: "assets/images/intro_woman.png",
        text: "ZOOMRAD ilovasida O'zbekiston oliy ta'lim muassasalari "
            "shartnoma to'lovlarini oson va komissiyasiz amalga oshiring. Buning uchun siz talabaning faqat JSHSHIR (PINFL) "
            "raqamini kiritishingiz kerak va ilovaning o'zi talaba va shartnoma bo'yicha qarzdorlik haqida ma'lumot topadi."),
    IntroModel(
        title: "Onlayn davlat xizmatlari",
        icon: "assets/images/ic_my_gov_white.png",
        text: "Identifikatsiyadan o'ting va davlat xizmatlaridan "
            "onlayn tarzda bepul doydalaning."),
    IntroModel(
        title: "VISA Direct",
        icon: "assets/images/icon_visa_direct.png",
        text: "VISA kartalari orqali xalqaro pul o'tkazmalari."),
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
  void dispose() {
    pageController.dispose();
    super.dispose();
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
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,  MaterialPageRoute(builder: (context) => const MainScreen()));
                  },
                  child: const Text("O'tkazib yuborish",
                      textAlign: TextAlign.end,
                      style: TextStyle(fontSize: 16, color: Color(0xFFFBF8FC))),
                )
              ],
            ))
      ],
    ));
  }
}
