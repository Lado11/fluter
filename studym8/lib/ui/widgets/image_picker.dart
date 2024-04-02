// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// class ImagePickerScreen extends StatefulWidget {
//   const ImagePickerScreen({super.key});
//
//   @override
//   State<ImagePickerScreen> createState() => _ImagePickerScreenState();
// }
//
// class _ImagePickerScreenState extends State<ImagePickerScreen> {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Example of Image Picker in flutter'),
//       ),
//       body: Center(
//         child: _image == null
//             ? const Text('No image selected.')
//             :  CircleAvatar(
//           radius: 100,
//           backgroundImage:  Image.file(File(_image!.path)).image
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: getImage,
//         tooltip: 'Pick Image',
//         child: const Icon(Icons.add_a_photo),
//       ),
//     );
//   }
//
//
// }
