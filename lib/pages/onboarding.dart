import 'package:flutter/material.dart';
import 'package:food_delivery/pages/bottomnav.dart';

class Onboarding extends StatefulWidget {
    const Onboarding({super.key});

    @override
    State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
                child: Center(
                    child: Column(
                        children: [
                            SizedBox(height: 60),
                                
                            //* HomaPage Image
                            Image.asset(
                                'assets/images/pan.png',
                                height: 250,
                                width: 250,
                                fit: BoxFit.cover,
                            ),
                                
                            SizedBox(height: 30),
                                
                            //* Discover Label
                            Text(
                                'Discover Your Food',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold
                                ),
                            ),
                                
                            SizedBox(height: 30),
                                
                            //* Message
                            Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                
                                child: Text(
                                    "Craving something delicious? Discover your favorite meals from top restaurants near you and get them delivered hot and fresh—fast and hassle-free. Whether it's breakfast, lunch, or a midnight snack, we've got you covered. Tap, order, and enjoy!",
                                    textAlign: TextAlign.center,
                                
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500
                                    ),
                                ),
                            ),
                                
                            SizedBox(height: 40),
                                
                            //* Button
                            GestureDetector(
                                onTap: () {
                                    Navigator.of(context).push(
                                        PageRouteBuilder(
                                            pageBuilder: (context, animation, secondaryAnimation) => Bottomnav(),
                                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                return SlideTransition(
                                                    position: Tween<Offset>(
                                                        begin: Offset(1.0, 0.0), // from right to left
                                                        end: Offset.zero,
                                                    ).animate(animation),
                                                    
                                                    child: child,
                                                );
                                            },
                                        ),
                                    );
                                },

                                child: Material(
                                    elevation: 3.0, // to give a more button look
                                    borderRadius: BorderRadius.circular(30), // to give a more button look
                                    
                                    child: Container(
                                        height: 60,
                                        width: MediaQuery.of(context).size.width / 2,
                                        decoration: BoxDecoration(
                                            color: Color(0xffff734c),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        
                                        child: Center(
                                            child: Text(
                                                'Next',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold
                                                ),
                                            ),
                                        ),
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}