import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ScreenC extends StatelessWidget{
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar() ,
      backgroundColor: Colors.pink,
      body: Container(),

    );
  }

}