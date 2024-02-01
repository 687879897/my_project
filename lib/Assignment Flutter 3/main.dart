import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ContactScreen(),
  ));
}

class ContactScreen extends StatefulWidget {
  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  String name = "", phone = "";
  List<ContactModel> contacts = [];

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text("Contact Screen"),
      centerTitle: true,
    ),
    backgroundColor: const Color(0xFF9D9D9D),
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          child: TextField(
            onChanged: (value) {
              setState(() {
                name = value;
              });
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: "Enter your name Here",
              hintStyle: const TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.edit),
                color: Colors.blue,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
          child: TextField(
            onChanged: (value) {
              setState(() {
                phone = value;
              });
            },
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: "Enter your Phone Here",
              hintStyle: const TextStyle(color: Colors.black),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.call),
                color: Colors.blue,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 9, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: const Text(
                    "Add",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    addContact();
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: const Text(
                    "Delete",
                    style: TextStyle(color: Colors.black),
                  ),
                  onPressed: () {
                    deleteContact();
                    setState(() {});
                  },
                ),
              ),
            ),
          ],
        ),
        // Displaying Contacts without using ListView.builder
        for (var contact in contacts)
          Contact(
            name: contact.name,
            phone: contact.phone,
          ),
      ],
    ),
  );

  void addContact() {
    if (name.isNotEmpty && phone.isNotEmpty) {
      ContactModel newContact = ContactModel(name: name, phone: phone);
      setState(() {
        contacts.add(newContact);
        // Clear the text fields after adding a contact
        name = "";
        phone = "";
      });
    }
  }

  void deleteContact() {
    if (contacts.isNotEmpty) {
      setState(() {
        contacts.removeLast();
      });
    }
  }
}

class ContactModel {
  final String name;
  final String phone;

  ContactModel({required this.name, required this.phone});
}

class Contact extends StatelessWidget {
  final String name;
  final String phone;

  Contact({Key? key, required this.name, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name: $name",
              style: const TextStyle(color: Colors.black, fontSize: 24),
            ),
            Text(
              "Phone: $phone",
              style: const TextStyle(color: Colors.black, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
