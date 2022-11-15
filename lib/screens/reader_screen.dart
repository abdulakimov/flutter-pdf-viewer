import 'package:flutter/material.dart';
import 'package:flutter_pdf_viewer/models/document_model.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ReaderScreen extends StatefulWidget {
  ReaderScreen(this.doc, {Key? key});

  Document doc;

  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(widget.doc.doc_title!),
      ),
      body: Container(
        child: SfPdfViewer.network(widget.doc.doc_url!),
      ),
    );
  }
}
