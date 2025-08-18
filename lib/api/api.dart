import 'package:dummy/core/utils/app_utils.dart';

const String __dev = 'http://13.201.93.238';

const String __privateBase = '$__dev/api';
const String __publicBase = __dev;
const String __api = '$__dev/api';

//login
String sendOTP = '$__publicBase/user/send-otp/';
String register = '$__publicBase/user/register/';
//String login = '$__publicBase/login/';
String login = '$__publicBase/user/login/';
String registerAccount = '$__publicBase/account/register/';
String catBreeds = '$__publicBase/pets/cat-breeds/';
String dogBreeds = '$__publicBase/pets/dog-breeds/';
String editPet = '$__privateBase/pets/edit/';
String personalityTags = '$__publicBase/pets/personality-tags/';
String petDairyEvent = '$__privateBase/pet-diary/event-fields/';
String petDairyMedia = '$__privateBase/pet-diary/media-files/';
String petDairyDocuments = '$__privateBase/pet-diary/documents/';
String petDairyfavourites = '$__privateBase/pet-diary/media-favourites/';
//
String petcreate = '$__api/pets/create/';
String petImage = '$__api/pets/pet-image/';
String personalitytags = '$__api/pets/personality-tags/';
String catbreeds = '$__api/pets/cat-breeds/';
String dogbreeds = '$__api/pets/dog-breeds/';
String pets = '$__privateBase/pets/';
String adoptPet = '$__privateBase/adoption/pet-to-adopt/';
String allPets = '$__privateBase/adoption/all-pets-to-adopt/';
String petTypes = '$__privateBase/pets/pet-types/';

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
String overview(int id) => '$__privateBase/daily-care/overview/$id/';

//health
String medication(String? key, String? fromDate, String? toDate) {
  if (key != null && fromDate != null) {
    return '$__api/medication/?search=$key&from_date=$fromDate&to_date=$toDate';
  } else if (key != null) {
    return '$__api/medication/?search=$key';
  } else if (fromDate != null) {
    return '$__api/medication/?from_date=$fromDate&to_date=$toDate';
  } else {
    return '$__api/medication/';
  }
}

String medicationItem(int id) => '$__api/medication/item/$id/';
String medicationFrequencies = '$__api/medication/medication-frequency/';

String vaccination(String? key, String? fromDate, String? toDate) {
  if (key != null && fromDate != null) {
    return '$__api/medication/vaccinations/?search=$key&from_date=$fromDate&to_date=$toDate';
  } else if (key != null) {
    return '$__api/medication/vaccinations/?search=$key';
  } else if (fromDate != null) {
    return '$__api/medication/vaccinations/?from_date=$fromDate&to_date=$toDate';
  } else {
    return '$__api/medication/vaccinations/';
  }
}

String medicationServing(int id, String date) =>
    '$__api/medication/medication-serving/?medication=$id&date=$date';
