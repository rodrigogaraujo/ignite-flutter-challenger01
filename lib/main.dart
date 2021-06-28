import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'G3 Infotech',
      home: HomePage(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
        scaffoldBackgroundColor: Colors.white,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.greenAccent, foregroundColor: Colors.white),
        appBarTheme: AppBarTheme(
            centerTitle: true, titleTextStyle: TextStyle(color: Colors.white)),
        primaryTextTheme: TextTheme(
          headline6: TextStyle(color: Colors.white),
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Colors.black,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.green, foregroundColor: Colors.white),
        appBarTheme: AppBarTheme(
            centerTitle: true, titleTextStyle: TextStyle(color: Colors.white)),
        primaryTextTheme: TextTheme(
          headline6: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Center(
        child: Text(
          'Contagem: $count',
          style: TextStyle(fontSize: 18),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize = Size.fromHeight(56);

  @override
  MyAppBarState createState() => MyAppBarState();
}

class MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('G3 Infotech'),
      centerTitle: true,
    );
  }
}
