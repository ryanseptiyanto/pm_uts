import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "UTS PM",
      debugShowCheckedModeBanner: false,
      home: MyContent(),
    );
  }
}

class MyContent extends StatelessWidget {
  const MyContent({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey[200],
          child: ListView(
          children: [
            Image.asset(
              'assets/images/img.jpg',
              alignment: Alignment.center,
              fit: BoxFit.fitWidth,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Oeschinen Lake Campground', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Kandersteg, Switzerland', style: TextStyle(color: Colors.grey)),
                    ]
                  ),
                  Row(
                    children: const[
                      Icon(Icons.star, color: Colors.red),
                      Text('41'),
                    ]
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: const [
                    Icon(Icons.call, color: Colors.blue),
                    Text('CALL', style: TextStyle(color: Colors.blue)),
                  ]
                ),
                Column(
                  children: const [
                    Icon(Icons.near_me, color: Colors.blue),
                    Text('ROUTE', style: TextStyle(color: Colors.blue)),
                  ]
                ),
                Column(
                  children: const [
                    Icon(Icons.share, color: Colors.blue),
                    Text('SHARE', style: TextStyle(color: Colors.blue)),
                  ]
                ),
              ],
              ),
            ),
            Container(
              height: 300,
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Text("Lake Oeschinen lies at the foot the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degress Cels  ius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run."),
            ),
          ],
        ),
        )
      ),
    );
  }
}