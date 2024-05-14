import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xFF004AAD), // Definindo a cor de fundo do Container
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment(-0.011, -0.75), // Ajustando a posição ao longo dos eixos x e y
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Autenticação',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white, // Definindo a cor do texto como branca
                      fontFamily: 'Open Sans', // Definindo a fonte como Open Sans
                      fontWeight: FontWeight.bold, // Definindo a espessura da fonte como negrito
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.02, -0.4),
                child: Image.asset(
                  'assets/images/14.png',  // Logo cadeado.
                  width: 180, // Definindo a largura da imagem
                  height: 200, // Definindo a altura da imagem
                ),
              ),
              Align(
                alignment: Alignment(0.02, 3.70),
                child: Image.asset(
                  'assets/images/6.png',  // Imagem de fundo
                  width: 750, // Definindo a largura da imagem
                  height: 650, // Definindo a altura da imagem
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.15, // 15% da largura da tela
                top: MediaQuery.of(context).size.height * 0.35, // 35% da altura da tela
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/1.png',  // nome
                      width: 250, // Definindo a largura da imagem
                      height: 400, // Definindo a altura da imagem
                    ),
                    Container(
                      width: 145,
                      height: 40,
                      margin: EdgeInsets.only(left: 95, top: 165),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintText: 'Digite seu login',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width * 0.15, // 15% da largura da tela
                top: MediaQuery.of(context).size.height * 0.58, // 65% da altura da tela
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/2.png',  // senha
                      width: 250, // Definindo a largura da imagem
                      height: 250, // Definindo a altura da imagem
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintText: 'Digite sua senha',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 700, // Posição vertical do botão
                left: 75, // Posição horizontal do botão
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()), // Correção aqui
                    );
                  },
                  child: Image.asset(
                    'assets/images/17.png',   // buton de entrar
                    width: 200, // Definindo a largura da imagem
                    height: 100, // Definindo a altura da imagem                                                 
                    fit: BoxFit.cover, // Ajustando o tamanho da imagem para cobrir o espaço disponível
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
