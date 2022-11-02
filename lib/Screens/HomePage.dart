import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'CardInfo.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SvgPicture.asset('assets/mainphotos.svg',height: 500,),
            SizedBox(
              height: 00,
            ),
            Container(margin: EdgeInsets.all(30),
              child: Text(
                "Manage your finances",
                style: TextStyle(color: Colors.blue, fontSize: 50),
              ),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10) ,gradient: LinearGradient(colors: [Color(0xFF642b73),Color(0xFFc6426e)])),
              child: ElevatedButton(
              onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context) => const CardInfo()))},
              child: Text("Get Started"),
              style: ElevatedButton.styleFrom(elevation: 0,
              primary: Colors.transparent,
              textStyle: TextStyle(fontSize: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
