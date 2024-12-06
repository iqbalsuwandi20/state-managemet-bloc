class MasakanModel {
  String? status;
  String? message;
  List<DataMasakan>? data;

  MasakanModel({this.status, this.message, this.data});

  MasakanModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <DataMasakan>[];
      json['data'].forEach((v) {
        data!.add(new DataMasakan.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> dataJson = new Map<String, dynamic>();
    dataJson['status'] = this.status;
    dataJson['message'] = this.message;
    if (this.data != null) {
      dataJson['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return dataJson;
  }
}

class DataMasakan {
  String? slug;
  String? title;
  String? thumbnail;
  String? duration;
  String? difficulty;

  DataMasakan(
      {this.slug, this.title, this.thumbnail, this.duration, this.difficulty});

  DataMasakan.fromJson(Map<String, dynamic> json) {
    slug = json['slug'];
    title = json['title'];
    thumbnail = json['thumbnail'];
    duration = json['duration'];
    difficulty = json['difficulty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slug'] = this.slug;
    data['title'] = this.title;
    data['thumbnail'] = this.thumbnail;
    data['duration'] = this.duration;
    data['difficulty'] = this.difficulty;
    return data;
  }
}
