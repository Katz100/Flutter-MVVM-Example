import 'package:flutter/material.dart';
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
          return Text("You have pressed the button ${viewModel.counter} times");
        })
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => viewModel.updateCounter(),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}