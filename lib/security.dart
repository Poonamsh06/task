import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/textReader.dart';


class SecurityPage extends StatefulWidget {
  const SecurityPage({Key? key}) : super(key: key);

  @override
  _SecurityPageState createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            // const Align(
            // alignment: Alignment.center,
            //),
            Center(
              child: Container(

                height: 230,
                width: MediaQuery.of(context).size.width * 0.45,
                margin: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  //  boxShadow:[BoxShadow(offset: Offset(0.0,6.0),
                    borderRadius: BorderRadius.circular(16.0),
                    color: Colors.white,
                    image: const DecorationImage(
                      image: AssetImage("lib/assets/images/security.jpg"),
                      fit: BoxFit.fill,
                    )),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: Text(
                      "Security @ Pujapurohit",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ),
                ),
              ),
            ),
          ]),
          const Expanded(child: TextReader("lib/assets/text/privercy.txt")),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20)),
              onPressed: () {},

              child: const Text(
                "Submit a bug report",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              )
          )
        ],
      ),

    );
  }
}
