import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyGoldPriceChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        title: Text('Gold App'),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amber,
              ),
              child: Text(
                'Gold App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('App evaluation'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('About US'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScxoS-1FO7ZigMSFT-vwuLqQgMeksamdSxfeRRa0wZXGxj2isx5L19rDnRXKmBrDq31uY&usqp=CAU'), // يمكنك استبدالها برابط الصورة الخاصة بك
            ),
            SizedBox(height: 20),
            Text(
              'Username',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Edit profile'),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
