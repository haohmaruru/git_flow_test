// import 'dart:convert';
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// class WebviewPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _WebviewPageState();
// }
//
// class _WebviewPageState extends State<WebviewPage> {
//   WebViewController? _webViewController;
//
//   @override
//   void initState() {
//     super.initState();
//     initWebView();
//     loadWebview();
//   }
//
//   loadWebview() async {
//     String fileText = await rootBundle.loadString('assets/html/test.html');
//     // _webViewController?.loadRequest(Uri.parse('https://flutter.dev'));
//     _webViewController?.loadRequest(Uri.dataFromString(fileText,
//         mimeType: 'text/html', encoding: Encoding.getByName('utf-8')));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers = {
//       Factory(() => EagerGestureRecognizer())
//     };
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: WebViewWidget(
//         controller: _webViewController!,
//         gestureRecognizers: gestureRecognizers,
//       ),
//       // body: PdfScreen(),
//     );
//   }
//
//   initWebView() {
//     _webViewController = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       // ..setBackgroundColor(const Color(0x00000000))
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int progress) {
//             // Update loading bar.
//             print('onProgress');
//           },
//           onPageStarted: (String url) {
//             print('onPageStarted');
//           },
//           onPageFinished: (String url) {
//             print('onPageFinished');
//           },
//           onWebResourceError: (WebResourceError error) {
//             print('onWebResourceError');
//           },
//           onNavigationRequest: (NavigationRequest request) {
//             print('onNavigationRequest ${request.url}');
//             return NavigationDecision.navigate;
//           },
//         ),
//       );
//   }
// }
