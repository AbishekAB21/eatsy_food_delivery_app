
import 'package:image_picker/image_picker.dart';

pickImage(ImageSource source) async{
  ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: source);

  if(_file != null){
    return _file.readAsBytes();
  }
  print("No Image Found");
}