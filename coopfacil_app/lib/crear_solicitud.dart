import 'package:flutter/material.dart';

class CrearSolicitudScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crear Solicitud'),
        backgroundColor: Color(0xFF00BFAE),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Tipo de Solicitud',
                  prefixIcon:
                      Icon(Icons.request_page, color: Color(0xFF00BFAE)),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese el tipo de solicitud';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Monto',
                  prefixIcon: Icon(Icons.money, color: Color(0xFF00BFAE)),
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese el monto';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF00BFAE)),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Solicitud enviada con éxito')),
                    );
                  }
                },
                child: Text('Enviar Solicitud'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
