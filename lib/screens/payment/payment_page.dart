import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shada_banking/screens/payment/model/payment_model.dart';
import 'package:shada_banking/widgets/payment/payment_item.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final List<PaymentsModel> _list = [
    PaymentsModel(
        paymentIcon: Icons.phone_android_rounded,
        paymentType: 'Mobil operatorlar'),
    PaymentsModel(
        paymentIcon: Icons.network_check_outlined,
        paymentType: 'Internet provayderlar'),
    PaymentsModel(
        paymentIcon: Icons.phone_outlined, paymentType: 'Uy telefoni'),
    PaymentsModel(
        paymentIcon: Icons.home_outlined, paymentType: 'Kommunal xizmatlar'),
    PaymentsModel(
        paymentIcon: Icons.directions_car_filled_sharp,
        paymentType: 'Transport'),
    PaymentsModel(
        paymentIcon: Icons.live_tv_outlined,
        paymentType: 'Televidenie va onlayn uzatuv'),
    PaymentsModel(
        paymentIcon: Icons.credit_score_sharp,
        paymentType: 'Kreditlarni so\'ndirish'),
    PaymentsModel(
        paymentIcon: Icons.maps_home_work_outlined,
        paymentType: 'Davlat xizmatlari'),
    PaymentsModel(
        paymentIcon: Icons.announcement, paymentType: "E\'lonlar va reklama"),
  ];
  final background = const Color.fromARGB(255, 244, 244, 244);
  final iconsColor = const Color.fromARGB(255, 58, 172, 136);
  final notifyColor = const Color.fromARGB(255, 44, 127, 172);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          const Text("Barcha servislar"),
          Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2.5,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: _list.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return PaymentItem(_list[index]);
                  })),
        ],
      ),
    );
  }
}
