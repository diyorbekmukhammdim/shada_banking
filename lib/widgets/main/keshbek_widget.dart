import 'package:flutter/material.dart';

class keshbekWidget extends StatelessWidget {
  String name;
  String count;
  int index;
  IconData icon;

   keshbekWidget( {Key? key,required this.name,required this.count,required this.icon,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.all(6),
      child: Container(

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        height: 40,

        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 5,),
              Expanded(
                child: Container(

                  decoration: BoxDecoration(
                      color: const Color(
                        0xFF64BD94,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  height: 45,

                  child: Icon(icon,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width:5 ,),
              Expanded(
                child: Text(
                  "${name}\n${count}\nso'm",
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 9),
                ),
              ),
              Expanded(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert_rounded,size: 25,color: Color(0xFF64BD94),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
