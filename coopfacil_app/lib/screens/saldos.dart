import 'package:flutter/material.dart';

class SaldosScreen extends StatelessWidget {
  final Map<String, dynamic> saldos = {
    "prestamos": 15000.00,
    "ahorros":
        5000.00, //estos son datos de ejemplo por mientras conectamos la API
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Saldos del Cliente'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 3,
              child: ListTile(
                leading:
                    Icon(Icons.account_balance_wallet, color: Colors.green),
                title: Text('Préstamos'),
                subtitle:
                    Text('Saldo: \$${saldos['prestamos'].toStringAsFixed(2)}'),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 3,
              child: ListTile(
                leading: Icon(Icons.savings, color: Colors.green),
                title: Text('Ahorros'),
                subtitle:
                    Text('Saldo: \$${saldos['ahorros'].toStringAsFixed(2)}'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
