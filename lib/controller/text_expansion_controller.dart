import 'package:get/get.dart';

class TextExpansionController extends GetxController {
  var isExpanded = false.obs;
  void toggleExpanded() => isExpanded.value = !isExpanded.value;
}
