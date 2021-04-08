import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path/path.dart';

import 'package:image_picker/image_picker.dart';

class ImagePickers extends StatefulWidget {
  @override
  _ImagePickersState createState() => _ImagePickersState();
}

class _ImagePickersState extends State<ImagePickers> {
  // ignore: deprecated_member_use
  List<File> listofImages = List<File>();
  File _image;

  _imgFromCamera() async {
    var image = await ImagePicker.platform.pickImage(
        source: ImageSource.camera, imageQuality: 50);
    File selected = await File(image.path);

    setState(() {
      _image = selected;
    });
    listofImages.add(_image);
  }

  _imgFromGallery() async {
    var image = await ImagePicker.platform.pickImage(
        source: ImageSource.gallery, imageQuality: 50);
    File selected = File(image.path);

    setState(() {
      _image = selected;
    });
    listofImages.add(_image);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    increaseindexvalue();

  }

  increaseindexvalue(){
    if(listofImages.length==0){
      print("after before${listofImages.length}");
      listofImages.length= listofImages.length+1;
      print("after inc${listofImages.length}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 32,
          ),
          // GestureDetector(
          //   onTap: () {
          //     _showPicker(context);
          //   },
          //   child: CircleAvatar(
          //     radius: 55,
          //     backgroundColor: Color(0xffFDCF09),
          //     child: _image != null
          //         ? ClipRRect(
          //             borderRadius: BorderRadius.circular(50),
          //             child: Image.file(
          //               _image,
          //               width: 100,
          //               height: 100,
          //               fit: BoxFit.fitHeight,
          //             ),
          //           )
          //         : Container(
          //             decoration: BoxDecoration(
          //                color:Colors.red,
          //                 borderRadius: BorderRadius.circular(50)),
          //             width: 100,
          //             height: 100,
          //             child: Icon(
          //               Icons.camera_alt,
          //               color: Colors.grey[800],
          //             ),
          //           ),
          //   ),
          // ),

          Expanded(
              child: ListView.builder(

                  scrollDirection: Axis.horizontal,
                  itemCount: listofImages.length,
                  itemBuilder: (context, int index) {

                    if(index==listofImages.length-1){
                      return                GestureDetector(
                        onTap: () {
                          _showPicker(context);
                        },
                        child:
                        CircleAvatar(
                          radius: 55,
                          backgroundColor: Color(0xffFDCF09),
                          child: _image != null
                              ? ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.file(
                              _image,
                              width: 100,
                              height: 100,
                              fit: BoxFit.fitHeight,
                            ),
                          )
                              : Container(
                            decoration: BoxDecoration(
                                color:Colors.red,
                                borderRadius: BorderRadius.circular(50)),
                            width: 100,
                            height: 100,
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.grey[800],
                            ),
                          ),
                        ),
                      );

                    }
                    else {
                      return Container(
                        height: 100,
                        width: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:   _image!=null? Image.file(listofImages.elementAt(index+1)):Container(),
                        ),
                      );
                    }}))
        ],
      ),
    );
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }
}
