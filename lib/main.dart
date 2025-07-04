import 'package:flutter/material.dart';
import 'screens/login.dart'; // Importa sua tela de login
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Inicializa o Firebase antes de rodar o app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App com Login',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, // Ou azul, como preferir
      ),
      home: const LoginScreen(), // Define a tela de login como inicial
    );
  }
}
