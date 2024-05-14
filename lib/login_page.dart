import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _login() async {
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    // URL da sua API de login
    String url = 'https://sua-api.com/login'; // Substitua pela URL da sua API

    // Corpo da solicitação
    Map<String, String> body = {
      'username': username,
      'password': password,
    };

    try {
      // Envia a solicitação POST
      http.Response response = await http.post(
        Uri.parse(url),
        body: json.encode(body),
        headers: {'Content-Type': 'application/json'},
      );

      // Processa a resposta
      if (response.statusCode == 200) {
        // Se o login for bem-sucedido, a resposta deve conter um token de autenticação ou algum outro indicador de sucesso.
        // Você pode decodificar a resposta JSON para obter informações adicionais, se necessário.
        Map<String, dynamic> responseData = json.decode(response.body);
        String authToken = responseData['token']; // Exemplo de como acessar um token de autenticação, ajuste conforme necessário.

        // Login bem-sucedido
        print("Login bem-sucedido! Usuário: $username");
        print("Token de Autenticação: $authToken");
      } else {
        // Login falhou
        print("Login falhou! Verifique seu usuário e senha.");
      }
    } catch (e) {
      // Trata qualquer erro durante a solicitação HTTP
      print("Erro durante a solicitação HTTP: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xFF004AAD),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment(-0.011, -0.75),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Autenticação',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.02, -0.4),
                child: Image.asset(
                  'assets/images/14.png',    // cadeado
                  width: 180,
                  height: 200,
                ),
              ),
              Align(
                alignment: Alignment(0.02, 3.70),
                child: Image.asset(
                  'assets/images/6.png',       
                  width: 750,
                  height: 650,
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.15,
                top: MediaQuery.of(context).size.height * 0.35,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/1.png',     //imagem nome;
                      width: 250,
                      height: 400,
                    ),
                    GestureDetector(
                      onTap: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                      child: Container(
                        width: 155,
                        height: 100,
                        margin: EdgeInsets.only(left: 95, top: 163),
                        decoration: BoxDecoration(
                          color: Colors.transparent, // Alterado para transparente para permitir a interação
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: TextFormField(
                            controller: _usernameController,
                            style: TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '          ',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.15,
                top: MediaQuery.of(context).size.height * 0.58,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/2.png',
                      width: 250,
                      height: 250,
                    ),
                    Container(
                      width: 130,
                      height: 35,
                      margin: EdgeInsets.only(left: 95, top: 100),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        controller: _passwordController,
                        style: TextStyle(fontSize: 20),
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintText: '       ',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.85,
                left: MediaQuery.of(context).size.width * 0.25,
                child: ElevatedButton(
                  onPressed: _login,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'ENTRAR',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
