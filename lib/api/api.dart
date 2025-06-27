import 'package:dummy/core/utils/app_utils.dart';

const String __dev = 'http://13.233.100.253';

const String __privateBase = '$__dev/api';
const String __publicBase = '$__dev';
const String __api = '$__dev/api';

//login
String sendOTP = '$__publicBase/user/send-otp/';
String register = '$__publicBase/user/register/';
//String login = '$__publicBase/login/';
String login = '$__publicBase/user/login/';
String registerAccount = '$__publicBase/account/register/';
String catBreeds = '$__publicBase/pets/cat-breeds/';
String dogBreeds = '$__publicBase/pets/dog-breeds/';
String personalityTags = '$__publicBase/pets/personality-tags/';
String petDairyEvent = '$__privateBase/pet-diary/event-fields/';
String petDairyMedia = '$__privateBase/pet-diary/media-files/';
String petDairyDocuments = '$__privateBase/pet-diary/documents/';
//
String petcreate = '$__api/pets/create/';
String petImage = '$__api/pets/pet-image/';
String personalitytags = '$__api/pets/personality-tags/';
String catbreeds = '$__api/pets/cat-breeds/';
String dogbreeds = '$__api/pets/dog-breeds/';
String pets = '$__privateBase/pets/';
//daily care
String meals(DateTime? date) {
  if (date != null) {
    return '$__api/daily-care/meals/?date=${AppUtil.formatDate(date)}';
  } else {
    return '$__api/daily-care/meals/';
  }
}

String walks(DateTime? date) {
  if (date != null) {
    return '$__api/daily-care/walks/?date=${AppUtil.formatDate(date)}';
  } else {
    return '$__api/daily-care/walks/';
  }
}

String addMeal = '$__api/daily-care/meals/';
String addWalk = '$__api/daily-care/walks/';
