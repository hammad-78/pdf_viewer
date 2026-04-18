import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF List"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(child: Center(child: Text("1")),),
              title: Text("Open PDF from Network"),
              trailing: IconButton(onPressed: (){
              }, icon: Icon(Icons.open_in_new)),
            )
          ],
        ),
      ),
    );
  }
}
