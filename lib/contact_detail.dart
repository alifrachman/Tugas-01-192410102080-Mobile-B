import 'package:tugas_alif/rounded_image.dart';
import 'package:tugas_alif/models/contact.dart';
import 'package:flutter/material.dart';

class ContactDetail extends StatelessWidget {
  const ContactDetail({
    Key? key,
    required this.contact,
  }) : super(key: key);

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        title: Text('Detail Kontak'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            profilePhoto(),
            const SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  informationItem(
                    icon: Icons.person_outline,
                    title: 'Nama',
                    value: contact.name,
                  ),
                  informationItem(
                    icon: Icons.phone_outlined,
                    title: 'No. Telepon',
                    value: contact.phoneNumber,
                  ),
                  informationItem(
                    icon: Icons.email_outlined,
                    title: 'Alamat Email',
                    value: contact.email,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Column profilePhoto() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 32),
        SizedBox(
          height: 120,
          child: Hero(
            tag: contact.email,
            child: RoundedImage(imageUrl: contact.imageUrl),
          ),
        ),
      ],
    );
  }

  Column informationItem(
      {required String title, required String value, required IconData icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF000F30),
              ),
            ),
            const SizedBox(height: 2),
            Text(
              value,
              style: TextStyle(
                fontSize: 16,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Divider(thickness: 0.8),
        ),
      ],
    );
  }
}
