import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main(){
  runApp(const FooderLich());
}

class FooderLich extends StatelessWidget {
  const FooderLich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderLichTheme.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FooderLich',
      theme: theme,
      home: const Home(),
    );
  }
}
