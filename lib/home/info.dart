import 'package:flutter/material.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  late WebViewPlusController controller;
  double _height = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.phone),
          )
        ],
      ),
      body: WebViewPlus(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://www.nilufer.bel.tr/haberler',
        onWebViewCreated: (controller) {
          this.controller = controller;
          controller.loadUrl('https://www.nilufer.bel.tr/haberler');
        },
      ),
    );
  }
}

List<Map<String, dynamic>> data = const [
  {
    'icon':
        'https://firebasestorage.googleapis.com/v0/b/nilufer-app.appspot.com/o/document.png?alt=media&token=efbdd26c-d3a6-418c-806d-83302c895f84'
  },
  {
    'icon':
        'https://firebasestorage.googleapis.com/v0/b/nilufer-app.appspot.com/o/document.png?alt=media&token=efbdd26c-d3a6-418c-806d-83302c895f84'
  },
  {
    'icon':
        'https://firebasestorage.googleapis.com/v0/b/nilufer-app.appspot.com/o/document.png?alt=media&token=efbdd26c-d3a6-418c-806d-83302c895f84'
  },
  {
    'icon':
        'https://firebasestorage.googleapis.com/v0/b/nilufer-app.appspot.com/o/document.png?alt=media&token=efbdd26c-d3a6-418c-806d-83302c895f84'
  },
  {
    'icon':
        'https://firebasestorage.googleapis.com/v0/b/nilufer-app.appspot.com/o/document.png?alt=media&token=efbdd26c-d3a6-418c-806d-83302c895f84'
  },
  {
    'icon':
        'https://firebasestorage.googleapis.com/v0/b/nilufer-app.appspot.com/o/document.png?alt=media&token=efbdd26c-d3a6-418c-806d-83302c895f84'
  },
  {
    'icon':
        'https://firebasestorage.googleapis.com/v0/b/nilufer-app.appspot.com/o/document.png?alt=media&token=efbdd26c-d3a6-418c-806d-83302c895f84'
  },
  {
    'icon':
        'https://firebasestorage.googleapis.com/v0/b/nilufer-app.appspot.com/o/document.png?alt=media&token=efbdd26c-d3a6-418c-806d-83302c895f84'
  },
  {
    'icon':
        'https://firebasestorage.googleapis.com/v0/b/nilufer-app.appspot.com/o/document.png?alt=media&token=efbdd26c-d3a6-418c-806d-83302c895f84'
  },
  {
    'icon':
        'https://firebasestorage.googleapis.com/v0/b/nilufer-app.appspot.com/o/document.png?alt=media&token=efbdd26c-d3a6-418c-806d-83302c895f84'
  },
  // {'icon': 'assets/images/home.png'},
  // {'icon': 'assets/images/document.png'},
  // {'icon': 'assets/images/document.png'},
  // {'icon': 'assets/images/home.png'},
  // {'icon': 'assets/images/document.png'},
  // {'icon': 'assets/images/document.png'},
  // {'icon': 'assets/images/home.png'},
  // {'icon': 'assets/images/document.png'},
  // {'icon': 'assets/images/document.png'},
];
