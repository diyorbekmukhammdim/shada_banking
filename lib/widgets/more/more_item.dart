import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/more/model/payment_model.dart';

class MoreItem extends StatelessWidget {
  final MoreModel _moreModel;
  final iconsColor = const Color.fromARGB(255, 58, 172, 136);

  const MoreItem(this._moreModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: const EdgeInsets.only(top: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(color: iconsColor, _moreModel.moreIcon),
                Expanded(
                  child: Center(
                    child: Text(
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                        _moreModel.moreType),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
