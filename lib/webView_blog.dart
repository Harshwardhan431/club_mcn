import 'package:flutter/material.dart';
import 'package:club_network/webView_blog.dart';
import 'package:webview_flutter/webview_flutter.dart';
class WebViewBlog extends StatelessWidget {
  late String blog_url;
  late String title;
  WebViewBlog({required this.blog_url,required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$title',
        )
      ),
      body: WebView(
        initialUrl: '$blog_url',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
