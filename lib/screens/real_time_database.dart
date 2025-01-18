import 'package:flutter/material.dart';

class RealTimeDatabase extends StatefulWidget {
  const RealTimeDatabase({super.key});

  @override
  State<RealTimeDatabase> createState() => _RealTimeDatabaseState();
}

class _RealTimeDatabaseState extends State<RealTimeDatabase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'real time database',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  Dialog myDialog(
      {required BuildContext context,
      required String name,
      required String address,
      required VoidCallback onPressed}) {
    return Dialog(
      backgroundColor: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: Colors.blue),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                //untuk close dialog
                CircleAvatar(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close)),
                )
              ],
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'enter the name', hintText: 'eg bagus'
              ),
            )
          ],
        ),
      ),
    );
  }
}
