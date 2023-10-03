import 'package:flutter/material.dart';
import 'package:reponsive_project/responsive_folder/loutebuilder.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key}) : super(key: key);

  //? Responsive ->
  //? Adapdive ->

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red),
        body: Loutebuilder(
          mobile: Container(color: Colors.black),
          tablet: TabletWidjet(size: size),
          desktop: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: size.width / 3,
                  height: size.height / 10,
                  color: Colors.teal,
                ),
                Container(
                  width: 300,
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                )
              ],
            ),
          ),
        ));
  }
}

class TabletWidjet extends StatelessWidget {
  const TabletWidjet({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: size.width / 3,
          height: size.height / 10,
          color: Colors.teal,
        ),
        Container(
          width: 300,
          height: 100,
          color: Colors.blue,
          child: Text(""),
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.yellow,
        )
      ],
    );
  }
}
