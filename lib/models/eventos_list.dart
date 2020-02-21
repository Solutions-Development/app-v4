class EventosList {
  int id;
  String nombre;
  String fechaInicio;
  String fechaTermino;
  String ciudad;
  String pais;
  String sede;
  String banner;

  EventosList(
      {this.id,
        this.nombre,
        this.fechaInicio,
        this.fechaTermino,
        this.ciudad,
        this.pais,
        this.sede,
        this.banner
      });

  EventosList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nombre = json['nombre'];
    fechaInicio = json['fecha_inicio'];
    fechaTermino = json['fecha_termino'];
    ciudad = json['ciudad'];
    pais = json['pais'];
    sede = json['sede'];
    banner = json['banner'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nombre'] = this.nombre;
    data['fecha_inicio'] = this.fechaInicio;
    data['fecha_termino'] = this.fechaTermino;
    data['ciudad'] = this.ciudad;
    data['pais'] = this.pais;
    data['sede'] = this.sede;
    data['banner'] = this.banner;
    return data;
  }
}