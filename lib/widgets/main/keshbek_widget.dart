import 'package:flutter/material.dart';

class keshbekWidget extends StatelessWidget {
  String name;
  String count;
  int index;
  IconData icon;
  int bottomindex;
   keshbekWidget( {Key? key,required this.name,required this.count,required this.index,required this.bottomindex,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child:  Padding(
        padding: index==1? EdgeInsets.only (left: 10,right: 5,top: 10): EdgeInsets.only (left: 5,right: 10,top: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18)),
          height: 100,
          width: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: const Color(
                        0xFF64BD94,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                      Text(
                        name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                      Text(
                        count,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(
                        "so'm",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert_rounded,size: 30,color: Color(0xFF64BD94),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
