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
      backgroundColor: Color(0xFFDFDFDF),
      appBar: AppBar(
        backgroundColor: Color(0xFFDFDFDF),
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
      body: Column(
        children: [
          Stack(
            children: [
              card_Itembosh(),
              card_Item(),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                 keshbekWidget(name: "Keshbek", count: "0",index: 1,bottomindex: 3,),
                 keshbekWidget(name: "Jamg'arma", count: "0",index: 2,bottomindex:4,)
                ],
              ),
              Row(
                children: [
                  keshbekWidget(name: "Omonatlar", count: "0",bottomindex: 3, index: 1,),
                  keshbekWidget(name: "Kreditlar", count: "0",bottomindex: 4, index: 2,)
                ],
              ),
            ],
          ),
          SavePayment(name: "Takliflar"),
          ListView.builder(itemCount: 8,itemBuilder: (context,index){

          })
        ],
      ),
    );
  }

  card_Item() {
    return Padding(
      padding: const EdgeInsets.only( left: 10, right: 10),
      child: Card(
        child: Container(
          width: double.infinity,
          height: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xFF64BD94)),
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
                      (eye) ? "• • • • • So'm" : "0 So'm",
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
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
            borderRadius: BorderRadius.circular(15), color: Color(0xFF64BD94)),
      ),
    );
  }
}
