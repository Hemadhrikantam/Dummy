part of 'ngo_home_bloc.dart';

@freezed
class NgoHomeState with _$NgoHomeState {
  const factory NgoHomeState({
    @Default(Status.init) Status initStatus,
    @Default(null) NgoProfile? profile,
    @Default(null) CountListing? count,
    @Default([]) List<Listing> listing,
    @Default([]) List<Listing> allPets,
  }) = _NgoHomeState;
}
