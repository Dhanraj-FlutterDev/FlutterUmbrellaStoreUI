import 'package:flutter/material.dart';
import 'package:flutter_umbrella_ui/screens/checkout_page.dart';

class Details extends StatefulWidget {
  Details({Key key, this.index}) : super(key: key);
  int index;

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Umbrella Details',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: widget.index,
              child: Container(
                padding: EdgeInsets.all(16),
                height: 300,
                color: Colors.red.shade100,
                width: MediaQuery.of(context).size.width,
                child: Image.asset('assets/image1.png'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16),
              child: Text(
                'Red Umbrella',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16, top: 10),
              child: Text(
                'Red Umbrella feature and details' * 5,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16, top: 10),
              child: Text(
                'Reviews:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(top: 16),
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.grey.shade100,
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.only(
                        left: 16, right: 16, top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                'Ravi Kumar',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                            Spacer(),
                            Flexible(
                                child: Text(
                              '4.9',
                              style: TextStyle(
                                  color: Colors.amber,
                                  fontWeight: FontWeight.bold),
                            )),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('IN depth review will be here,' * 5)
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        isExtended: true,
        backgroundColor: Colors.black,
        label: Text(
          'Add to cart',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CheckOutPage()));
        },
      ),
    );
  }
}
