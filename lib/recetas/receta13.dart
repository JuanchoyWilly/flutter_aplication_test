import 'package:flutter/material.dart';
import 'package:flutter_application_test/opciones_textos.dart';
import 'package:styled_text/styled_text.dart';

import 'menu_recetas_datos.dart';

final String _quote = titulo13;

class Receta13 extends StatefulWidget {
  @override
  State<Receta13> createState() => _PageState();
}

class _PageState extends State<Receta13> {
 
 @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(         
          backgroundColor: Color(0xffffffff),
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              color: Colors.yellow,
              child: _titulo(),
               padding: EdgeInsets.fromLTRB(18, 23, 18, 17),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _texto(),
                    //html,
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
            ),
          ])),
    );
  }
}

// Para el título
Widget _titulo() {
  return Center(
    child: Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            _quote,
            style: tamanoTitulo,
            textAlign: TextAlign.left,
          ),
        ),
      ],
    ),
  );
}

//
// ********************* TEXTO DE LA PÁGINA  ****************
Widget _texto() {
  return Padding(
    padding: paddingTextos,
    child: StyledText(
      text: '''
Elaboración de la comida en este texto.
''',
      style: tamanoTexto,
      tags: {
        'b': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
        'color': StyledTextTag(style: TextStyle(color: Colors.blue)),
      },
    ),
  );
}