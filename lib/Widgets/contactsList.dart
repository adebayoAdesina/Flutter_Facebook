import 'package:facebook_ui/Widgets/userCard.dart';
import 'package:flutter/material.dart';

import '../Model/userModel.dart';

class ContactsList extends StatelessWidget {
  final List<User> user;
  const ContactsList({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Contacts',
                  style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              ),
              const SizedBox(
                width: 8.0,
              ),
              Icon(
                Icons.search,
                color: Colors.grey[600],
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              itemCount: user.length,
              itemBuilder: ((context, index) {
                User users = user[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: UserCard(user: users),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
