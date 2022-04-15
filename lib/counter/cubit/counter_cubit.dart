import 'package:bloc/bloc.dart';
import 'package:bloc_example/counter/model/pet.dart';

/// {@template counter_cubit}
/// A [Cubit] which manages an [bool] as its state.
/// {@endtemplate}
class CounterCubit extends Cubit<Pet> {
  /// {@macro counter_cubit}


  CounterCubit() : super(Pet.unnamed());

  Pet ben = Pet.parameters('Ben', '', 0, 0, [false, false, false, false, false], [false, false, false, false, false]);


  /// Add 1 to the current state.
  void incrementIndex() {
    print(state.indexFeed);
    print(state.isFeed);
    ben.isFeed[ben.indexFeed] = true;
    ben.indexFeed++;
    emit(ben);
  }

  /// Subtract 1 from the current state.
  void decrementIndex() {
    print(state.indexFeed);
    print(state.isFeed);
    ben.indexFeed--;
    ben.isFeed[ben.indexFeed] = false;
    emit(ben);
  }
}
