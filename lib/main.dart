import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(Chella());
}

class Chella extends StatelessWidget {
  Chella({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[

      ],
      child:MaterialApp(
        title:'Chella Rewards',
        debugShowCheckedModeBanner: false,
        initialRoute:'/login',
        routes:{
         
        },
      )
    );
  }
}
