import 'package:flutter/material.dart';

class Fooddetail extends StatefulWidget {
  const Fooddetail({super.key});

  @override
  State<Fooddetail> createState() => _FooddetailState();
}

class _FooddetailState extends State<Fooddetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                //* Go Back
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // to go back
                  },

                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ],
            ),

            //* Item Image
            Image.asset(
              'assets/images/pizza3.jpg',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                //* Item Name
                Text(
                  'Pizza',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Container(
                  height: 40,

                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: 150,

                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 115, 76),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    //* Increament and Decreament Quantity
                    children: [
                      Icon(Icons.add, color: Colors.white),

                      Text(
                        '1',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Icon(Icons.remove, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 30),

            //* Item Details
            Text(
              "The Margherita Pizza is a classic favorite, featuring a thin, crispy crust topped with rich tomato sauce, creamy mozzarella cheese, and fresh basil leaves. Light yet flavorful, it's finished with a drizzle of olive oil that brings out the freshness of each ingredient — a perfect choice for those who love simplicity with authentic Italian taste.",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),

            Spacer(),

            Container(
              margin: EdgeInsets.only(bottom: 40),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 115, 76),
                borderRadius: BorderRadius.circular(30),
              ),

              //* Total Price & Add To Cart
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    children: [
                      //* Total Price
                      Text(
                        'Total Price \$45',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 35,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),

                    //* Add To Cart
                    child: Center(
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 115, 76),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
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
    );
  }
}
