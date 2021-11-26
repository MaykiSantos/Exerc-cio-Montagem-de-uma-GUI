import 'package:flutter/material.dart';



class Formulario extends StatelessWidget {

  TextStyle styleTitulo = new TextStyle(
    fontSize: 30,
    decoration: TextDecoration.none,
    fontFamily: 'Times',
    fontWeight: FontWeight.bold,
  );
  
  TextStyle styleLabel = new TextStyle(
    fontSize: 15,
    fontFamily: 'Times',
    decoration: TextDecoration.none,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeiro Formulario'),
      ),
      body: corpoFormulario(),
    );
  }

  corpoFormulario() {
    return Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('TELA DE CADASTRO', style: styleTitulo,),
            blocoInput('NOME: ', 'Digite o nome'),
            blocoInput('ENDEREÇO: ', 'Digite o endereço'),
            blocoInput('eMAIL: ', 'Digite o email'),
            Row(
              children: [
                Spacer(flex: 1,),
                botao('CANCELAR'),
                botao("SALVAR"),
              ],
            ),

          ],
        ),
      );
  }

  blocoInput(String label, String hiden) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Text(label, style: styleLabel,),
          TextField(
            decoration: InputDecoration(
                fillColor: Colors.blue,
                hintText: hiden,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )
            ),
          )
        ],
      ),
    );
  }

  botao(String descricao) {
    return Container(
      margin: EdgeInsets.only(top: 10, left: 5, right: 5),
      child: ElevatedButton(onPressed: (){}, child: Text(descricao),),
    );
  }


}
