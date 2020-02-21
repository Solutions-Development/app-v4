class Conferencistas {
  int id;
  String nombre;
  String cedula;
  String nacionalidad;
  String telefonoMovil;
  String telefonoTrabajo;
  String correo;
  String estudioGrado;
  String subEspecialidad;
  String practicaPublica;
  String practicaPrivada;
  String membresias;
  String biografia;
  String perfil;
  String createdAt;
  String updatedAt;

  Conferencistas(
      {this.id,
        this.nombre,
        this.cedula,
        this.nacionalidad,
        this.telefonoMovil,
        this.telefonoTrabajo,
        this.correo,
        this.estudioGrado,
        this.subEspecialidad,
        this.practicaPublica,
        this.practicaPrivada,
        this.membresias,
        this.biografia,
        this.perfil,
        this.createdAt,
        this.updatedAt});

  Conferencistas.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nombre = json['nombre'];
    cedula = json['cedula'];
    nacionalidad = json['nacionalidad'];
    telefonoMovil = json['telefono_movil'];
    telefonoTrabajo = json['telefono_trabajo'];
    correo = json['correo'];
    estudioGrado = json['estudio_grado'];
    subEspecialidad = json['sub_especialidad'];
    practicaPublica = json['practica_publica'];
    practicaPrivada = json['practica_privada'];
    membresias = json['membresias'];
    biografia = json['biografia'];
    perfil = json['perfil'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nombre'] = this.nombre;
    data['cedula'] = this.cedula;
    data['nacionalidad'] = this.nacionalidad;
    data['telefono_movil'] = this.telefonoMovil;
    data['telefono_trabajo'] = this.telefonoTrabajo;
    data['correo'] = this.correo;
    data['estudio_grado'] = this.estudioGrado;
    data['sub_especialidad'] = this.subEspecialidad;
    data['practica_publica'] = this.practicaPublica;
    data['practica_privada'] = this.practicaPrivada;
    data['membresias'] = this.membresias;
    data['biografia'] = this.biografia;
    data['perfil'] = this.perfil;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
