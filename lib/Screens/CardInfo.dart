import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(28),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Your Cards",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () => {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  child: const Text("Add",
                      style: TextStyle(color: Colors.lightBlue)),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.blueGrey.withOpacity(0.5),
                      offset: Offset(0, 3)),
                  BoxShadow(
                      color: Colors.blueGrey.withOpacity(0.5),
                      offset: Offset(0, 6))
                ],
                gradient: const LinearGradient(
                    colors: [Color(0xFF642b73), Color(0xFFc6426e)]),
                borderRadius: BorderRadius.circular(20),
              ),
              width: 50,
              height: 200,
              child: Stack(
                children: const [
                  Align(
                      alignment: FractionalOffset(0.1, 0.2 / 2),
                      child: Text(
                        "Total Balance:",
                        style: TextStyle(color: Colors.white),
                      )),
                  Align(
                      alignment: FractionalOffset(0.1, 0.4 / 2),
                      child: Text("\$5,656",
                          style: TextStyle(fontSize: 30, color: Colors.white))),
                  Align(
                      alignment: FractionalOffset(0.1, 0.84),
                      child: Text(
                        "**** **** **** 6756",
                        style: TextStyle(letterSpacing: 1, color: Colors.white),
                      )),
                  Align(
                      alignment: FractionalOffset(0.85, 0.15),
                      child: Icon(Icons.add)),
                  Align(
                      alignment: FractionalOffset(0.85, 0.84),
                      child: Text(
                        "09/24",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,30,0,20),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () => {},
                        child: Icon(
                          Icons.call_made_rounded,
                          color: Colors.white,
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            padding: MaterialStateProperty.all(EdgeInsets.all(20))),
                      ),SizedBox(height: 12,),
                      Text(
                        "Send",
                      )
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.fromLTRB(0,30,0,20),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () => {},
                        child: Icon(
                          Icons.call_received_rounded,
                          color: Colors.white,
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            padding: MaterialStateProperty.all(EdgeInsets.all(20))),
                      ),SizedBox(height: 12,),
                      Text(
                        "Receive",
                      )
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.fromLTRB(0,30,0,20),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () => {},
                        child: Icon(size: 30,
                          Icons.add,
                          color: Colors.white,
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            padding: MaterialStateProperty.all(EdgeInsets.all(17))),
                      ),SizedBox(height: 12,),
                      Text(
                        "Topup",
                      )
                    ],
                  ),
                ),Padding(
                  padding: const EdgeInsets.fromLTRB(0,30,0,20),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () => {},
                        child: Icon(
                          Icons.more_vert_rounded,
                          color: Colors.white,
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            padding: MaterialStateProperty.all(EdgeInsets.all(20))),
                      ),SizedBox(height: 12,),
                      Text(
                        "More",
                      )]
                  )),

              ],mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            Row(
              children: [
                Text("Transactions",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,)),
                ElevatedButton(onPressed: ()=>{}, child: Text("See all",style: TextStyle(color: Colors.grey[400]),),style: ButtonStyle(elevation: MaterialStateProperty.all(0),backgroundColor: MaterialStateProperty.all(Colors.transparent)),)
              ],mainAxisAlignment: MainAxisAlignment.spaceBetween,
            )
          ],
        ),
      ),
    );
  }
}
