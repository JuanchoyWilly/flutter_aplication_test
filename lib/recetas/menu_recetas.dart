import 'package:flutter/material.dart';
import 'package:flutter_application_test/routes/routes.dart';

import '../opciones_textos.dart';
import 'menu_recetas_datos.dart';

class MenuRecetas extends StatefulWidget {
  @override
  State<MenuRecetas> createState() => _ContentState();
}

class _ContentState extends State<MenuRecetas> {
  GlobalKey<FormState> _productKey = GlobalKey<FormState>(); 

  @override
  Widget build(BuildContext context) {
    List<Map> staticData = MyData.data;
    getApplicationRoutes();
    
    return Scaffold(
                  key: _productKey,
                  appBar: AppBar(
                    iconTheme: IconThemeData(
                      color: Colors.black, //change your color here
                    ),
                    backgroundColor: Colors.greenAccent,
                    title: Text('Recetas', style: tamanoTitulo),
                    titleSpacing: 0,
                  ), //Text(appName),
                  body: Column(
                    children: [
                      // Image(
                      //   image: AssetImage("assets/imagen_index.jpg"),
                      // ),
                      _ImagenMenu(),
                      SizedBox(
                        height: 8,
                      ),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemBuilder: (builder, index) {
                            Map data = staticData[index];
                            return Column(
                              children: [
                                ListTile(
                                  title: Text("${data['titulo']}"),
                                  //leading: iconoEjercicio,
                                  trailing: Icon(Icons.navigate_next,
                                      color: Colors.orange),
                                  onTap: () async {
                                    Navigator.pushNamed(
                                            context, '${data['pagina']}');
                                  },
                                ),
                                Divider(),
                              ],
                            );
                          },
                          itemCount: staticData.length,
                        ),
                      ),
                    ],
                  ),
                );
        }
  }

// La imagen
class _ImagenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/imagen_recetas.jpg'),
      fit: BoxFit.cover,
    );
  }
}
