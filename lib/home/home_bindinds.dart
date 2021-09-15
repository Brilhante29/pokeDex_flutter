import 'package:project/shared/rest_client.dart';
import 'package:get/get.dart';

class HomeBindinds implements Bindings {
  @override
  void dependencies() {
    Get.put(RestClient());
  }
}
