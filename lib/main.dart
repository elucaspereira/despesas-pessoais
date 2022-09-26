import 'package:flutter/material.dart';
void main(){
  runApp(const DespesasP());
  
}
class DespesasP extends StatelessWidget {
  const DespesasP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaInicial(),
    );
    
  }
}
class PaginaInicial extends StatelessWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
      ),
      body: Column(
        children: [
          Container(
            width:double.infinity,
            child: Card(
              color: Colors.green,
              child: Text('Gráficos'),
            ),
          ),
          Card(
            child: Text('Lista de Transações'),
          )
        ],
      ),
    );
    
  }
}