import 'package:flutter/material.dart';

menuDrawer() {
  return const Drawer(
          child: Column(
            children: [
              Image(
                  image: NetworkImage(
                      'https://www.shutterstock.com/image-vector/cv-dots-bubbles-letters-circle-260nw-2073951833.jpg')),
              ListTile(
                title: Text('Inicio'),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text('Datos personales'),
                leading: Icon(Icons.arrow_back_ios_new_outlined),
              ),
              ListTile(
                title: Text('Referencias'),
                leading: Icon(Icons.arrow_back_ios_new_outlined),
              ),
              ListTile(
                title: Text('Acerca de...'),
                leading: Icon(Icons.arrow_back_ios_new_outlined),
              ),
              ListTile(
                title: Text('Salir'),
                leading: Icon(Icons.arrow_back_ios_new_outlined),
              ),
            ],
          ),
        );
}