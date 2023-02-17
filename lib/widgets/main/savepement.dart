import 'package:flutter/material.dart';

class SavePayment extends StatelessWidget {
  const SavePayment({Key? key, required this.name}) : super(key: key);
final String name;

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(
            left: 14.0, bottom: 20, top: 10, right: 12),
        child: Row(
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 18,color: Colors.grey),
            ),
            Spacer(),
            Text(
              "Barchasi",
              style: TextStyle(fontSize: 15,color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
