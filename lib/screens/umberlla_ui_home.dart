import 'package:flutter/material.dart';
import 'package:flutter_umbrella_ui/screens/details.dart';

class UmbrellaUIHome extends StatefulWidget {
  UmbrellaUIHome({Key key}) : super(key: key);

  @override
  _UmbrellaUIHomeState createState() => _UmbrellaUIHomeState();
}

class _UmbrellaUIHomeState extends State<UmbrellaUIHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Shop Umbrella',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.person_outline_sharp,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 16,
                left: 16,
              ),
              child: Text(
                'Trending',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 250,
              margin: EdgeInsets.only(top: 10),
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 10, left: 10),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Details(
                                      index: index,
                                    )));
                      },
                      child: Container(
                        width: 200,
                        margin: EdgeInsets.only(right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Hero(
                                tag: index,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 100,
                                  width: 200,
                                  color: Colors.red.shade100,
                                  child: Image.asset(
                                    'assets/image1.png',
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 6,
                                right: 6,
                              ),
                              child: Text(
                                'Red Umbrella',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 6,
                                right: 6,
                              ),
                              child: Text(
                                'Red Umbrella details, feature......',
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$299',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Icon(Icons.shopping_cart)
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'New',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
              ),
            ),
            ListView.builder(
                itemCount: 7,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(left: 10, top: 10),
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset('assets/image4.png')),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: Text(
                                  'Black&blue Umbrella',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: Text(
                                  'Black&blue Umbrella new features and details information...',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        Flexible(child: Icon(Icons.shopping_cart))
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
