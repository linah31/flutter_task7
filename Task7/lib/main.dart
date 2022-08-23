import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  Future getimg(ImageSource source) async{
    final image= await ImagePicker().pickImage(source:source);
    if(image==null) return;

    final imgtmp=File(image.path);

    setState(() {
      this._image=imgtmp;

    });
  }
  File? _image;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


Widget picbtns({
  required String title,
  required IconData icon,
  required VoidCallback onclick,
}){


  return Container(
    width: 280,
    child:  ElevatedButton(
      onPressed: onclick,
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 20,
          ),
          Text(title),

        ],

      ),
    ),
  );
}