
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:fish_feeds_app/features/authentication/screens/login/login.dart';

class OnboardingController extends GetxController{

  static OnboardingController get instance => Get.find();

  //Variables
  final pageController = PageController();
  RxInt currentIndex = 0.obs;

  //Update current index when page scroll
void updatePageIndicator(index) {
  currentIndex.value = index;
}

  //Jump to specific dot selected page
void dotNavigationClick(index){
   currentIndex.value = index;
   pageController.jumpToPage(index);
}

  //Update current index and jump to the next page
void nextPage(){
  if(currentIndex.value == 2){
    Get.offAll(() => LoginScreen());
    return;
  }
  currentIndex.value++;
  pageController.jumpToPage(currentIndex.value);
}


  //Update current index and jump to the last page
void skipPage(){
   currentIndex.value = 2;
   pageController.jumpToPage(currentIndex.value);
}

}