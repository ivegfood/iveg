import 'package:flutter/material.dart';
import 'package:iveg/pj/alertdialog3.dart';

class TelaPj3 extends StatefulWidget {
  @override
  _TelaPj3State createState() => _TelaPj3State();
}

class _TelaPj3State extends State<TelaPj3> {
  var formKey = GlobalKey<FormState>();
   var lista = [];

  var txtTarefa = TextEditingController();
  var txtDialogo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IVEG',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontFamily: 'Goudy Stout',
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      backgroundColor: Colors.green[50],
      body: Container(
           padding: EdgeInsets.all(40),
            child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: txtTarefa,
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                        labelText: 'Adicionar produto',
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add, color: Colors.grey[600]),
                    onPressed: () {
                      setState(() {
                        if (txtTarefa.text.isNotEmpty) {
                          lista.add(txtTarefa.text);
                          txtTarefa.clear();
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Produto adicionado com sucesso!'),
                            duration: Duration(seconds: 2),
                          ));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Produto inválido.'),
                            duration: Duration(seconds: 2),
                          ));
                        }
                      });
                    },
                  )
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  //Aparência do item da lista
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                        lista[index],
                        style: TextStyle(fontSize: 18),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            lista.removeAt(index);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('Tarefa removida com sucesso.'),
                              duration: Duration(seconds: 2),
                            ));
                          });
                        },
                      ),
                    );
                  },

                  //Aparência do divisor
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: Colors.blue[100],
                      thickness: 1,
                    );
                  },

                  //total de itens da lista
                  itemCount: lista.length,
                  
                ),
              ),
              Center(
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: 105, height: 50,),
                    child: OutlinedButton(
                      onPressed: () {
                        showAlertDialog3(context);
                      },
                      child: Text(
                        'Salvar',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Goudy Stout',
                            fontWeight: FontWeight.bold,
                          )
                      ),
                    ),
                  ),
                ),

            ]),
          ),
      );
  }
  Widget botao(rotulo) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6),
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.red),
          child: Text(rotulo, style: TextStyle(fontSize: 24)),
          onPressed: () {
            showAlertDialog3(context);
          }),
    );
  }
}
