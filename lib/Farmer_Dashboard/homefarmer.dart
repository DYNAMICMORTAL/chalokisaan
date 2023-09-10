import 'package:flutter/material.dart';


class HomeFarmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Kissan'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Kissan Darshan',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Item1Screen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Item2Screen(),
                  ),
                );
              },
            ),
            // Add more list items as needed
          ],
        ),
      ),
      body: Center(
        child: Text('Welcome to Kissan Darshan!'),
      ),
    );
  }
}

class Item1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item 1'),
      ),
      body: Center(
        child: Text('This is Item 1 screen content.'),
      ),
    );
  }
}

class Item2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item 2'),
      ),
      body: Center(
        child: Text('This is Item 2 screen content.'),
      ),
    );
  }
}
