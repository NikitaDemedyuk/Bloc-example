import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_example/counter/model/pet.dart';


import '../counter.dart';

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [CounterCubit] state and notifies it in response to user input.
/// {@endtemplate}
///
///
class CounterView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BlocBuilder <CounterCubit, Pet> (
                builder: (context, ben) {
                  return Row (
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${ben.indexFeed}',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Arial'
                        ),
                      ),
                      ben.isFeed[0] ? const Icon(Icons.fastfood) : const Icon(Icons.fastfood_outlined),
                      ben.isFeed[1] ? const Icon(Icons.fastfood) : const Icon(Icons.fastfood_outlined),
                      ben.isFeed[2] ? const Icon(Icons.fastfood) : const Icon(Icons.fastfood_outlined),
                      ben.isFeed[3] ? const Icon(Icons.fastfood) : const Icon(Icons.fastfood_outlined),
                      ben.isFeed[4] ? const Icon(Icons.fastfood) : const Icon(Icons.fastfood_outlined),
                    ],
                  );
                }),
                FloatingActionButton(
                  key: const Key('counterView_increment_floatingActionButton'),
                  child: const Icon(Icons.add),
                  onPressed: () {
                      context.read<CounterCubit>().incrementIndex();
                  }
                ),
                FloatingActionButton(
                  key: const Key('counterView_decrement_floatingActionButton'),
                  child: const Icon(Icons.remove),
                  onPressed: () {
                      context.read<CounterCubit>().decrementIndex();
                  }
                ),
              ],
            ),
          ),
        );
  }
}
