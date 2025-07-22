part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.dashboardPets() = _DashboardPetDetails;
  const factory DashboardEvent.selectedPet(DashboardPetDetails selectedPet) = _SelectedPet;
  const factory DashboardEvent.petName(String petName) = _PetName;
  const factory DashboardEvent.petImage(String petImage) = _PetImage;
  const factory DashboardEvent.selectedPetId(int selectedPetId) = _SelectedPetId;
}