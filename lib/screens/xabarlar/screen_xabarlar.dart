import 'dart:core';

import 'package:flutter/material.dart';
import 'package:shada_banking/screens/xabarlar/XabarlarData.dart';

/// Creator : Azimjon Makhmudov
/// Date : 2/20/2023 Time : 17:25
/// Project : shada_banking
/// Package : lib/screens/xabarlar

class XabarlarScreen extends StatefulWidget {
  const XabarlarScreen({Key? key}) : super(key: key);

  @override
  State<XabarlarScreen> createState() => _XabarlarScreenState();
}

class _XabarlarScreenState extends State<XabarlarScreen> {
  @override
  Widget build(BuildContext context) {
    return xabarItem(XabarData(icon: "icon", img: "img", title: "title", description: "description", date: 123));
  }

  Widget xabarItem(XabarData xabar) {
    return Container();
  }
}
