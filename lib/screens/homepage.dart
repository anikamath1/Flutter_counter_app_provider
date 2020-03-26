import 'package:flutter/material.dart';
import 'package:flutterapp2/models/counter.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  final String title;
  HomePage(this.title);
  @override
  Widget build(BuildContext context) {
    print("Rebuilding widget!!!");
    Counter counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Basic Counter App"),
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
                  child: Text(
                    counter.counter.toString(),
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      color: Colors.green,
                      iconSize: 80,
                      icon: Icon(Icons.add),
                      onPressed: () {
                        counter.increment();
                      },
                    ),
                    IconButton(
                      color: Colors.red,
                      iconSize: 80,
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        counter.decrement();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
