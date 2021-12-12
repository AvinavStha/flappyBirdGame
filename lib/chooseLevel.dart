import 'package:flappybird_game/start_screen.dart';
import 'package:flappybird_game/start_screen2.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class ChooseLevel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.bng.jpeg"),
            fit:BoxFit.cover,
          ),
          color: Colors.pink[300],
        ),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Stack(
              children: [
                Container(
                  height: 500,
                  width: 400,
                  child: Card(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      // color: Colors.grey[800],
                      elevation: 10,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: Text(
                              "Welcome",
                              style:
                              TextStyle(fontSize: 50, color: Colors.green,fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: Text(
                              "PLEASE CHOOSE YOUR LEVEL",
                              style:
                              TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SizedBox(
                                height: 80,
                                width: 110,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => StartScreen()),
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      Text(
                                        'Easy',
                                        style: TextStyle(fontSize: 30,color: Colors.white),
                                      ),
                                      Icon(Icons.star,color: Colors.yellow,),
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          12), // <-- Radius
                                    ),
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: SizedBox(
                                height: 80,
                                width: 110,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => StartScreen2()),
                                    );
                                  },
                                  child: Column(
                                    children: [
                                      Text(
                                        'Hard',
                                        style: TextStyle(fontSize: 30,color: Colors.white),
                                      ),
                                      Center(
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Icon(Icons.star,color: Colors.yellow,),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Icon(Icons.star,color: Colors.yellow,),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.green[800],
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          12), // <-- Radius
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      )),
                )
              ],
            )
          ],
        ));
  }
}
