import 'package:flutter/material.dart';
import '../helpers/imports.dart';


Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
//     // Página Inicio
    'home': (BuildContext context) => HomePage(),
// //     // // //

//     // // // Menú Recetas
    'menu_recetas': (_) => MenuRecetas(),

// 
// // // ****************************************** CONTENIDO  *************************
  'receta01': (_) => Receta01(),
  'receta02': (_) => Receta02(),
  'receta03': (_) => Receta03(),
  'receta04': (_) => Receta04(),
  'receta05': (_) => Receta05(),
  'receta06': (_) => Receta06(),
  'receta07': (_) => Receta07(),
  'receta08': (_) => Receta08(),
  'receta09': (_) => Receta09(),
  'receta10': (_) => Receta10(),
  'receta11': (_) => Receta11(),
  'receta12': (_) => Receta12(),
  'receta13': (_) => Receta13(),
  'receta14': (_) => Receta14(),
  'receta15': (_) => Receta15(),
  'receta16': (_) => Receta16(),
  'receta17': (_) => Receta17(),
  'receta18': (_) => Receta18(),
  };
}
