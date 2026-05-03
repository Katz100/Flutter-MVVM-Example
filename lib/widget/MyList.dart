import 'package:flutter/cupertino.dart';

class MyList extends StatelessWidget {
  const MyList({super.key, required this.entries});

  final List<int> entries;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            child: Center(child: Text('Entry ${entries[index]}')),
          );
        }
    );
  }
}