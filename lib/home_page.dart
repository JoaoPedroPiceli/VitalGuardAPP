import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_page.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF004AAD), // Definindo a cor de fundo do Container
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment(-0.011, -0.85), // Ajustando a posição ao longo dos eixos x e y
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'VitalGuard',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white, // Definindo a cor do texto como branca
                    fontFamily: 'Open Sans', // Definindo a fonte como Roboto
                    fontWeight: FontWeight.bold, // Definindo a espessura da fonte como negrito
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.02, -0.5),
              child: Image.asset(
                'assets/images/logo.png',  // Logo vital Guard
                width: 200, // Definindo a largura da imagem
                height: 200, // Definindo a altura da imagem
              ),
            ),
            Align(
              alignment: Alignment(1.20, 1.25),
              child: Image.asset(
                'assets/images/5.png',        // imagem da equipe
                width: 850, // Definindo a largura da imagem
                height: 500, // Definindo a altura da imagem
              ),
            ), 
            Positioned(
              top: 480, // Posição vertical do botão
              left: 55, // Posição horizontal do botão
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()), // Correção aqui
                  );
                },
                child: Image.asset(
                  'assets/images/3.png',   // buton de entrar
                  width: 250, // Definindo a largura da imagem
                  height: 100, // Definindo a altura da imagem                                                 
                  fit: BoxFit.cover, // Ajustando o tamanho da imagem para cobrir o espaço disponível
                ),
              ),
            ),
            Positioned(
              top: 550, // Posição vertical do botão
              left: 55, // Posição horizontal do botão 
              child: TextButton( 
                onPressed: () {
                  // Adicione a lógica que deseja executar quando o botão for pressionado aqui==============
                },
                child: Image.asset(
                  'assets/images/4.png',       //buton de novo usuario
                  width: 250, // Definindo a largura da imagem
                  height: 100, // Definindo a altura da imagem                                                   
                  fit: BoxFit.cover, // Ajustando o tamanho da imagem para cobrir o espaço disponível
                ),
              ),
            ),
          ], // Finaliza a lista de widgets do Stack
        ), // Fecha o Stack
      ), // Fecha o Container
    ); // Fecha o Scaffold
  }
}
