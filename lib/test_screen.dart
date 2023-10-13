import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:image_picker/image_picker.dart';

class TestScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final imagePicker = ImagePicker();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              'Test app',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
                onPressed: () async {
                  final image = await imagePicker.pickImage(
                      source: ImageSource.camera,
                      preferredCameraDevice: CameraDevice.front);

                  if (image != null) {
                    final inputImage = InputImage.fromFile(File(image.path));

                    final options = FaceDetectorOptions();
                    final faceDetector = FaceDetector(options: options);

                    final List<Face> faces =
                        await faceDetector.processImage(inputImage);

                    for (Face face in faces) {
                      final Rect boundingBox = face.boundingBox;

                      final double? rotX = face
                          .headEulerAngleX; // Head is tilted up and down rotX degrees
                      final double? rotY = face
                          .headEulerAngleY; // Head is rotated to the right rotY degrees
                      final double? rotZ = face
                          .headEulerAngleZ; // Head is tilted sideways rotZ degrees

                      // If landmark detection was enabled with FaceDetectorOptions (mouth, ears,
                      // eyes, cheeks, and nose available):
                      final FaceLandmark? leftEar =
                          face.landmarks[FaceLandmarkType.leftEar];
                      if (leftEar != null) {
                        final Point<int> leftEarPos = leftEar.position;
                      }

                      // If classification was enabled with FaceDetectorOptions:
                      if (face.smilingProbability != null) {
                        final double? smileProb = face.smilingProbability;
                      }

                      // If face tracking was enabled with FaceDetectorOptions:
                      if (face.trackingId != null) {
                        final int? id = face.trackingId;
                      }
                    }
                  }
                },
                child: Text('take picture'))
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
}
