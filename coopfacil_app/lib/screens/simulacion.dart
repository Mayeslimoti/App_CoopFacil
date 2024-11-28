import 'package:flutter/material.dart';

import 'dart:math'; // Importa esta librería para usar pow

class CrearSolicitudScreen extends StatefulWidget {
  @override
  _CrearSolicitudScreenState createState() => _CrearSolicitudScreenState();
}

class _CrearSolicitudScreenState extends State<CrearSolicitudScreen> {
  final _formKey = GlobalKey<FormState>();
  String _proposito = '';
  double _monto = 0.0;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Aquí se enviará la solicitud a la API
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Solicitud creada con éxito')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Solicitud'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Propósito'),
                onSaved: (value) => _proposito = value!,
                validator: (value) => value!.isEmpty ? 'Campo requerido' : null,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Monto'),
                keyboardType: TextInputType.number,
                onSaved: (value) => _monto = double.parse(value!),
                validator: (value) =>
                    value!.isEmpty ? 'Ingrese un monto válido' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text('Crear Solicitud'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
