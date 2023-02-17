import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/auth/intro_page/model/payment_model.dart';

class PaymentGrid extends StatelessWidget {
  final PaymentsModel _paymentsModel;
  final iconsColor = const Color.fromARGB(255, 58, 172, 136);

  const PaymentGrid(this._paymentsModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Card(
            margin: const EdgeInsets.all(10),
            elevation: 0.1,
            child: SizedBox(
              width: 64,
              height: 64,
              child: Icon(color: iconsColor, _paymentsModel.paymentIcon),
            ),
          ),
        ),
        Expanded(
            child: Text(
                style: const TextStyle(fontWeight: FontWeight.bold),
                _paymentsModel.paymentType))
      ],
    );
  }
}
