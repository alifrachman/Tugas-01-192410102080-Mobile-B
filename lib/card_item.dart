import 'package:contact_list/contact_detail_screen.dart';
import 'package:contact_list/custom_rounded_image.dart';
import 'package:contact_list/models/contact.dart';
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
            builder: (ctx) => ContactDetailScreen(contact: item),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(
                height: 60,
                child: Hero(
                  tag: item.email,
                  child: CustomRoundedImage(imageUrl: item.imageUrl),
                ),
              ),
              const SizedBox(width:18),
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
                      item.email,
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
