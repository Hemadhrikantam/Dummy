import 'package:bloc/bloc.dart';
import 'package:dummy/core/enum/status.dart';
import 'package:dummy/features/dashboard/domain/entities/notification.dart';
import 'package:dummy/features/dashboard/domain/usecases/notifications_usecases.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'notifications_event.dart';
part 'notifications_state.dart';
part 'notifications_bloc.freezed.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc({required NotificationsUsecases notificationsUsecases})
    : _notificationsUsecases = notificationsUsecases,
      super(NotificationsState()) {
    on<_Init>(__init);
    on<_GetNotifications>(__getNotifications);
  }
  final NotificationsUsecases _notificationsUsecases;
  void __init(_Init event, Emitter<NotificationsState> emit) {}

  Future<void> __getNotifications(
    _GetNotifications event,
    Emitter<NotificationsState> emit,
  ) async {
    emit(state.copyWith(initStatus: Status.loading));
    final result = await _notificationsUsecases();
    result.fold(
      (l) => emit(state.copyWith(initStatus: Status.error)),
      (r) => emit(state.copyWith(notifications: r, initStatus: Status.success)),
    );
    emit(state.copyWith(initStatus: Status.init));
  }
}
