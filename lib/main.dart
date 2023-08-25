import 'package:flutter/material.dart';
import 'package:taskolas/loginPage.dart';

void main() => runApp(LoginPage());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Taskolas'),
          centerTitle: true,
          titleTextStyle: const TextStyle(fontSize: 20),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .center, // Centraliza os widgets verticalmente.
            children: <Widget>[
              const Text(
                'Te ajudando a ganhar tempo',
                style: TextStyle(fontSize: 30),
              ),

              Image.asset('lib/assets/taskimage.jpg'),

              const SizedBox(height: 20), // Espaço entre a imagem e o botão.
              ElevatedButton(
                onPressed: () {
                  // Adicione a ação do botão aqui.
                },
                child: const Text('Vamos começar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
