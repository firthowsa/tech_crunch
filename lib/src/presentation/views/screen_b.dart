import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../configs/router/app_router.gr.dart';

@RoutePage()
class ScreenB extends StatelessWidget{
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar() ,
      backgroundColor: Colors.yellow,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
              onPressed:  () {
                context.router.push(const RouteC());
              },
              child: const Text("Press to c"))
        ],

      ),

    );
  }

}