import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'CardInfo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(alignment: FractionalOffset(0,1),child: Opacity(opacity: 0.3,
            child: SvgPicture.asset('assets/img/Ellipse.svg',))),
            Align(alignment: FractionalOffset(1,0.1),child: Opacity(child: SvgPicture.asset('assets/img/Ellipse1.svg'),opacity: 0.5,)),
            Align(child: SvgPicture.asset('assets/img/Vector.svg',height: 800,),alignment: FractionalOffset(0,4.25),),
            SvgPicture.asset('assets/img/mainphotos.svg',height: 450,),
            Align(alignment: FractionalOffset(0.5,0.75),
              child: Container(margin: EdgeInsets.fromLTRB(25,60,25,80),
                child: Text(
                  "Manage your finances",
                  style: TextStyle(color: Color(0xFF375bd9), fontSize: 50,height: 1.2,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Align(
            alignment: FractionalOffset(0.5,0.9),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10) ,gradient: LinearGradient(colors: [Color(0xFF375bd9),Color(0xFF5476de)])),
                child: ElevatedButton(
                onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => const CardInfo()))},
                child: Text("Get Started"),
                style: ElevatedButton.styleFrom(elevation: 0,
                primary: Colors.transparent,
                textStyle: TextStyle(fontSize: 15,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
