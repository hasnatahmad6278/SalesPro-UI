import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class imagepicker extends StatefulWidget {
  const imagepicker({Key? key}) : super(key: key);

  @override
  State<imagepicker> createState() => _imagepickerState();

}

class _imagepickerState extends State<imagepicker> {
  File?_image;
  Future getimage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if(image == null) return;
    final imagetemporary = File(image.path);
    setState((){
      this._image = imagetemporary;
    });
  }
  Future cameraimage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if(image == null) return;
    final imagetemporary = File(image.path);
    setState((){
      this._image = imagetemporary;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Expanded(
        child: InkWell(
          onTap: (){
            getimage();
          },
        )
      )
    );
  }
}
