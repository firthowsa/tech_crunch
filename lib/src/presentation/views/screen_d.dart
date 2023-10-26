import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../configs/router/app_router.gr.dart';

@RoutePage()
class ScreenD extends StatelessWidget{
  const ScreenD({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar() ,
      backgroundColor: Colors.red,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
              onPressed:  () {
                AutoRouter.of(context).push(const RouteB());
              },
              child: const Text("Press"))
        ],

      ),

    );
  }

}