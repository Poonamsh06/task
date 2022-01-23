import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class TextReader extends StatefulWidget {
  const TextReader(String textPath, {Key? key}) : super(key: key);

  String get textPath => "lib/assets/text/privercy.txt";



  @override
  _TextReaderState createState() => _TextReaderState();
}

class _TextReaderState extends State<TextReader> {
  String textPath = '';

  fetchFileData() async {
    String responseText;
    responseText = await rootBundle.loadString(widget.textPath);
    setState(() {
      textPath= responseText;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    fetchFileData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Expanded(
            child: Text(
              textPath,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
