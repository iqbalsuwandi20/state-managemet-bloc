import 'dart:math';

import '../models/data_home.dart';
import '../models/masakan.dart';
import '../models/user.dart';
import '../providers/masakan_provider.dart';
import '../providers/user_provider.dart';

class HomeRepository {
  UserProvider userProvider = UserProvider();
  MasakanProvider masakanProvider = MasakanProvider();

  Future<Map<String, dynamic>> getRandomData() async {
    Map<String, dynamic> dataUser = await userProvider.getDataUser();
    Map<String, dynamic> dataMakanan = await masakanProvider.getDataMakanan();

    if (dataUser["error"] == true && dataMakanan["error"] == true) {
      return {
        "error": true,
        "message": "Terjadi kesalahan saat mengambil data user & makanan",
      };
    }

    UserModel userModel = dataUser["data"] as UserModel;

    late DataUser dataRandomUser;

    if (userModel.data != null) {
      dataRandomUser = userModel.data!.randomUser();
    } else {
      dataRandomUser = DataUser();
    }

    MasakanModel masakanModel = dataMakanan["data"] as MasakanModel;

    late DataMasakan dataRandomMasakan;

    if (masakanModel.data != null) {
      dataRandomMasakan = masakanModel.data!.randomMasakan();
    } else {
      dataRandomMasakan = DataMasakan();
    }

    return {
      "error": false,
      "message": "Berhasil mengambil data random user & makanan",
      "data": DataHomeModel(
        fullname: "${dataRandomUser.firstName} ${dataRandomUser.lastName}",
        email: "${dataRandomUser.email}",
        gambarMasakan: "${dataRandomMasakan.thumbnail}",
        judulMasakan: "${dataRandomMasakan.title}",
        kesulitan: "${dataRandomMasakan.difficulty}",
        waktu: "${dataRandomMasakan.duration}",
        profile: "${dataRandomUser.avatar}",
      ),
    };
  }
}

extension RandomUser on List<DataUser> {
  DataUser randomUser() {
    return elementAt(Random().nextInt(length - 1));
  }
}

extension RandomMakanan on List<DataMasakan> {
  DataMasakan randomMasakan() {
    return elementAt(Random().nextInt(length - 1));
  }
}
