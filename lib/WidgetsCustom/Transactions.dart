import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Transactions extends StatelessWidget {
  Transactions({required this.received,required this.amount});
  final bool received;
  final int amount;
  @override
  Widget build(BuildContext context) {
      return Column(
        children: [
          Row(
            children: [
              Container(child: Stack(children: [SvgPicture.asset('assets/img/Ellipse 41.svg',),Positioned(top: 17,left: 17,child: !received? SvgPicture.asset('assets/img/iconan.svg'):SvgPicture.asset('assets/img/received.svg'))],),decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5),offset: Offset(0,3),blurRadius: 36,spreadRadius: 1)])),
              SizedBox(width: 20,),Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                received?Text("Received",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),):Text("Send",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                Text("Sep 26",style: TextStyle(color: Colors.grey[500],fontSize: 12,),)
              ],),
              received?SizedBox(child: Align(alignment: FractionalOffset(1,0),child: Text('\$$amount',style: TextStyle(fontWeight: FontWeight.bold),)),width: MediaQuery.of(context).size.width-220,):SizedBox(child: Align(alignment: FractionalOffset(1,0),child: Text('\$$amount',style: TextStyle(fontWeight: FontWeight.bold),)),width: MediaQuery.of(context).size.width-185,),

            ],
          ),
          Divider(
            height: 20,
            thickness: 1,
            indent: 2,
            endIndent: 0,
            color: Colors.grey.withOpacity(0.5),
          ),
        ],
      );
  }
}
