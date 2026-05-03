import 'package:flutter/material.dart';
import 'package:test_app/widget/MyList.dart';
import 'home_viewmodel.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.viewModel});

  final HomeViewmodel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(viewModel.title),),
      body: Center(
        child: ListenableBuilder(listenable: viewModel, builder: (context, _) {
          return MyList(entries: viewModel.entries);
        })
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => viewModel.removeItem(),
            tooltip: "Remove item",
            heroTag: "1",
            child: const Icon(Icons.delete),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () => viewModel.addItemToList(),
            tooltip: 'Increment Counter',
            heroTag: "2",
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
