import 'package:agenda_contatos/helpers/contact_help.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ContactHelper helper = ContactHelper();

  @override
  void initState() {
    super.initState();

    List<Contact> contatos = List();
    for (int i = 0; i <= 100; i++) {
      Contact c = Contact();
      c.name = "Anderson Souza";
      c.email = "andersonpds14@gmail.com";
      c.phone = "123456789";
      c.img = "imgtest";
      contatos.add(c);
    }

    helper
        .saveAllBatch(contatos)
        .then((value) => printWrapped(value.toString()));
  }

  void printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
