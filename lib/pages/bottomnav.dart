import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/home.dart';
import 'package:food_delivery/pages/cart.dart';
import 'package:food_delivery/pages/booking.dart';
import 'package:food_delivery/pages/profile.dart';

class Bottomnav extends StatefulWidget {
    const Bottomnav({super.key});

    @override
    State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
    int currentTabIndex = 0;
    late List<Widget> pages;

    late Widget currentPage;
    late Home home;
    late Booking booking;
    late Profile profile;
    late Cart cart;

    @override
    void initState() {
        home = Home();
        booking = Booking();
        profile = Profile();
        cart = Cart();

        pages = [home, cart, booking, profile];
        currentPage = Home();

        super.initState();
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
                height: 55,
                backgroundColor: Colors.white,
                color: Color.fromARGB(255, 255, 115, 76),
                animationDuration: Duration(milliseconds: 100), // the time it will take to shift from one page to another

                onTap: (int index) {
                    setState(() {
                      currentTabIndex = index;
                    });
                },

                items: [
                    Icon(Icons.home_outlined, color: Colors.white, size: 25),
                    Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 25),
                    Icon(Icons.shopping_bag_outlined, color: Colors.white, size: 25),
                    Icon(Icons.person_outlined, color: Colors.white, size: 25),
                ],
            ),

            body: pages[currentTabIndex],
        );
    }
}