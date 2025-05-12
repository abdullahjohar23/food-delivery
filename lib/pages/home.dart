import 'package:flutter/material.dart';
import 'package:food_delivery/pages/fooddetail.dart';

class Home extends StatefulWidget {
    const Home({super.key});

    @override
    State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,

            body: SingleChildScrollView(
                child: Container(
                    margin: EdgeInsets.only(top: 50, left: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                
                        children: [
                            //* 3 Line Icon, Profile Icon
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                
                                children: [
                                    Icon(
                                        Icons.menu,
                                        size: 35,
                                    ),
                
                                    Padding(
                                        padding: const EdgeInsets.only(right: 20),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(30),
                                        
                                            child: Image.asset(
                                                'assets/images/boy.jpg',
                                                height: 50,
                                                width: 50,
                                                fit: BoxFit.cover,
                                            ),
                                        ),
                                    )
                                ],
                            ),
                            
                            SizedBox(height: 20),

                            //* Get Your Food
                            Text(
                                'Get Your Food',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold
                                ),
                            ),

                            //* Delivered
                            Text(
                                'Delivered!',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold
                                ),
                            ),
                
                            SizedBox(height: 30),
                
                            //* * Menu Type ListView (All, Burger, Pizza, Pasta)
                            Container(
                                height: 80,
                                
                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                
                                    children: [
                                        Container(
                                            width: 80,
                                            margin: EdgeInsets.only(top: 15, bottom: 15),
                
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(255, 255, 115, 76),
                                                borderRadius: BorderRadius.circular(30)
                                            ),
                
                                            //* All                            
                                            child: Center(
                                                child: Text(
                                                    'All',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.bold
                                                    ),
                                                ),
                                            ),
                                        ),
                
                                        SizedBox(width: 10),
                
                                        //* Burger
                                        Container(
                                            width: 180,
                                            padding: EdgeInsets.all(10),
                                            child: Material(
                                                elevation: 3,
                                                borderRadius: BorderRadius.circular(30),
                                            
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(30)
                                                    ),
                                                                            
                                                    child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                            Image.asset(
                                                                'assets/images/burger.png',
                                                                height: 40,
                                                                width: 40,
                                                                fit: BoxFit.cover,
                                                            ),
                                                
                                                            SizedBox(width: 10),
                                                
                                                            Text(
                                                                'Burger',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 20,
                                                                    fontWeight: FontWeight.w500
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                        ),
                
                                        SizedBox(width: 10),
                
                                        //* Pizza
                                        Container(
                                            width: 180,
                                            padding: EdgeInsets.all(10),
                                            child: Material(
                                                elevation: 3,
                                                borderRadius: BorderRadius.circular(30),
                                            
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(30)
                                                    ),
                                                                            
                                                    child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                            Image.asset(
                                                                'assets/images/pizza.png',
                                                                height: 40,
                                                                width: 40,
                                                                fit: BoxFit.cover,
                                                            ),
                                                
                                                            SizedBox(width: 10),
                                                
                                                            Text(
                                                                'Pizza',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 20,
                                                                    fontWeight: FontWeight.w500
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                        ),
                
                                        SizedBox(width: 10),
                
                                        //* Pasta
                                        Container(
                                            width: 180,
                                            padding: EdgeInsets.all(10),
                                            child: Material(
                                                elevation: 3,
                                                borderRadius: BorderRadius.circular(30),
                                            
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(30)
                                                    ),
                                                                            
                                                    child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                            Image.asset(
                                                                'assets/images/pasta.png',
                                                                height: 40,
                                                                width: 40,
                                                                fit: BoxFit.cover,
                                                            ),
                                                
                                                            SizedBox(width: 10),
                                                
                                                            Text(
                                                                'Pasta',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 20,
                                                                    fontWeight: FontWeight.w500
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                
                            SizedBox(height: 20),
                
                            //* Items
                            Container(
                                height: 320,
                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    padding: EdgeInsets.zero,
                                
                                    children: [
                                        SizedBox(width: 10),
                
                                        //* Pizza1
                                        GestureDetector(
                                            onTap: () {
                                                Navigator.of(context).push(
                                                    PageRouteBuilder(
                                                        pageBuilder: (context, animation, secondaryAnimation) => Fooddetail(),
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

                                            child: Container(
                                                margin: EdgeInsets.only(bottom: 10, right: 20),
                                                child: Material(
                                                    elevation: 5,
                                                    borderRadius: BorderRadius.circular(20),
                                                
                                                    child: Container(
                                                        padding: EdgeInsets.all(10),
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.circular(20)
                                                        ),
                                                    
                                                        child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                                ClipRRect(
                                                                    borderRadius: BorderRadius.circular(20),
                                                    
                                                                    child: Image.asset(
                                                                        'assets/images/pizza1.jpg',
                                                                        height: 180,
                                                                        width: 180,
                                                                        fit: BoxFit.cover
                                                                    ),
                                                    
                                                                ),
                                                                
                                                                SizedBox(height: 10),
                                                    
                                                                //* Item Label
                                                                Text(
                                                                    'Pizza',
                                                                    style: TextStyle(
                                                                        color: Colors.black,
                                                                        fontSize: 20,
                                                                        fontWeight: FontWeight.w700
                                                                    ),
                                                                ),
                                                    
                                                                //* Item Ingradient Label
                                                                Text(
                                                                    'Pepperoni, Sausage',
                                                                    style: TextStyle(
                                                                        color: Colors.black,
                                                                        fontSize: 17,
                                                                        fontWeight: FontWeight.w400
                                                                    ),
                                                                ),
                                                    
                                                                SizedBox(height: 10),
                                                    
                                                                //* Price Label
                                                                Row(
                                                                    children: [
                                                                        Text(
                                                                            '\$48.99',
                                                                            style: TextStyle(
                                                                                color: Colors.black,
                                                                                fontSize: 24,
                                                                                fontWeight: FontWeight.bold
                                                                            ),
                                                                        ),
                                                    
                                                                        SizedBox(width: 65),
                                                    
                                                                        //* Add Button
                                                                        Container(
                                                                            padding: EdgeInsets.all(5),
                                                                            decoration: BoxDecoration(
                                                                                color: Color.fromARGB(255, 255, 115, 76),
                                                                                borderRadius: BorderRadius.circular(10)
                                                                            ),
                                                    
                                                                            child: Icon(
                                                                                Icons.add,
                                                                                color: Colors.white
                                                                            ),
                                                                        ),
                                                                    ],
                                                                ),
                                                            ],
                                                        ),
                                                    ),
                                                ),
                                            ),
                                        ),
                
                                        //* Burger1
                                        Container(
                                            margin: EdgeInsets.only(bottom: 10, right: 20),
                                            child: Material(
                                                elevation: 5,
                                                borderRadius: BorderRadius.circular(20),
                                            
                                                child: Container(
                                                    padding: EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(20)
                                                    ),
                                                
                                                    child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                            ClipRRect(
                                                                borderRadius: BorderRadius.circular(20),
                                                
                                                                child: Image.asset(
                                                                    'assets/images/burger1.jpg',
                                                                    height: 180,
                                                                    width: 180,
                                                                    fit: BoxFit.cover
                                                                ),
                                                
                                                            ),
                                                            
                                                            SizedBox(height: 10),
                                                
                                                            //* Item Label
                                                            Text(
                                                                'Burger',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 20,
                                                                    fontWeight: FontWeight.w700
                                                                ),
                                                            ),
                                                
                                                            //* Item Ingradient Label
                                                            Text(
                                                                'Double Cheeseburger',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 17,
                                                                    fontWeight: FontWeight.w400
                                                                ),
                                                            ),
                                                
                                                            SizedBox(height: 10),
                                                
                                                            //* Price Label
                                                            Row(
                                                                children: [
                                                                    Text(
                                                                        '\$45.00',
                                                                        style: TextStyle(
                                                                            color: Colors.black,
                                                                            fontSize: 24,
                                                                            fontWeight: FontWeight.bold
                                                                        ),
                                                                    ),
                                                
                                                                    SizedBox(width: 65),
                                                
                                                                    //* Add Button
                                                                    Container(
                                                                        padding: EdgeInsets.all(5),
                                                                        decoration: BoxDecoration(
                                                                            color: Color.fromARGB(255, 255, 115, 76),
                                                                            borderRadius: BorderRadius.circular(10)
                                                                        ),
                                                
                                                                        child: Icon(
                                                                            Icons.add,
                                                                            color: Colors.white
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                        ),
                
                                        //* Pizza2
                                        Container(
                                            margin: EdgeInsets.only(bottom: 10, right: 20),
                                            child: Material(
                                                elevation: 5,
                                                borderRadius: BorderRadius.circular(20),
                                            
                                                child: Container(
                                                    padding: EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(20)
                                                    ),
                                                
                                                    child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                            ClipRRect(
                                                                borderRadius: BorderRadius.circular(20),
                                                
                                                                child: Image.asset(
                                                                    'assets/images/pizza2.png',
                                                                    height: 180,
                                                                    width: 180,
                                                                    fit: BoxFit.cover
                                                                ),
                                                
                                                            ),
                                                            
                                                            SizedBox(height: 10),
                                                
                                                            //* Item Label
                                                            Text(
                                                                'Pizza',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 20,
                                                                    fontWeight: FontWeight.w700
                                                                ),
                                                            ),
                                                
                                                            //* Item Ingradient Label
                                                            Text(
                                                                'Cheese, Tomato',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 17,
                                                                    fontWeight: FontWeight.w400
                                                                ),
                                                            ),
                                                
                                                            SizedBox(height: 10),
                                                
                                                            //* Price Label
                                                            Row(
                                                                children: [
                                                                    Text(
                                                                        '\$44.55',
                                                                        style: TextStyle(
                                                                            color: Colors.black,
                                                                            fontSize: 24,
                                                                            fontWeight: FontWeight.bold
                                                                        ),
                                                                    ),
                                                
                                                                    SizedBox(width: 65),
                                                
                                                                    //* Add Button
                                                                    Container(
                                                                        padding: EdgeInsets.all(5),
                                                                        decoration: BoxDecoration(
                                                                            color: Color.fromARGB(255, 255, 115, 76),
                                                                            borderRadius: BorderRadius.circular(10)
                                                                        ),
                                                
                                                                        child: Icon(
                                                                            Icons.add,
                                                                            color: Colors.white
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                        ),
                
                                        //* Pasta
                                        Container(
                                            margin: EdgeInsets.only(bottom: 10, right: 20),
                                            child: Material(
                                                elevation: 5,
                                                borderRadius: BorderRadius.circular(20),
                                            
                                                child: Container(
                                                    padding: EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(20)
                                                    ),
                                                
                                                    child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                            ClipRRect(
                                                                borderRadius: BorderRadius.circular(20),
                                                
                                                                child: Image.asset(
                                                                    'assets/images/pasta1.png',
                                                                    height: 180,
                                                                    width: 180,
                                                                    fit: BoxFit.cover
                                                                ),
                                                
                                                            ),
                                                            
                                                            SizedBox(height: 10),
                                                
                                                            //* Item Label
                                                            Text(
                                                                'Pasta',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 20,
                                                                    fontWeight: FontWeight.w700
                                                                ),
                                                            ),
                                                
                                                            //* Item Ingradient Label
                                                            Text(
                                                                'Mashroom, Chicken',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 17,
                                                                    fontWeight: FontWeight.w400
                                                                ),
                                                            ),
                                                
                                                            SizedBox(height: 10),
                                                
                                                            //* Price Label
                                                            Row(
                                                                children: [
                                                                    Text(
                                                                        '\$39.99',
                                                                        style: TextStyle(
                                                                            color: Colors.black,
                                                                            fontSize: 24,
                                                                            fontWeight: FontWeight.bold
                                                                        ),
                                                                    ),
                                                
                                                                    SizedBox(width: 65),
                                                
                                                                    //* Add Button
                                                                    Container(
                                                                        padding: EdgeInsets.all(5),
                                                                        decoration: BoxDecoration(
                                                                            color: Color.fromARGB(255, 255, 115, 76),
                                                                            borderRadius: BorderRadius.circular(10)
                                                                        ),
                                                
                                                                        child: Icon(
                                                                            Icons.add,
                                                                            color: Colors.white
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                
                            SizedBox(height: 20),
                
                            //* Top Food Deals Label
                            Text(
                                'Top Food Deals',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold
                                ),
                            ),
                
                            //* Top Food Deals Menu
                            Container(
                                height: 320,
                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    padding: EdgeInsets.zero,
                                
                                    children: [
                                        SizedBox(width: 10),
                
                                        //* Pizza1
                                        Container(
                                            margin: EdgeInsets.only(bottom: 10, right: 20),
                                            child: Material(
                                                elevation: 5,
                                                borderRadius: BorderRadius.circular(20),
                                            
                                                child: Container(
                                                    padding: EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(20)
                                                    ),
                                                
                                                    child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                            ClipRRect(
                                                                borderRadius: BorderRadius.circular(20),
                                                
                                                                child: Image.asset(
                                                                    'assets/images/pizza1.jpg',
                                                                    height: 180,
                                                                    width: 180,
                                                                    fit: BoxFit.cover
                                                                ),
                                                
                                                            ),
                                                            
                                                            SizedBox(height: 10),
                                                
                                                            //* Item Label
                                                            Text(
                                                                'Pizza',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 20,
                                                                    fontWeight: FontWeight.w700
                                                                ),
                                                            ),
                                                
                                                            //* Item Ingradient Label
                                                            Text(
                                                                'Pepperoni, Sausage',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 17,
                                                                    fontWeight: FontWeight.w400
                                                                ),
                                                            ),
                                                
                                                            SizedBox(height: 10),
                                                
                                                            //* Price Label
                                                            Row(
                                                                children: [
                                                                    Text(
                                                                        '\$48.99',
                                                                        style: TextStyle(
                                                                            color: Colors.black,
                                                                            fontSize: 24,
                                                                            fontWeight: FontWeight.bold
                                                                        ),
                                                                    ),
                                                
                                                                    SizedBox(width: 65),
                                                
                                                                    //* Add Button
                                                                    Container(
                                                                        padding: EdgeInsets.all(5),
                                                                        decoration: BoxDecoration(
                                                                            color: Color.fromARGB(255, 255, 115, 76),
                                                                            borderRadius: BorderRadius.circular(10)
                                                                        ),
                                                
                                                                        child: Icon(
                                                                            Icons.add,
                                                                            color: Colors.white
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                        ),
                
                                        //* Burger1
                                        Container(
                                            margin: EdgeInsets.only(bottom: 10, right: 20),
                                            child: Material(
                                                elevation: 5,
                                                borderRadius: BorderRadius.circular(20),
                                            
                                                child: Container(
                                                    padding: EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(20)
                                                    ),
                                                
                                                    child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                            ClipRRect(
                                                                borderRadius: BorderRadius.circular(20),
                                                
                                                                child: Image.asset(
                                                                    'assets/images/burger1.jpg',
                                                                    height: 180,
                                                                    width: 180,
                                                                    fit: BoxFit.cover
                                                                ),
                                                
                                                            ),
                                                            
                                                            SizedBox(height: 10),
                                                
                                                            //* Item Label
                                                            Text(
                                                                'Burger',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 20,
                                                                    fontWeight: FontWeight.w700
                                                                ),
                                                            ),
                                                
                                                            //* Item Ingradient Label
                                                            Text(
                                                                'Double Cheeseburger',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 17,
                                                                    fontWeight: FontWeight.w400
                                                                ),
                                                            ),
                                                
                                                            SizedBox(height: 10),
                                                
                                                            //* Price Label
                                                            Row(
                                                                children: [
                                                                    Text(
                                                                        '\$45.00',
                                                                        style: TextStyle(
                                                                            color: Colors.black,
                                                                            fontSize: 24,
                                                                            fontWeight: FontWeight.bold
                                                                        ),
                                                                    ),
                                                
                                                                    SizedBox(width: 65),
                                                
                                                                    //* Add Button
                                                                    Container(
                                                                        padding: EdgeInsets.all(5),
                                                                        decoration: BoxDecoration(
                                                                            color: Color.fromARGB(255, 255, 115, 76),
                                                                            borderRadius: BorderRadius.circular(10)
                                                                        ),
                                                
                                                                        child: Icon(
                                                                            Icons.add,
                                                                            color: Colors.white
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                        ),
                
                                        //* Pizza2
                                        Container(
                                            margin: EdgeInsets.only(bottom: 10, right: 20),
                                            child: Material(
                                                elevation: 5,
                                                borderRadius: BorderRadius.circular(20),
                                            
                                                child: Container(
                                                    padding: EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(20)
                                                    ),
                                                
                                                    child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                            ClipRRect(
                                                                borderRadius: BorderRadius.circular(20),
                                                
                                                                child: Image.asset(
                                                                    'assets/images/pizza2.png',
                                                                    height: 180,
                                                                    width: 180,
                                                                    fit: BoxFit.cover
                                                                ),
                                                
                                                            ),
                                                            
                                                            SizedBox(height: 10),
                                                
                                                            //* Item Label
                                                            Text(
                                                                'Pizza',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 20,
                                                                    fontWeight: FontWeight.w700
                                                                ),
                                                            ),
                                                
                                                            //* Item Ingradient Label
                                                            Text(
                                                                'Cheese, Tomato',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 17,
                                                                    fontWeight: FontWeight.w400
                                                                ),
                                                            ),
                                                
                                                            SizedBox(height: 10),
                                                
                                                            //* Price Label
                                                            Row(
                                                                children: [
                                                                    Text(
                                                                        '\$44.55',
                                                                        style: TextStyle(
                                                                            color: Colors.black,
                                                                            fontSize: 24,
                                                                            fontWeight: FontWeight.bold
                                                                        ),
                                                                    ),
                                                
                                                                    SizedBox(width: 65),
                                                
                                                                    //* Add Button
                                                                    Container(
                                                                        padding: EdgeInsets.all(5),
                                                                        decoration: BoxDecoration(
                                                                            color: Color.fromARGB(255, 255, 115, 76),
                                                                            borderRadius: BorderRadius.circular(10)
                                                                        ),
                                                
                                                                        child: Icon(
                                                                            Icons.add,
                                                                            color: Colors.white
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                        ),
                
                                        //* Pasta
                                        Container(
                                            margin: EdgeInsets.only(bottom: 10, right: 20),
                                            child: Material(
                                                elevation: 5,
                                                borderRadius: BorderRadius.circular(20),
                                            
                                                child: Container(
                                                    padding: EdgeInsets.all(10),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius.circular(20)
                                                    ),
                                                
                                                    child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                            ClipRRect(
                                                                borderRadius: BorderRadius.circular(20),
                                                
                                                                child: Image.asset(
                                                                    'assets/images/pasta1.png',
                                                                    height: 180,
                                                                    width: 180,
                                                                    fit: BoxFit.cover
                                                                ),
                                                
                                                            ),
                                                            
                                                            SizedBox(height: 10),
                                                
                                                            //* Item Label
                                                            Text(
                                                                'Pasta',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 20,
                                                                    fontWeight: FontWeight.w700
                                                                ),
                                                            ),
                                                
                                                            //* Item Ingradient Label
                                                            Text(
                                                                'Mashroom, Chicken',
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontSize: 17,
                                                                    fontWeight: FontWeight.w400
                                                                ),
                                                            ),
                                                
                                                            SizedBox(height: 10),
                                                
                                                            //* Price Label
                                                            Row(
                                                                children: [
                                                                    Text(
                                                                        '\$39.99',
                                                                        style: TextStyle(
                                                                            color: Colors.black,
                                                                            fontSize: 24,
                                                                            fontWeight: FontWeight.bold
                                                                        ),
                                                                    ),
                                                
                                                                    SizedBox(width: 65),
                                                
                                                                    //* Add Button
                                                                    Container(
                                                                        padding: EdgeInsets.all(5),
                                                                        decoration: BoxDecoration(
                                                                            color: Color.fromARGB(255, 255, 115, 76),
                                                                            borderRadius: BorderRadius.circular(10)
                                                                        ),
                                                
                                                                        child: Icon(
                                                                            Icons.add,
                                                                            color: Colors.white
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}