import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TestScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  XFile? imageFile;
  @override
  void initState() {
    super.initState();
    pickImage();
  }

  pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    // final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageFile = image;
    });
    print(image?.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text('Test app'),
            if (imageFile != null)
              Image.file(
                File(imageFile!.path!),
              )
          ],
        ),
      ),
      floatingActionButton: InkWell(
        child: Container(
          color: Colors.blue,
          height: 50,
          width: 100,
          alignment: Alignment.center,
          child: const Text('load image'),
        ),
      ),
    );
  }

  Widget cm1() {
    return Container();
  }

  Widget cm2() {
    return Container();
  }

  Widget cm3() {
    return Container();
  }
}
