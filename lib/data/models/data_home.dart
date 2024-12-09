class DataHomeModel {
  String? fullname;
  String? email;
  String? profile;
  String? judulMasakan;
  String? waktu;
  String? gambarMasakan;
  String? kesulitan;

  DataHomeModel(
      {this.fullname,
      this.email,
      this.profile,
      this.judulMasakan,
      this.waktu,
      this.gambarMasakan,
      this.kesulitan});

  DataHomeModel.fromJson(Map<String, dynamic> json) {
    fullname = json['fullname'];
    email = json['email'];
    profile = json['profile'];
    judulMasakan = json['judul_masakan'];
    waktu = json['waktu'];
    gambarMasakan = json['gambar_masakan'];
    kesulitan = json['kesulitan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> dataJson = <String, dynamic>{};
    dataJson['fullname'] = fullname;
    dataJson['email'] = email;
    dataJson['profile'] = profile;
    dataJson['judul_masakan'] = judulMasakan;
    dataJson['waktu'] = waktu;
    dataJson['gambar_masakan'] = gambarMasakan;
    dataJson['kesulitan'] = kesulitan;
    return dataJson;
  }
}
