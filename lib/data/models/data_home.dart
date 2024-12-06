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
    final Map<String, dynamic> dataJson = new Map<String, dynamic>();
    dataJson['fullname'] = this.fullname;
    dataJson['email'] = this.email;
    dataJson['profile'] = this.profile;
    dataJson['judul_masakan'] = this.judulMasakan;
    dataJson['waktu'] = this.waktu;
    dataJson['gambar_masakan'] = this.gambarMasakan;
    dataJson['kesulitan'] = this.kesulitan;
    return dataJson;
  }
}
