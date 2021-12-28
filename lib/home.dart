import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Map> coffeeList = [
    {
      'shopName': 'CofeeShop\'s',
      'coffeeName': 'Caffe Misto',
      'description': 'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
      'price': '\$4.99',
      'isFav': true
    },
    {
      'shopName': 'BrownHouse\'s',
      'coffeeName': 'Caffe Latte',
      'description': 'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
      'price': '\$3.99',
      'isFav': false
    },
    {
      'shopName': 'CofeeShop\'s',
      'coffeeName': 'Caffe Misto',
      'description': 'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
      'price': '\$4.99',
      'isFav': true
    },
  ];

  List<String> coffeeImg = [
      'images/coffee.jpg',
      'images/coffee2.jpg',
      'images/coffee3.jpg',
  ];

  Widget coffeeCard(String shopName, String coffeeName, String description, String price, bool isFav) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 15.0),
      child: Container(
        height: 450.0,
        width: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          //color: Colors.brown[900],
        ),
        child: Column(
          children: <Widget> [
            Container(
              height: 300,
              width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: <Widget> [
                  Positioned(
                    child: Container(
                      height: 250,
                      width: 220,
                      decoration: BoxDecoration(
                        color: Color(0xFFDAB68C),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [
                            Text(
                              shopName,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontFamily: 'nunito',
                              ),
                            ),
                            Text(
                              coffeeName,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'nunito',
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              description,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'nunito',
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(height: 10.0,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget> [
                                Text(
                                  price,
                                  style: TextStyle(
                                    color: Color(0xFF3A4742),
                                    fontSize: 25.0,
                                    fontFamily: 'nunito',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 5.0),
                                  child: Container(
                                    height: 40.0,
                                    width: 40.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color: isFav ? Colors.red : Colors.grey,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    bottom: 0,
                  ),
                  Positioned(
                    left: 70.0,
                    top: 15.0,
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        //color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage('images/starbucks.png'),
                          alignment: Alignment.topCenter,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              height: 40.0,
              width: 220.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color(0xFF473D3A),
              ),
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Order Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'varela',
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget coffeeImage(String imgPath) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Container(
        height: 100.0,
        width: 175.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgPath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20.0)
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: ListView(
        padding: EdgeInsets.fromLTRB(20.0, 50.0, 0.0, 0.0),
        children: <Widget> [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome, Nipun',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.brown[900],
                        letterSpacing: 1.0,
                        fontFamily: 'varela',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Text(
                      'Let\'s select the best taste for your next coffee break',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.brown[200],
                        fontFamily: 'nunito',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/nipun.jpeg'),
                    radius: 35.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Text(
                'Taste of the week',
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 20.0,
                  color: Colors.brown[900],
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontFamily: 'nunito',
                    color: Colors.brown[200],
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          SizedBox(
            height: 350.0,
            child: ListView.builder(
              itemCount: coffeeList.length,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return coffeeCard(coffeeList[index]['shopName'], coffeeList[index]['coffeeName'], coffeeList[index]['description'], coffeeList[index]['price'], coffeeList[index]['isFav']);
              },
            ),
          ),
          SizedBox(height: 30.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Text(
                'Explore nearby',
                style: TextStyle(
                  fontFamily: 'varela',
                  fontSize: 20.0,
                  color: Colors.brown[900],
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 30.0),
                child: Text(
                  'See all',
                  style: TextStyle(
                    fontFamily: 'nunito',
                    color: Colors.brown[200],
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0,),
          SizedBox(
            height: 150.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: coffeeImg.length,
              itemBuilder: (context, index) {
                return coffeeImage(coffeeImg[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}



