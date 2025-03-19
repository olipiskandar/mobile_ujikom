class AnggotaResponse {
  String? message;
  List<Data>? data;

  AnggotaResponse({this.message, this.data});

  AnggotaResponse.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? namaPeminjam;
  String? email;
  String? noTelepon;
  String? instansiLembaga;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.namaPeminjam,
      this.email,
      this.noTelepon,
      this.instansiLembaga,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    namaPeminjam = json['nama_peminjam'];
    email = json['email'];
    noTelepon = json['no_telepon'];
    instansiLembaga = json['instansi_lembaga'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nama_peminjam'] = namaPeminjam;
    data['email'] = email;
    data['no_telepon'] = noTelepon;
    data['instansi_lembaga'] = instansiLembaga;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}