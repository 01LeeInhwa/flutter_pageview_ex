import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: PageView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Image.network(
                    "https://picsum.photos/id/${index + 1}/200/300",
                    fit: BoxFit.cover);
              },
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              title: Text("Around"),
              backgroundColor: Colors.transparent,
              elevation: 0,
              // leading: IconButton(
              //   icon: Icon(Icons.menu),
              //   onPressed: () {},
              // ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.only(bottom: 0),
                accountName: Text("Inhwa"),
                accountEmail: Text("ssar@nate.com"),
                decoration: BoxDecoration(
                  color: Colors.red[700],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[850]),
              title: Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[850]),
              title: Text('Setting'),
              onTap: () {
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[850]),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
