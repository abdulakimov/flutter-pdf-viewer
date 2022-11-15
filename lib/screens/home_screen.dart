import 'package:flutter/material.dart';
import 'package:flutter_pdf_viewer/models/document_model.dart';
import 'package:flutter_pdf_viewer/screens/reader_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text("PDF Reader"),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Recently viewed",
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: Document.doc_list
                      .map((doc) => ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ReaderScreen(doc)));
                            },
                            title: Text(
                              doc.doc_title!,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Text("${doc.page_num} Pages"),
                            trailing: Text(
                              doc.doc_date!,
                              style: TextStyle(color: Colors.grey),
                            ),
                            leading: const Icon(
                              Icons.picture_as_pdf,
                              color: Colors.red,
                              size: 32.0,
                            ),
                          ))
                      .toList(),
                )
              ]),
        ),
      )),
    );
  }
}
