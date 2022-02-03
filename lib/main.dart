import 'package:petuk_adda/views/home.dart';
import 'package:flutter/material.dart';

void main()=>runApp(PetukAdda());

class PetukAdda extends StatelessWidget {
  const PetukAdda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Petuk Adda',
        theme: ThemeData(
          primaryColor: Colors.blue[400],
          primarySwatch: Colors.blueGrey,
          textTheme: TextTheme(
            bodyText2: TextStyle(fontSize: 20),
          ),
        ),
        home: HomePage(),
        );
  }
}
