import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

import '../../data/models/data_home.dart';
import '../../data/repositories/home_repository.dart';

part 'random_event.dart';
part 'random_state.dart';

class RandomBloc extends Bloc<RandomEvent, RandomState> {
  HomeRepository homeRepository;

  RandomBloc(this.homeRepository) : super(RandomInitial(DataHomeModel())) {
    on<GetRandomEvent>((event, emit) async {
      try {
        emit(RandomLoading(state.data));

        Map<String, dynamic> dataRandom = await homeRepository.getRandomData();

        if (dataRandom["error"] == true) {
          String errorMessage = dataRandom['message'];
          emit(RandomError(state.data, errorMessage));
        } else {
          DataHomeModel dataHomeModel = dataRandom['data'];
          emit(RandomCompleted(dataHomeModel));
        }
      } catch (e) {
        emit(RandomError(state.data, e.toString()));
      }
    });
  }
}
