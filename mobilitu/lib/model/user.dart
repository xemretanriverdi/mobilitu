


class User {
  String adi;
  List<int> dersler;
  int derssayisi;
  String foto;
  int no;
  String sifre;
  String soyadi;

  User(
      {this.adi,
      this.dersler,
      this.derssayisi,
      this.foto,
      this.no,
      this.sifre,
      this.soyadi});

  User.fromJson(Map<String, dynamic> json) {
    adi = json['adi'];
    dersler = json['dersler'].cast<int>();
    derssayisi = json['derssayisi'];
    foto = json['foto'];
    no = json['no'];
    sifre = json['sifre'];
    soyadi = json['soyadi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adi'] = this.adi;
    data['dersler'] = this.dersler;
    data['derssayisi'] = this.derssayisi;
    data['foto'] = this.foto;
    data['no'] = this.no;
    data['sifre'] = this.sifre;
    data['soyadi'] = this.soyadi;
    return data;
  }
}
