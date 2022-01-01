import 'package:flutter/material.dart';
import 'home.dart';

void main() { // required function in main.dart
  runApp(MyApp());
}

//void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Text(
      'Learn',
      style: optionStyle,
    ),
    Text(
      'Practice',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


@override // not necessary, but it clearer that the following code overrides the existing method
Widget build(BuildContext context) {
  const _Turquoise = Color.fromRGBO(14,186,162,1.0);
  return MaterialApp(
    // home: Scaffold(
    //   appBar: AppBar(
    //     title: Text('Yoonique Friends'),
    //     backgroundColor: _Turquoise,
    // ),
    home: Scaffold(
    body: Center(
      child: _widgetOptions.elementAt(_selectedIndex),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'Learn',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.quiz),
          label: 'Practice',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: _Turquoise,
      onTap: _onItemTapped,
    ),
  )); // Scaffold gives base design
}
}