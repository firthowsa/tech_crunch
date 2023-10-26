import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../configs/router/app_router.gr.dart';

@RoutePage()
class ScreenA extends StatelessWidget{
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     appBar: AppBar() ,
     //backgroundColor: Colors.red,
     body: Card(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           const Card(

            child: Text("home"),
           ),

           Card(
             child: ElevatedButton(
                 onPressed:  () {
                   AutoRouter.of(context).push(const RouteB());
                 },
                 child: const Text("Press")
             ),
           )


         ],

       ),
     ),
       floatingActionButton:
       FloatingActionButton(onPressed: () => {}, tooltip: 'Increment'),

   );
  }

}