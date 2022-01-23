import 'package:flutter/material.dart';
import 'package:untitled1/security.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(flex: 6, child: Container()),
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.1),
                          child: const Text('Puja Purohit',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.1),
                      child: const Text(
                        "For You",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Textwidget("Privercy"),
                    const SizedBox(
                      height: 5,
                    ),
                    Textwidget("Terms"),
                    const SizedBox(
                      height: 5,
                    ),
                    Textwidget("Security"),
                    const SizedBox(
                      height: 5,
                    ),
                    Textwidget("FAQ"),
                    const SizedBox(
                      height: 5,
                    ),

                  ],
                )),
          ],
        ));
  }
}



class Textwidget extends StatelessWidget {
  late String text;
  Textwidget(this.text, {Key? key}) : super(key: key);

 // List<String> names = [


 // ];

  @override
  Widget build(BuildContext context) {
    return
       ListView.builder(
        shrinkWrap: true,
       itemCount: 1,
        itemBuilder: (context, index) => Container(
          margin:
          EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.1),
         child: InkWell(
            onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
               return (const SecurityPage());
              }))
            },
            child: Text(
              text,
              style: const TextStyle(fontSize: 20, color: Colors.grey),
            ),
         // ),
        ),
        )
    );
  }
}



