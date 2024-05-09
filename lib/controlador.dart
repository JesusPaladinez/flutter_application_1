import 'package:get/get.dart';

class Controlador extends GetxController {
  final _tituloBarra = 'Curriculum'.obs;

  void cambioTitulo(String titulo) {
    _tituloBarra.value = titulo;
  }

  String get tituloBarra => _tituloBarra.value;
}