import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xffe0e0e0),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Container(
              // for curve
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60)),
              ),
            ),
          ),
          Positioned(
            top: 230,
            left: 20,
            child: Column(
              children: [
                Text(
                  "Bio",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text("Flutter Software Developer"),
              ],
            ),
          ),
          Positioned(
            top: 330,
            left: 23,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About Us",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 320.0,
                  child: Text(
                    "A Flutter developer is a software engineer who uses the Flutter framework to develop mobile, web, and desktop applications. Flutter developers are also fluent in writing code using the Dart programming language",
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 66, 101, 207),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.menu_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.more_horiz,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 163.0),
                    child: Text(
                      'Charlotte Summer',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 60,
            left: 16,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                'https://images.pexels.com/photos/18134269/pexels-photo-18134269/free-photo-of-blond-woman-in-black-slip-dress-leaning-on-a-piano.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
                scale: 6.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}
