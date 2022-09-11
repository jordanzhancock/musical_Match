// import 'package:flutter/material.dart';
// class ImageConfig {
//   String source;
//   String path;

//   ImageConfig({this.source, this.path});
// }

// class _MyHomePageState extends State<MyHomePage> {
//   List<ImageConfig> imgList = [
//     ImageConfig(
//         source: "http",
//         path:
//             'https://cdn.pixabay.com/photo/2016/04/15/08/04/strawberries-1330459_960_720.jpg'),
//    ...          
//    Future getImage() async {
//     final pickedFile = await picker.getImage(source: ImageSource.gallery);

//     setState(() {
//       imgList.add(ImageConfig(source: "file", path: pickedFile.path));
//     });
//   }