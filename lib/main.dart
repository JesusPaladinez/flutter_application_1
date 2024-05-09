import 'package:flutter/material.dart';
import 'package:flutter_application_1/barra_estado.dart';
import 'package:flutter_application_1/body_content.dart';
import 'package:flutter_application_1/controlador.dart';
import 'package:flutter_application_1/datosPersonales.dart';
import 'package:flutter_application_1/menuDrawer.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  Get.put(Controlador());
  runApp(const Home());
}

Controlador controladorBody = Get.find();

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: barraEstado(),
        drawer: menuDrawer(),
        body: coleccionPaginas[1],
      ),
    );
  }
}

List coleccionPaginas = [bodyContent(), datosPersonales(), experienciaLaboral()];

experienciaLaboral() {
  return ListView.builder(
    itemCount: datosLaborales.length,
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text(datosLaborales[index]['empresa']),
        subtitle: Text(datosLaborales[index]['puesto']),
        leading: const Icon(Icons.arrow_circle_right),
        onTap: () {

        },
      );
    },
  );
}

List datosLaborales = [
  {
    'empresa': 'Empresa A',
    'puesto': 'Desarrollador de Software',
    'periodo': 'Enero 2018 - Diciembre 2019',
    'funciones': 'Desarrollo de aplicaciones móviles y web.'
  },
  {
    'empresa': 'Empresa B',
    'puesto': 'Diseñador Gráfico',
    'periodo': 'Marzo 2020 - Presente',
    'funciones':
        'Diseño de logotipos, material publicitario y contenido para redes sociales.'
  },
  {
    'empresa': 'Empresa C',
    'puesto': 'Gerente de Proyectos',
    'periodo': 'Agosto 2016 - Febrero 2019',
    'funciones': 'Planificación, coordinación y ejecución de proyectos.'
  },
  {
    'empresa': 'Empresa D',
    'puesto': 'Analista de Datos',
    'periodo': 'Junio 2019 - Abril 2021',
    'funciones':
        'Análisis de datos, generación de informes y recomendaciones basadas en datos.'
  },
  {
    'empresa': 'Empresa E',
    'puesto': 'Ingeniero de Calidad',
    'periodo': 'Septiembre 2017 - Julio 2018',
    'funciones':
        'Implementación y mantenimiento de sistemas de gestión de calidad.'
  },
  {
    'empresa': 'Empresa F',
    'puesto': 'Especialista en Marketing Digital',
    'periodo': 'Enero 2022 - Presente',
    'funciones':
        'Desarrollo de estrategias de marketing digital y gestión de campañas publicitarias.'
  },
  {
    'empresa': 'Empresa G',
    'puesto': 'Asistente Administrativo',
    'periodo': 'Mayo 2020 - Octubre 2021',
    'funciones': 'Apoyo en tareas administrativas y gestión de documentación.'
  },
  {
    'empresa': 'Empresa H',
    'puesto': 'Consultor Financiero',
    'periodo': 'Diciembre 2018 - Junio 2020',
    'funciones':
        'Asesoramiento financiero a clientes y análisis de inversiones.'
  },
  {
    'empresa': 'Empresa I',
    'puesto': 'Traductor Freelance',
    'periodo': 'Abril 2020 - Presente',
    'funciones': 'Traducción de documentos técnicos y literarios.'
  },
  {
    'empresa': 'Empresa J',
    'puesto': 'Especialista en Recursos Humanos',
    'periodo': 'Noviembre 2017 - Marzo 2019',
    'funciones': 'Selección de personal, gestión de nóminas y capacitación.'
  },
  {
    'empresa': 'Empresa K',
    'puesto': 'Técnico de Soporte Técnico',
    'periodo': 'Julio 2019 - Presente',
    'funciones': 'Atención y resolución de incidencias técnicas.'
  },
  {
    'empresa': 'Empresa L',
    'puesto': 'Analista de Seguridad Informática',
    'periodo': 'Octubre 2018 - Agosto 2021',
    'funciones':
        'Monitoreo de sistemas de seguridad y análisis de vulnerabilidades.'
  },
  {
    'empresa': 'Empresa M',
    'puesto': 'Instructor de Fitness',
    'periodo': 'Febrero 2017 - Mayo 2018',
    'funciones': 'Diseño y dirección de clases de fitness.'
  },
  {
    'empresa': 'Empresa N',
    'puesto': 'Redactor de Contenidos',
    'periodo': 'Septiembre 2020 - Presente',
    'funciones': 'Creación de contenido para blogs y sitios web.'
  },
  {
    'empresa': 'Empresa O',
    'puesto': 'Especialista en Logística',
    'periodo': 'Marzo 2018 - Noviembre 2019',
    'funciones': 'Gestión de inventario y coordinación de envíos.'
  },
];
