import 'package:contact_list/card_item.dart';
import 'package:contact_list/data.dart';
import 'package:contact_list/models/contact.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kontak Saya'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: contacts.isNotEmpty
            ? ListView.builder(
                padding: const EdgeInsets.only(
                  bottom: 18,
                  top: 20,
                ),
                shrinkWrap: true,
                itemCount: contacts.length,
                itemBuilder: (BuildContext context, int index) {
                  return ContactItem(item: contacts[index]);
                },
              )
            : Center(
                child: Text('Tidak ada kontak'),
              ),
      ),
    );
  }
}
