class DataModel {
  List<Acrilicas> acrilicas;
  List<Disenno2d> disenno2d;
  List<Esmaltado> esmaltado;
  List<Manicura> manicura;
  List<Pedicura> pedicura;

  DataModel(
      {this.acrilicas,
      this.disenno2d,
      this.esmaltado,
      this.manicura,
      this.pedicura});

  DataModel.fromJson(Map<String, dynamic> json) {
    if (json['acrilicas'] != null) {
      acrilicas = [];
      json['acrilicas'].forEach((v) {
        acrilicas.add(new Acrilicas.fromJson(v));
      });
    }
    if (json['disenno2d'] != null) {
      disenno2d = [];
      json['disenno2d'].forEach((v) {
        disenno2d.add(new Disenno2d.fromJson(v));
      });
    }
    if (json['esmaltado'] != null) {
      esmaltado = [];
      json['esmaltado'].forEach((v) {
        esmaltado.add(new Esmaltado.fromJson(v));
      });
    }
    if (json['manicura'] != null) {
      manicura = [];
      json['manicura'].forEach((v) {
        manicura.add(new Manicura.fromJson(v));
      });
    }
    if (json['pedicura'] != null) {
      pedicura = [];
      json['pedicura'].forEach((v) {
        pedicura.add(new Pedicura.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.acrilicas != null) {
      data['acrilicas'] = this.acrilicas.map((v) => v.toJson()).toList();
    }
    if (this.disenno2d != null) {
      data['disenno2d'] = this.disenno2d.map((v) => v.toJson()).toList();
    }
    if (this.esmaltado != null) {
      data['esmaltado'] = this.esmaltado.map((v) => v.toJson()).toList();
    }
    if (this.manicura != null) {
      data['manicura'] = this.manicura.map((v) => v.toJson()).toList();
    }
    if (this.pedicura != null) {
      data['pedicura'] = this.pedicura.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Acrilicas {
  String nombreServicio;
  String imagen;

  Acrilicas({this.nombreServicio, this.imagen});

  Acrilicas.fromJson(Map<String, dynamic> json) {
    nombreServicio = json['nombreServicio'];
    imagen = json['imagen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nombreServicio'] = this.nombreServicio;
    data['imagen'] = this.imagen;
    return data;
  }
}

class Disenno2d {
  String nombreServicio;
  String imagen;

  Disenno2d({this.nombreServicio, this.imagen});

  Disenno2d.fromJson(Map<String, dynamic> json) {
    nombreServicio = json['nombreServicio'];
    imagen = json['imagen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nombreServicio'] = this.nombreServicio;
    data['imagen'] = this.imagen;
    return data;
  }
}

class Esmaltado {
  String nombreServicio;
  String imagen;

  Esmaltado({this.nombreServicio, this.imagen});

  Esmaltado.fromJson(Map<String, dynamic> json) {
    nombreServicio = json['nombreServicio'];
    imagen = json['imagen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nombreServicio'] = this.nombreServicio;
    data['imagen'] = this.imagen;
    return data;
  }
}

class Manicura {
  String nombreServicio;
  String imagen;

  Manicura({this.nombreServicio, this.imagen});

  Manicura.fromJson(Map<String, dynamic> json) {
    nombreServicio = json['nombreServicio'];
    imagen = json['imagen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nombreServicio'] = this.nombreServicio;
    data['imagen'] = this.imagen;
    return data;
  }
}

class Pedicura {
  String nombreServicio;
  String imagen;

  Pedicura({this.nombreServicio, this.imagen});

  Pedicura.fromJson(Map<String, dynamic> json) {
    nombreServicio = json['nombreServicio'];
    imagen = json['imagen'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nombreServicio'] = this.nombreServicio;
    data['imagen'] = this.imagen;
    return data;
  }
}


