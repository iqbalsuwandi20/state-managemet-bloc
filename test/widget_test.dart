import 'package:state_management_bloc/data/models/data_home.dart';
import 'package:state_management_bloc/data/repositories/home_repository.dart';

void main() async {
  HomeRepository homeRepository = HomeRepository();

  Map<String, dynamic> dataRandom = await homeRepository.getRandomData();
  DataHomeModel dataHomeModel = dataRandom["data"];

  print(dataHomeModel.toJson());
}
