import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class DemoView extends StatefulWidget {
  const DemoView({Key? key}) : super(key: key);

  Widget build(context, DemoController controller) {
    controller.view = this;

    /*
    Variable
    Operator Aritmatika
    IF Statement
    List
    Map
    Looping
    Function
    OOP
    */

    //dekalarasi
    //tipe_data nama_variable = nilai_awal;
    String nama = "Deny Ocr";
    double price = 100.50;
    int age = 40;
    bool isAdmin = false;

    /*
    Mangkok, Piring, Gelas, Baskom
    Mangkok = Susu Dancow
    Gelas = Nasi Goreng
    */

    Widget _buildMenuItem(String title, IconData icon, Color color) {
      return InkWell(
        onTap: () {
          // do something
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              size: 32,
              color: color,
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.shopping_bag),
              title: const Text('Order'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favorite'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Notifications'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.report),
              title: const Text('Report'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.assignment),
              title: const Text('TOS'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip),
              title: const Text('Privacy Policy'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              padding: const EdgeInsets.all(10),
              children: <Widget>[
                _buildMenuItem('Clothing', Icons.local_mall, Colors.red),
                _buildMenuItem('Shoes', Icons.shopping_basket, Colors.blue),
                _buildMenuItem('Bags', Icons.shopping_bag, Colors.green),
                _buildMenuItem('Watches', Icons.watch, Colors.orange),
                _buildMenuItem(
                    'Electronics', Icons.phone_android, Colors.purple),
                _buildMenuItem('Beauty', Icons.face, Colors.teal),
                _buildMenuItem('Home & Living', Icons.home, Colors.yellow),
                _buildMenuItem(
                    'Sports', Icons.directions_bike, Colors.deepOrange),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  State<DemoView> createState() => DemoController();
}
