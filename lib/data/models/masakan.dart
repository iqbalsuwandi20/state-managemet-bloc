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
        data!.add(DataMasakan.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> dataJson = <String, dynamic>{};
    dataJson['status'] = status;
    dataJson['message'] = message;
    if (data != null) {
      dataJson['data'] = data!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['slug'] = slug;
    data['title'] = title;
    data['thumbnail'] = thumbnail;
    data['duration'] = duration;
    data['difficulty'] = difficulty;
    return data;
  }
}
