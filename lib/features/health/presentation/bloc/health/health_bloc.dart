import 'package:dummy/di/injection.dart';
import 'package:dummy/features/dashboard/presentation/bloc/dashboard/dashboard_bloc.dart';
import 'package:dummy/features/health/domain/entities/ai_insight.dart';
import 'package:dummy/features/health/domain/usecases/ai_insights_usecases.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'health_event.dart';
part 'health_state.dart';
part 'health_bloc.freezed.dart';

class HealthBloc extends Bloc<HealthEvent, HealthState> {
  HealthBloc({required AiInsightsUsecases aiInsightsUsecases})
    : _aiInsightsUsecases = aiInsightsUsecases,
      super(HealthState()) {
    on<_Init>(__init);
    on<_ChangePageIndex>(__changePageIndex);
    on<_GetAiInsights>(__getAiInsights);
  }
  final AiInsightsUsecases _aiInsightsUsecases;

  void __init(_Init event, Emitter<HealthState> emit) {
    emit(state.copyWith(pageIndex: 0));
  }

  void __changePageIndex(_ChangePageIndex event, Emitter<HealthState> emit) {
    emit(state.copyWith(pageIndex: event.index));
  }

  void __getAiInsights(_GetAiInsights event, Emitter<HealthState> emit) async {
    final result = await _aiInsightsUsecases(
      petId: currentContext.read<DashboardBloc>().state.selectedPet?.id ?? '',
    );
    result.fold(
      (error) => emit(state.copyWith(aiInsights: null)),
      (success) => emit(state.copyWith(aiInsights: success)),
    );
  }
}
