import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart';
import 'bienvenida.dart';
import 'navegacion.dart';

void main() => runApp(CoopFacilApp());

class CoopFacilApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CoopFacil App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
      ),
      // Ruta inicial se maneja en el estado del login
      initialRoute: '/checkLogin',
      routes: {
        '/checkLogin': (context) => CheckLogin(),
        '/login': (context) => LoginScreen(),
        '/bienvenida': (context) => WelcomeScreen(),
        '/navegacion': (context) => MainNavigation(),
      },
    );
  }
}

class CheckLogin extends StatefulWidget {
  @override
  _CheckLoginState createState() => _CheckLoginState();
}

class _CheckLoginState extends State<CheckLogin> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  // Verifica si el usuario está autenticado
  void _checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    bool isLoggedIn =
        prefs.getBool('isLoggedIn') ?? false; // Lee el estado del login

    if (isLoggedIn) {
      // Si está logueado, redirige a la pantalla de navegación
      Navigator.pushReplacementNamed(context, '/navegacion');
    } else {
      // Si no está logueado, redirige a la pantalla de login
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            CircularProgressIndicator(), // Muestra un indicador mientras verifica el estado de login
      ),
    );
  }
}
