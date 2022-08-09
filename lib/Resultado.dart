import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  //const Resultado(String resultado, {Key? key}) : super(key: key);

  String valor;
  Resultado(this.valor);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  var caminhoImagem;
  Widget build(BuildContext context) {
    print(widget.valor);
    if (widget.valor == "cara") {
      caminhoImagem = "imagens/moeda_cara.png";
    } else {
      caminhoImagem = "imagens/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(0, 153, 51, 1), //defini as cores por RGB e Opacidade.
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: () {
                Navigator.pop(context); //Serve para fechar a tela atual
              },
              child: Image.asset("imagens/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
