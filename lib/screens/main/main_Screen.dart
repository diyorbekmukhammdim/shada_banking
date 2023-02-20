import 'package:flutter/material.dart';
import 'package:shada_banking/widgets/main/keshbek_widget.dart';
import 'package:shada_banking/widgets/main/savepement.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool eye = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDFDFDF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFDFDFDF),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.green,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.doorbell_outlined,
                color: Colors.green,
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                card_Itembosh(),
                card_Item(),
              ],
            ),
            Column(children: [
              Row(
                children: [
                  keshbekWidget(
                    name: "Keshbek",
                    count: "0",
                    index: 1,
                    icon: Icons.account_circle,
                    bottomindex: 3,
                  ),
                  keshbekWidget(
                      name: "Jamg'arma",
                      count: "0",
                      index: 2,
                      icon: Icons.account_balance_sharp,
                      bottomindex: 4)
                ],
              ),
              Row(
                children: [
                  keshbekWidget(
                      name: "Omonatlar",
                      count: "0",
                      bottomindex: 3,
                      icon: Icons.account_balance_wallet_outlined,
                      index: 1),
                  keshbekWidget(
                      name: "Kreditlar",
                      count: "0",
                      bottomindex: 4,
                      icon: Icons.credit_card,
                      index: 2)
                ],
              ),
            ]),
            const SavePayment(name: "Takliflar"),
            SizedBox(
              height: 170,
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 180,
                        width: 120,
                        decoration: BoxDecoration(
                            color: Color(0xFF64BD94),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Container(

                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/icon.jpeg",
                                    ),fit: BoxFit.fill
                                  ),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                height: 60,
                                width: 60,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            const Text(
                              "Davlat xizmatlari onlayn",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SavePayment(name: "Tezkor to'lovlar"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Center(
                      child: Icon(
                        Icons.add,
                        color: Colors.grey,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
            const SavePayment(name: "Valuta kursi"),
            SizedBox(
                height: 130,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Card(
                          child: Container(
                            height: 130,
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(80),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/icon.jpeg"),
                                            fit: BoxFit.fill)),
                                    width: 80,
                                    height: 100,
                                  ),
                                  valyuteColumn("Valyute", "Usd"),
                                  valyuteColumn("Sotib olish", "11345"),
                                  valyuteColumn("Sotish", "11405"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }

  valyuteColumn(String name, String name1) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            name1,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  card_Item() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Card(
        child: Container(
          width: double.infinity,
          height: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFF64BD94)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20.0, top: 12, bottom: 10),
                child: Text(
                  "Jami balans",
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            eye = !eye;
                          });
                        },
                        icon: (eye)
                            ? Image.asset(
                                "assets/images/hide.png",
                                height: 30,
                                color: Colors.white,
                              )
                            : const Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.white,
                                size: 30,
                              ),
                      ),
                    ),
                    Text(
                      (eye) ? "• • • •So'm" : "0 So'm",
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_circle,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    const Text(
                      "Karta qo'shish",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.update,
                          color: Colors.white,
                          size: 30,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  card_Itembosh() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, top: 5, left: 30, right: 30),
      child: Container(
        width: double.infinity,
        height: 180,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFF64BD94)),
      ),
    );
  }
}
