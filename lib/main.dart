import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'fooderlich_theme.dart';
import 'home.dart';
import 'models/models.dart';


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
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TabManager()),
        ],
        child: const Home(),
      )
    );
  }
}
