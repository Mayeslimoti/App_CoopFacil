import 'package:flutter/material.dart';
import 'perfil_cliente.dart'; // Pantalla de Perfil del Cliente
import 'saldos.dart'; // Pantalla de Saldos
import 'solicitudes.dart'; // Pantalla de Solicitudes
import 'crear_solicitud.dart'; // Pantalla de Crear Solicitud

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
      home: MainNavigation(),
    );
  }
}

class MainNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CoopFacil'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _NavigationOption(
              icon: Icons.person,
              label: 'Perfil',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PerfilClienteScreen()),
              ),
            ),
            _NavigationOption(
              icon: Icons.account_balance_wallet,
              label: 'Saldos',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SaldosScreen()),
              ),
            ),
            _NavigationOption(
              icon: Icons.receipt_long,
              label: 'Solicitudes',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SolicitudesScreen()),
              ),
            ),
            _NavigationOption(
              icon: Icons.add_circle,
              label: 'Crear Solicitud',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CrearSolicitudScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavigationOption extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _NavigationOption({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green[50],
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              blurRadius: 6,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.green),
            const SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.green[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
