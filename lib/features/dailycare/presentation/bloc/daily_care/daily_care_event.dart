part of 'daily_care_bloc.dart';

@freezed
class DailyCareEvent with _$DailyCareEvent {
  const factory DailyCareEvent.init() = _Init;
  const factory DailyCareEvent.changePageIndex(int index) = _ChangePageIndex;
}
