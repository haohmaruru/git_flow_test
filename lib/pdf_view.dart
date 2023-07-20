// import 'package:flutter/material.dart';
// import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
//
// class PdfScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Container(
//             color: Colors.red,
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             height: 800,
//             child: PDF().cachedFromUrl(
//               'https://storage.test.finos.asia/finos-public-test-bucket-statics-resource/mock/hdb/CN01.pdf?Content-Disposition=attachment%3B%20filename%3D%22mock%2Fhdb%2FCN01.pdf%22&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=MINIO_ACCESS_KEY%2F20230629%2F%2Fs3%2Faws4_request&X-Amz-Date=20230629T064817Z&X-Amz-Expires=432000&X-Amz-SignedHeaders=host&X-Amz-Signature=4a771e322ddf74b2a553afdb9defa6397835e06c545e8c8e9b811c2504415ee3',
//               placeholder: (progress) => Center(child: Text('$progress %')),
//               errorWidget: (error) => Center(child: Text(error.toString())),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
