import 'package:flutter/material.dart';
import 'data.dart';
import 'pdf_viewer_screen.dart';

class PaperListScreen extends StatelessWidget {
  final String subject;

  const PaperListScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    final papers = subjectData[subject] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(subject),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: papers.length,
        itemBuilder: (context, index) {
          final paper = papers[index];

          return Card(
            elevation: 3,
            margin: const EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              leading: const Icon(Icons.picture_as_pdf, color: Colors.red),
              title: Text(paper.title),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PdfViewerScreen(
                      title: paper.title,
                      url: paper.pdfUrl,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}