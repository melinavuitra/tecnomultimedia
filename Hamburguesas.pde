class Hamburguesas {
  float precio;
  String nombre;
  int idHamburguesa;
  Botonera botonera;
  boolean papas;

  Hamburguesas(Botonera suBotonera, String unNombre, boolean tienePapas, int unId, float unPrecio) {
    precio = unPrecio;
    nombre = unNombre;
    papas = tienePapas;
    idHamburguesa = unId;
    botonera = suBotonera;
  }
}
