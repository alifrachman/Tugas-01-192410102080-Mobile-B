import 'package:tugas_alif/contact_detail.dart';
import 'package:tugas_alif/rounded_image.dart';
import 'package:tugas_alif/models/contact.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  final Contact item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => ContactDetail(contact: item),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.20),
          child: Row(
            children: [
              SizedBox(
                height: 68,
                child: Hero(
                  tag: item.email,
                  child: RoundedImage(imageUrl: item.imageUrl),
                ),
              ),
              const SizedBox(width:20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      item.phoneNumber,
                      style: TextStyle(color: Colors.black87),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_right,
                size: 24,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
