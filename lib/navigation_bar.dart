import 'package:flutter/material.dart';

class Bottom_NavigationBar extends StatefulWidget {
  const Bottom_NavigationBar({super.key});

  @override
  State<Bottom_NavigationBar> createState() => _Bottom_NavigationBarState();
}

class _Bottom_NavigationBarState extends State<Bottom_NavigationBar> {
  var _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Bar"),
      ),
      // body: Container(
      //   color: Colors.amber,
      // ),
      body: Container(
        color: _currentindex == 0
            ? Colors.amber
            : _currentindex == 1
                ? Colors.black
                : Colors.blueAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentindex,
          onTap: (value) {
            _currentindex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.update), label: "Update"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_2), label: "person"),
          ]),
    );
  }
}
