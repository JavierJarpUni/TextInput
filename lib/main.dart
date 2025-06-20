import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mis Datos',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyDataScreen(),
    );
  }
}

class MyDataScreen extends StatefulWidget {
  const MyDataScreen({super.key});

  @override
  State<MyDataScreen> createState() => _MyDataScreenState();
}

class _MyDataScreenState extends State<MyDataScreen> {
  final TextEditingController _nameController = TextEditingController();
  String _displayedName = '';

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  void _showName() {
    setState(() {
      _displayedName = _nameController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi Información Personal')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Input para el nombre
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ingresa tu nombre',
                hintText: 'Ej. Juan Pérez',
              ),
            ),
            const SizedBox(height: 20), // Espacio entre el input y el botón
            // Botón para mostrar el nombre
            ElevatedButton(
              onPressed: _showName,
              child: const Text('Mostrar Nombre'),
            ),
            const SizedBox(height: 30), // Espacio entre el botón y el texto
            // Texto donde se mostrará el nombre
            if (_displayedName.isNotEmpty)
              Text(
                '¡Hola, $_displayedName!',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
                textAlign: TextAlign.center,
              )
            else
              const Text(
                'Ingresa tu nombre arriba y presiona "Mostrar Nombre".',
                style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
}
