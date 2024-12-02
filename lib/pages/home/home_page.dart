import 'package:flutter/material.dart';

import '../add/add_page.dart';
import '../edit/edit_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pembuatan UI".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const EditPage(),
            ),
          ),
          leading: CircleAvatar(
            child: Text("${index + 1}"),
          ),
          title: const Text("Name user"),
          subtitle: const Text("Age user"),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AddPage(),
          ),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}
