import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> customDialog(BuildContext context, String text, String imagePath, String btnText, Function() onTap) async {
  showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.only(top: 30, right: 16, left: 16, bottom: 40),
          height: 400,
          child: Column(
            children: [
              Container(alignment: Alignment.centerRight,
                  child: GestureDetector( onTap: (){
                    onTap();
                  },
                      child: const Icon(CupertinoIcons.xmark, size: 18, color: Colors.grey))),
              const SizedBox(height: 20),
              Image.asset(imagePath, height: 150, width: 150,),
              const Spacer(),
              Text(text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.black, decoration: TextDecoration.none)),
              const Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      backgroundColor: Colors.green,
                      fixedSize: const Size(130, 55)),
                  onPressed: () {
                    onTap();
                  },
                  child: Text(btnText))
            ],
          ),
        ),
      );
    },
  );
}
