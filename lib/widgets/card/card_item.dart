import 'package:flutter/material.dart';

/// Creator : Azimjon Makhmudov
/// Date : 2/20/2023 Time : 16:13
/// Project : shada_banking
/// Package : lib/widgets/card

Widget cardItem(String background, String icon, String name, String pan, String date) {
  return Padding(
    padding: const EdgeInsets.all(8),
    child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(background),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(icon),
              Text(
                name,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Text(
                    pan,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  Text(
                    date,
                    style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        )),
  );
}
