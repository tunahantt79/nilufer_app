import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nilufer_app/home/info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SizedBox(
            height: size.height * 1,
            width: size.width * 1,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300),
            child: StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection('items').snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const LinearProgressIndicator();
                  }
                  // gridview ile yap
                  if (snapshot.hasError) {
                    debugPrint('errrorrr ${snapshot.error}');
                  }
                  return ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      DocumentSnapshot ds = snapshot.data!.docs[index];
                      return GestureDetector(
                        onTap: () => Navigator.of(
                          context,
                        ).push(
                            CupertinoPageRoute(builder: (BuildContext context) {
                          return InfoPage();
                        })),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withAlpha(110)),
                            height: size.height * 0.11,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.all(25.0),
                                    child: Image.network(
                                      data[index]['icon'],
                                      height: size.height * 0.08,
                                      width: size.width * 0.1,
                                    )),
                                Text(
                                  ds.id.toString(),
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            )),
                      );
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
