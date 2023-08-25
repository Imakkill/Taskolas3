import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // Como estamos em um StatelessWidget, vamos usar ValueNotifier para gerenciar o estado do checkbox.
  final ValueNotifier<bool> _checkboxValue = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pagina de Login",
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text(
            'Pagina de Login',
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('lib/assets/login.png', height: 155.0),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(right: 20.0, left: 10),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Digite seu e-mail',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Padding(
                padding: EdgeInsets.only(right: 20.0, left: 10),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.key),
                    hintText: 'Digite sua senha',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              const SizedBox(height: 8),
              ValueListenableBuilder<bool>(
                valueListenable: _checkboxValue,
                builder: (context, isChecked, _) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (newValue) {
                          _checkboxValue.value = newValue!;
                        },
                      ),
                      Text('Lembrar-me'),
                      const SizedBox(
                          width: 175), // Adiciona um espaço entre os textos.
                      GestureDetector(
                        onTap: () {
                          // Adicione a ação para o clique aqui.
                          print('Clicou em Cadastre-se');
                        },
                        child: const Text(
                          'Cadastre-se',
                          style: TextStyle(
                            color: Colors.blue, // Torna o texto azul.
                            fontSize: 15,
                            decoration:
                                TextDecoration.underline, // Sublinha o texto.
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),

              ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.lightBlue),
                  ),
                  child: const Text("Fazer Login")),

              // Adicione mais widgets aqui conforme necessário.
            ],
          ),
        ),
      ),
    );
  }
}
