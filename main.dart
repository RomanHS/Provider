import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (context) => Data(),
      child: MaterialApp(
        home: Scaffold(
          body: MyText(),
          floatingActionButton: MyFloatingActionButton(),
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Text(context.watch<Data>().getData.toString()),
          TextButton(
            onPressed: () => context.read<Data>().plus(),
            child: Text("+"),
          ),
          TextButton(
            onPressed: () => context.read<Data>().minus(),
            child: Text("-"),
          ),
        ],
      ),
    );
  }
}

class MyFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => context.read<Data>().nul(),
      child: Text("0"),
    );
  }
}
