import 'package:flutter/material.dart';
import 'package:flutter_application_test/routes/routes.dart';
import 'package:flutter_application_test/services/provider.dart';
import 'package:provider/provider.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(AppState());
}

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => SateManage(), lazy: false),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      routes: getApplicationRoutes(),
      initialRoute: 'home',
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { 
  @override
  Widget build(BuildContext context) {
        return Scaffold(                  
                    body: ListView(                     
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 70,
                            ),
                            Text(
                              'MENÚ:',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 20,
                            ),
//
// Opción 1
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                  ),
                                  onPressed: () async {  
                                    Navigator.pushNamed(
                                            context, 'menu_recetas');                                 
                                  },
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 10),
                                        child: Image(
                                            height: 30,
                                            width: 30,
                                            image: AssetImage(
                                                'assets/icono_receta.png')),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text('RECETAS 1',
                                          style: TextStyle(fontSize: 17)),
                                    ],
                                  )),
                            ),
                            SizedBox(
                              height: 10,
                            ),//
// Opción 2
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                  ),
                                  onPressed: () async {
                                    Navigator.pushNamed(
                                            context, 'menu_recetas');
                                  },
                                  child: Row(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 10, 0, 10),
                                        child: Image(
                                            height: 30,
                                            width: 30,
                                            image: AssetImage(
                                                'assets/icono_receta.png')),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text('RECETAS 2',
                                          style: TextStyle(fontSize: 17)),
                                    ],
                                  )),
                            ),
                            //
                            SizedBox(height: 60.0),
                          ],
                        )
                      ],
                    ),
                  );   
      }
  }


