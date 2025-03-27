import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container
      (
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(color: Colors.red, width: 100, height: 100),
              Container(color: Colors.blue, width: 50, height: 50),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(color: Colors.green, width: 100, height: 100),
              Container(color: Colors.grey, width: 50, height: 50),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(color: Colors.yellow, width: 50, height: 50),
              Container(color: Colors.orange, width: 50, height: 50),
              Container(color: Colors.cyan, width: 50, height: 50),
            ],
          ),
          Container(
            color: Colors.pink,
            width: 300,
            height: 30,
            child: Text(
              "Caixa Rosa",
              style: TextStyle(color: Colors.white, fontSize: 26),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(onPressed: () {
          }, child: Text("Pressione o botão!"))
        ]
        ,
      )
      ,
    );
  }
}
