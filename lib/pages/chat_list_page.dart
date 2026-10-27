import 'package:flutter/material.dart';
import 'package:flutter_application_1/classes/contatos.dart';
import 'package:flutter_application_1/domain/conversa.dart';

class ChatListPage extends StatelessWidget {
  ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Conversas")),
      body: ListView.builder(
        itemCount: Conversas.length,
        itemBuilder: (BuildContext context, int i) {
          Chat conversa = Conversas[i];
          return ListTile(
            title: Text(conversa.contato),
            subtitle: Text(conversa.ultimaMsg),
            leading: CircleAvatar(
              child: Text(conversa.contato[0]),
              backgroundColor: Colors.amberAccent,
              foregroundColor: Colors.black,
            ),

            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('$conversa.horario'),
                Badge(label: Text('1'), backgroundColor: Colors.green),
              ],
            ),
          );
        },
      ),
    );
  }
}
