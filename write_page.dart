import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WritePage extends StatefulWidget {
  const WritePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<WritePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController essayController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: Text(
          "It's Your Life, Make It Small",
          style: GoogleFonts.glassAntiqua(
              textStyle: const TextStyle(fontSize: 35, color: Colors.white)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your name:',
              style: GoogleFonts.glassAntiqua(
                  textStyle: const TextStyle(fontSize: 30)),
            ),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Your name...not that anime',
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Write an essay about your life:',
              style: GoogleFonts.glassAntiqua(
                  textStyle: const TextStyle(fontSize: 30)),
            ),
            const SizedBox(height: 12.0),
            Expanded(
              child: TextField(
                controller: essayController,
                maxLines: null,
                expands: true,
                textAlignVertical: TextAlignVertical.top,
                decoration: const InputDecoration(
                  hintText: 'Start writing your essay...please keep it small',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.zero)),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: () {
                  // You can access the entered name and essay using:
                  String name = nameController.text;
                  String essay = essayController.text;
              
                  // Now you can use 'name' and 'essay' as needed.
                  // For example, you can print them:
                  print('Name: $name');
                  print('Essay: $essay');
                },
                child: Text(
                  'Submit',
                  style: GoogleFonts.kings(
                      textStyle:
                          TextStyle(fontSize: 35, color: Colors.grey.shade900)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
