import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shada_banking/widgets/more/more_item.dart';
import 'package:shada_banking/widgets/more/more_item.dart';

import 'model/payment_model.dart';

class MoreBottomSheet extends StatefulWidget {
  const MoreBottomSheet({Key? key}) : super(key: key);

  @override
  State<MoreBottomSheet> createState() => _MoreBottomSheetState();
}

class _MoreBottomSheetState extends State<MoreBottomSheet> {
  final List<MoreModel> _list = [
    MoreModel(
        moreIcon: Icons.live_tv_outlined,
        moreType: 'Televidenie va onlayn uzatuv'),
    MoreModel(
        moreIcon: Icons.home_outlined, moreType: 'Kommunal xizmatlar'),
    MoreModel(
        moreIcon: Icons.credit_score_sharp,
        moreType: 'Kreditlarni so\'ndirish'),
    MoreModel(
        moreIcon: Icons.phone_android_rounded,
        moreType: 'Mobil operatorlar'),
    MoreModel(
        moreIcon: Icons.network_check_outlined,
        moreType: 'Internet provayderlar'),
    MoreModel(
        moreIcon: Icons.directions_car_filled_sharp,
        moreType: 'Transport'),
    MoreModel(
        moreIcon: Icons.live_tv_outlined,
        moreType: 'Televidenie va onlayn uzatuv'),
    MoreModel(
        moreIcon: Icons.credit_score_sharp,
        moreType: 'Kreditlarni so\'ndirish'),
    MoreModel(
        moreIcon: Icons.phone_outlined, moreType: 'Uy telefoni'),
    MoreModel(
        moreIcon: Icons.home_outlined, moreType: 'Kommunal xizmatlar'),
    MoreModel(
        moreIcon: Icons.directions_car_filled_sharp,
        moreType: 'Transport'),
    MoreModel(
        moreIcon: Icons.live_tv_outlined,
        moreType: 'Televidenie va onlayn uzatuv'),
    MoreModel(
        moreIcon: Icons.credit_score_sharp,
        moreType: 'Kreditlarni so\'ndirish'),
    MoreModel(
        moreIcon: Icons.maps_home_work_outlined,
        moreType: 'Davlat xizmatlari'),
    MoreModel(
        moreIcon: Icons.announcement, moreType: "E\'lonlar va reklama"),
    MoreModel(
        moreIcon: Icons.credit_score_sharp,
        moreType: 'Kreditlarni so\'ndirish'),
    MoreModel(
        moreIcon: Icons.home_outlined, moreType: 'Kommunal xizmatlar'),
    MoreModel(
        moreIcon: Icons.live_tv_outlined,
        moreType: 'Televidenie va onlayn uzatuv'),
    MoreModel(
        moreIcon: Icons.directions_car_filled_sharp,
        moreType: 'Transport'),
  ];
  final background = const Color.fromARGB(255, 244, 245, 247);
  final iconsColor = const Color.fromARGB(255, 58, 172, 136);
  final notifyColor = const Color.fromARGB(255, 44, 127, 172);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: const Center(child: Text("Ko'proq")),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 150,
                        childAspectRatio: 1,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemCount: _list.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return MoreItem(_list[index]);
                    })),
          ],
        ),
      ),
    );
  }
}
