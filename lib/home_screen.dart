import 'package:tugas_alif/card_item.dart';
import 'package:tugas_alif/list_data.dart';
import 'package:tugas_alif/models/contact.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Contact> contacts = [];

  @override
  void initState() {
    contacts.addAll(listContacts);
    contacts.sort((a, b) => a.name.compareTo(b.name));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Kontak Saya'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.builder(
          padding: const EdgeInsets.only(
            bottom: 18,
            top: 12,
          ),
          shrinkWrap: true,
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index) {
            return ContactItem(item: contacts[index]);
          },
        ),
      ),
    );
  }
}
