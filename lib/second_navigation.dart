import 'package:flutter/material.dart';

class SecondNavigation extends StatefulWidget {
  const SecondNavigation({super.key});

  @override
  State<SecondNavigation> createState() => _SecondNavigationState();
}

class _SecondNavigationState extends State<SecondNavigation> {
  var currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                color: currentindex == 0
                    ? Colors.amber
                    : currentindex == 1
                        ? Colors.blueAccent
                        : Colors.deepPurple),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
                color: currentindex == 0 ? Colors.blueAccent : Colors.white,
                child: Column(children: [
                  GestureDetector(
                      onTap: () {
                        currentindex = 0;

                        setState(() {});
                      },
                      child: Icon(Icons.home)),
                  Text("Home")
                ]),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
                color: currentindex == 1 ? Colors.blueAccent : Colors.white,
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          currentindex = 1;

                          setState(() {});
                        },
                        child: Icon(Icons.update)),
                    Text("Update")
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(40, 10, 40, 0),
                color: currentindex == 2 ? Colors.blueAccent : Colors.white,
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          currentindex = 2;

                          setState(() {});
                        },
                        child: Icon(Icons.call)),
                    Text("Call")
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
