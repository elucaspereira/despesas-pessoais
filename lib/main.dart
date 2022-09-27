import 'package:despesas_pessoais/models/transacao.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const DespesasP());
  
}
class DespesasP extends StatelessWidget {
  const DespesasP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaInicial(),
    );
    
  }
}
class PaginaInicial extends StatelessWidget {
   PaginaInicial({Key? key}) : super(key: key);

  final _transacoes = [
    Transacao(
      id: 'op 0001',
      titulo: 'compra na americanas',
      valor: 155.55,
      data: DateTime.now(),
    ),
    Transacao(
      id: 'op 0002',
      titulo: 'despesas de alimentação',
      valor: 480.00,
      data: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Card(
              color: Colors.green,
              child: Text('Gráficos'),
            ),
          ),
          Column(
            children: _transacoes.map((tr){
              return Card(
                child:
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        border:Border.all(
                          color: Colors.pink.shade200,
                          width: 2
                        )
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        tr.valor.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.pink[400]
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(tr.titulo),
                        Text(tr.data.toString()),
                      ],
                    ),
                  ],
                )
              );
            }).toList()
          )
        ],
      ),
    );
    
  }
}