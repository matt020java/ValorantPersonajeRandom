class Personaje{
  String _foto;
  String _nombre;
  static final Personaje BLANCO = new Personaje("assets/img/Captura.PNG", "");

  Personaje(String _foto, String _nombre){
    this._foto = _foto;
    this._nombre = _nombre;
  }
  String get foto{
    return _foto;
  }
  String get nombre{
    return _nombre;
  }
}