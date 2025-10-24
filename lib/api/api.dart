import 'package:dummy/core/utils/app_utils.dart';

const String __dev = 'https://staging.doommi.com';

const String __privateBase = '$__dev/api';
const String __publicBase = __dev;
const String __api = '$__dev/api';

//login
String sendOTP = '$__publicBase/user/send-otp/';
String register = '$__publicBase/user/register/';
//String login = '$__publicBase/login/';
String login = '$__api/auth/check';
String enums = '$__api/enums';
//
String registerAccount = '$__publicBase/account/register/';
String catBreeds = '$__publicBase/pets/cat-breeds/';
String dogBreeds = '$__publicBase/pets/dog-breeds/';
String editPet = '$__api/account/pets';
String personalityTags = '$__publicBase/pets/personality-tags/';
String petDairyEvent = '$__privateBase/pet-diary/event-fields/';
String petDairyMedia = '$__privateBase/pet-diary/media-files/';
String petDairyDocuments = '$__privateBase/pet-diary/documents/';
String petDairyfavourites = '$__privateBase/pet-diary/media-favourites/';
//
String petcreate = '$__api/auth/onboarding/pet-parent';
String petImage = '$__api/pets/pet-image/';
String personalitytags = '$__api/pets/personality-tags/';
String catbreeds = '$__api/pets/cat-breeds/';
String dogbreeds = '$__api/pets/dog-breeds/';
String pets = '$__api/account/pets';
// NGO onboarding
String ngoOnboarding = '$__api/auth/onboarding/ngo';
String petListing = '$__api/adoption/listings';
// NGO profile
String ngoProfile = '$__api/account/ngo/profile';
String adoptPet = '$__privateBase/adoption/pet-to-adopt/';
String allPets = '$__privateBase/adoption/all-pets-to-adopt/';
String petTypes = '$__privateBase/pets/pet-types/';

//daily care
String meals() {
  return '$__api/dailycare/meals';
}

String mealItem(String id) => '$__api/dailycare/meals/$id';

String walks() {
  return '$__api/dailycare/walks';
}

String groomings(DateTime? date) {
  if (date != null) {
    return '$__api/daily-care/groomings/?date=${AppUtil.formatDate(date)}';
  } else {
    return '$__api/daily-care/groomings/';
  }
}

String dewormings(DateTime? date) {
  if (date != null) {
    return '$__api/daily-care/deworming/?date=${AppUtil.formatDate(date)}';
  } else {
    return '$__api/daily-care/deworming/';
  }
}

String expenses(DateTime? date) {
  if (date != null) {
    return '$__api/daily-care/expense/?date=${AppUtil.formatDate(date)}';
  } else {
    return '$__api/daily-care/expense/';
  }
}

String frequencies = '$__api/daily-care/deworming-frequency/';
String remindBefores = '$__api/daily-care/remind-before/';
String timezones = '$__api/daily-care/timezone/';
String overview(String id) => '$__api/dailycare/overview?pet_id=$id';

//health
String medication(String? key, String? fromDate, String? toDate) {
  if (key != null && fromDate != null) {
    return '$__api/medications/?search=$key&from_date=$fromDate&to_date=$toDate';
  } else if (key != null) {
    return '$__api/medications/?search=$key';
  } else if (fromDate != null) {
    return '$__api/medications/?from_date=$fromDate&to_date=$toDate';
  } else {
    return '$__api/medications/';
  }
}

String medicationItem(String id) => '$__api/medications/$id/';
String medicationFrequencies = '$__api/medication/medication-frequency/';

String vaccination(String? key, String? fromDate, String? toDate) {
  if (key != null && fromDate != null) {
    return '$__api/vaccinations?search=$key&from_date=$fromDate&to_date=$toDate';
  } else if (key != null) {
    return '$__api/vaccinations?search=$key';
  } else if (fromDate != null) {
    return '$__api/vaccinations?from_date=$fromDate&to_date=$toDate';
  } else {
    return '$__api/vaccinations';
  }
}

String vaccinationItem(String id) => '$__api/vaccinations/$id';
String vaccinationLogs = '$__api/vaccinations/logs';
String vaccinationLogItem(String id) => '$__api/vaccinations/logs/$id';

String medicationServing(String id, String date) =>
    '$__api/medication/medication-serving/?medication=$id&date=$date';

// device
String registerDevice = '$__api/auth/device';
String publicPresign = '$__api/upload/public/presign';
String presign = '$__api/upload/presign';
