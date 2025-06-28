part of 'walks_bloc.dart';

@freezed
class WalksEvent with _$WalksEvent {
  const factory WalksEvent.init() = _Init;
  const factory WalksEvent.walks(DateTime? date) = _Walks;
}
