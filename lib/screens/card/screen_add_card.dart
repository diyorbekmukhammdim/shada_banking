import 'package:flutter/material.dart';
import 'package:shada_banking/widgets/auth/buttonAuth.dart';
import 'package:shada_banking/widgets/card/CardNumberFormatter.dart';
import 'package:shada_banking/widgets/card/DateFormatter.dart';
import 'package:shada_banking/widgets/card/NameFormatter.dart';
import 'package:shada_banking/widgets/card/card_item.dart';

/// Creator : Azimjon Makhmudov
/// Date : 2/20/2023 Time : 16:09
/// Project : shada_banking
/// Package : lib/screens/card

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  final controllerCard = TextEditingController();
  final controllerDate = TextEditingController();
  final controllerName = TextEditingController();

  String icon = "assets/images/ic_card_default.png";

  @override
  void initState() {
    controllerCard.addListener(() {
      setState(() {});
    });
    controllerDate.addListener(() {
      setState(() {});
    });
    controllerName.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(98, 232, 227, 227),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                cardItem("assets/images/ic_card_background_0.png", icon, controllerName.text, controllerCard.text, controllerDate.text),
                cardItem("assets/images/ic_card_background_1.png", icon, controllerName.text, controllerCard.text, controllerDate.text),
                cardItem("assets/images/ic_card_background_2.png", icon, controllerName.text, controllerCard.text, controllerDate.text),
                cardItem("assets/images/ic_card_background_3.png", icon, controllerName.text, controllerCard.text, controllerDate.text),
                cardItem("assets/images/ic_card_background_4.png", icon, controllerName.text, controllerCard.text, controllerDate.text),
                cardItem("assets/images/ic_card_background_5.png", icon, controllerName.text, controllerCard.text, controllerDate.text),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              indicatorCard(0),
              indicatorCard(1),
              indicatorCard(2),
              indicatorCard(3),
              indicatorCard(4),
              indicatorCard(5),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Karta raqami",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
            child: TextField(
              maxLines: 1,
              // maxLength: 16,
              keyboardType: TextInputType.number,
              controller: controllerCard,
              inputFormatters: [CardNumberFormatter()],
              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              decoration: const InputDecoration.collapsed(hintText: "Karta raqami", border: InputBorder.none, hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Amal qilish muddati",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
            child: TextField(
              maxLines: 1,
              // maxLength: 16,
              keyboardType: TextInputType.number,
              controller: controllerDate,
              inputFormatters: [DateFormatter()],
              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              decoration: const InputDecoration.collapsed(hintText: "OO/YY", border: InputBorder.none, hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Karta nomi",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(10))),
            child: TextField(
              maxLines: 1,
              keyboardType: TextInputType.text,
              controller: controllerName,
              inputFormatters: [NameFormatter()],
              style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
              decoration: const InputDecoration.collapsed(hintText: "Karta nomi", border: InputBorder.none, hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
            ),
          ),
          const Spacer(flex: 1,),
          ButtonAuth("Karta qo'shish", controllerName.text.isNotEmpty && controllerDate.text.length == 5 && controllerCard.text.length == 19, () {
            print("Karta qo'shish");
          }),
          const SizedBox(height: 15,)
        ],
      ),
    ));
  }

  @override
  void dispose() {
    controllerCard.dispose();
    controllerDate.dispose();
    controllerName.dispose();
    super.dispose();
  }

  Widget indicatorCard(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      height: 6,
      width: _currentPage == index ? 24 : 20,
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.green : Colors.grey,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
