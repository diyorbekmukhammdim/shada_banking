import 'package:flutter/material.dart';

/// Creator : Azimjon Makhmudov
/// Date : 2/16/2023 Time : 19:19
/// Project : shada_banking
/// Package : lib/widgets

Widget pinCodeDot(bool status) {
  if (status) {
    return SizedBox(
      height: 30,
      width: 30,
      child: Image.asset(
        "assets/images/abc_btn_switch_to_on_mtrl_00001.9.png",
        color: Colors.green,
      ),
    );
  } else {
    return SizedBox(
      height: 30,
      width: 30,
      child: Image.asset("assets/images/abc_btn_radio_to_on_mtrl_000.png"),
    );
  }
}
