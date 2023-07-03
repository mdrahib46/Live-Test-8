import 'package:flutter/material.dart';
import 'package:live_test_8/ContactClass.dart';

void main() {
  runApp(const ContactListApp());
}

class ContactListApp extends StatelessWidget {
  const ContactListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Contact List',
      home: ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatefulWidget {
  const ContactListScreen({super.key});

  @override
  State<ContactListScreen> createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  List<Contact> contacts = [
    Contact('John Doe', 'johndoe@example.com', '1234567890'),
    Contact('Jane Smith', 'janesminth@example.com', '9876543210'),
    Contact('Alice Johnson', 'jonson@example.com', '5555555555'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contact List'),
      ),
      body: ListView.separated(
        itemCount: contacts.length,
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 0, color: Colors.black),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(contacts[index].name,
                style: const TextStyle(fontSize: 20)),
            onTap: () {
              _showContactDetails(context, contacts[index]);
            },
          );
        },
      ),
    );
  }

  void _showContactDetails(BuildContext context, Contact contact) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Contact Details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                'Name: ${contact.name}',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 5),
              Text(
                'Email: ${contact.email}',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 5),
              Text(
                'Phone: ${contact.phone}',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        );
      },
    );
  }
}
