import 'package:flutter/material.dart';
import 'package:flutterapp2/models/counter.dart';
import 'package:provider/provider.dart';
import 'package:flutterapp2/screens/homepage.dart';

void main() => runApp(MaterialApp(
    home: ChangeNotifierProvider<Counter>(
        create: (_) => Counter(),
        child: Container(
          child: HomePage("Home page"),
        )
    )
)
);

