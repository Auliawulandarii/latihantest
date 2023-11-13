import 'package:get/get.dart';
import 'package:latihanpasmobile/onboarding/onboardingdesign.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SplashController extends GetxController {

  late final SharedPreferences prefs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async{
    prefs = await SharedPreferences.getInstance();
    Future.delayed(Duration(seconds: 2), () async {
      if(prefs.getString(' ') == null){
        Get.off(onboarding());
      }else{
        Get.off(onboarding());
      }
    });

  }
}