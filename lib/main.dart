import 'package:flutter/material.dart';

void main(){
  runApp(const FooderLich());
}

class FooderLich extends StatelessWidget {
  const FooderLich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FooderLich',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FooderLich'),
        ),
        body: const Center(
          child: Text('Let\'s get cooking'),
        ),
      ),
    );
  }
}
