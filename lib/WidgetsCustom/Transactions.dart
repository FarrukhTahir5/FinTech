import 'package:flutter/material.dart';
class Transactions extends StatelessWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.call_made_rounded),
        Column(children: [
          Text("Send",style: TextStyle(fontWeight: FontWeight.bold),),
          Text("Sep 26",style: TextStyle(color: Colors.grey[500],fontSize: 12,),)
        ],)
      ],
    );
  }
}
