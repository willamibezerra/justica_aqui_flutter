import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebbArgs {
  final String title;
  final String url;
  const WebbArgs({required this.title, required this.url});
}

class InAppWebviewPage extends StatefulWidget {
  const InAppWebviewPage({
    Key? key,
  }) : super(key: key);

  @override
  _InAppWebviewPageState createState() => _InAppWebviewPageState();
}

class _InAppWebviewPageState extends State<InAppWebviewPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as WebbArgs;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        backgroundColor: const Color(0xff8471E3),
      ),
      body: InAppWebView(
        onTitleChanged: (controller, title) {
          setState(() {
            count++;
          });
        },
        initialUrlRequest: URLRequest(
          url: Uri.parse(args.url),
        ),
      ),
    );
  }
}
