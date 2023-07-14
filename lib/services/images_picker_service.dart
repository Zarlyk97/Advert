import 'package:image_picker/image_picker.dart';

class ImagePickerServis {
  final ImagePicker _picker = ImagePicker();

  Future<List<XFile>?> pickImages() async {
    final image = await _picker.pickMultiImage(imageQuality: 5);
    return image;
  }
}
