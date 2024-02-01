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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text("Contact Screen"),
      centerTitle: true,
    ),
    backgroundColor: const Color(0xFF9D9D9D),
    body: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: TextFormField(
                controller: nameController,
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Name is required';
                  }
                  return null;
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
              child: TextFormField(
                controller: phoneController,
                onChanged: (value) {
                  setState(() {
                    phone = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Phone is required';
                  }
                  return null;
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
                    margin: const EdgeInsets.fromLTRB(10, 0, 9, 40),
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
                        if (_formKey.currentState?.validate() ?? false) {
                          addContact();
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
            for (var i = 0; i < contacts.length; i++)
              Contact(
                index: i,
                name: contacts[i].name,
                phone: contacts[i].phone,
                delete: deleteContact,
              ),
          ],
        ),
      ),
    ),
  );

  void addContact() {
    if (name.isNotEmpty && phone.isNotEmpty) {
      ContactModel newContact = ContactModel(
        name: name,
        phone: phone,
        delete: deleteContact,
      );
      setState(() {
        contacts.add(newContact);
        // Clear the text fields after adding a contact
        nameController.clear();
        phoneController.clear();
        name = "";
        phone = "";
      });
    }
  }

  void deleteContact(int index) {
    if (contacts.isNotEmpty) {
      contacts.removeAt(index);
      setState(() {});
    }
  }
}

class ContactModel {
  final String name;
  final String phone;
  final Function(int) delete;

  ContactModel({required this.name, required this.phone, required this.delete});
}

class Contact extends StatelessWidget {
  final int index;
  final String name;
  final String phone;
  final Function(int) delete;

  const Contact({Key? key, required this.index, required this.name, required this.phone, required this.delete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
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
            IconButton(
              onPressed: () {
                delete(index);
              },
              icon: const Icon(Icons.delete),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
