import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
    const Profile({super.key});

    @override
    State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,

            body: Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 120),

                child: Container(
                    width: double.infinity,

                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                    
                                child: Image.asset(
                                    'assets/images/dp.png',
                                    height: 200,
                                    width: 200,
                                    fit: BoxFit.cover,
                                ),
                            ),

                            SizedBox(height: 20),

                            Text(
                                'Faysal Mahmud',
                                style: TextStyle(
                                    color: Color.fromRGBO(187, 163, 225, 1),
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                ),
                            ),

                            Text(
                                'faysal25@gmail.com',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 187, 163, 225), // RGB(187, 163, 225)
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                            ),

                            SizedBox(height: 30),

                            //* List
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                    Container(
                                        width: 70,
                                        height: 70,

                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 187, 163, 225),
                                            borderRadius: BorderRadius.circular(25)
                                        ),
                                        
                                        child: Center(
                                            child: Text(
                                                '14',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold
                                                ),
                                            ),
                                        ),
                                    ),

                                    Container(
                                        width: 70,
                                        height: 70,

                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 239, 240, 251),
                                            borderRadius: BorderRadius.circular(25)
                                        ),
                                        
                                        child: Center(
                                            child:
                                                Text(
                                                '06',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold
                                                ),
                                            ),
                                        ),
                                    ),

                                    Container(
                                        width: 70,
                                        height: 70,

                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 239, 240, 251),
                                            borderRadius: BorderRadius.circular(25)
                                        ),
                                        
                                        child: Center(
                                            child:
                                                Text(
                                                '25',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 30,
                                                    fontWeight: FontWeight.bold
                                                ),
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}