import 'package:image_picker/image_picker.dart';

class LuffyImages {
  static onePiceImage({required ImageType type}) async {
    final ImagePicker _picker = ImagePicker();
    switch (type) {
      case ImageType.CAMERA:
        final XFile? image =
            await _picker.pickImage(source: ImageSource.camera);
        return image;
      case ImageType.GALLERY:
        final XFile? photo =
            await _picker.pickImage(source: ImageSource.gallery);
        return photo;
      case ImageType.VIDEO_CAMERA:
        final XFile? image =
            await _picker.pickVideo(source: ImageSource.camera);
        return image;
      case ImageType.VIDEO_GALLERY:
        final XFile? video =
            await _picker.pickVideo(source: ImageSource.gallery);
        return video;
      case ImageType.MULTIIMAGE:
        final List<XFile>? images = await _picker.pickMultiImage();
        return images;
      default:
        final XFile? image =
            await _picker.pickImage(source: ImageSource.gallery);
        return image;
    }
  }
}

enum ImageType { GALLERY, CAMERA, VIDEO_CAMERA, VIDEO_GALLERY, MULTIIMAGE }
