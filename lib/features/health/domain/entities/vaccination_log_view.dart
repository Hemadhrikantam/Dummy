import 'package:equatable/equatable.dart';

class VaccinationLogView extends Equatable {
  final VaccinationLogs logs;
  final VaccinationCounts counts;

  const VaccinationLogView({
    required this.logs,
    required this.counts,
  });

  @override
  List<Object?> get props => [logs, counts];
}

class VaccinationLogs extends Equatable {
  final List<AdministeredVaccinationLog> administered;
  final List<MissedVaccinationLog> missed;
  final List<FutureVaccinationLog> future;

  const VaccinationLogs({
    this.administered = const [],
    this.missed = const [],
    this.future = const [],
  });

  @override
  List<Object?> get props => [administered, missed, future];
}

class AdministeredVaccinationLog extends Equatable {
  final String id;
  final String vaccinationId;
  final DateTime? scheduledDate;
  final DateTime administeredAt;
  final String administeredBy;
  final String? notes;
  final String status; // "administered"

  const AdministeredVaccinationLog({
    required this.id,
    required this.vaccinationId,
    this.scheduledDate,
    required this.administeredAt,
    required this.administeredBy,
    this.notes,
    required this.status,
  });

  @override
  List<Object?> get props => [
    id,
    vaccinationId,
    scheduledDate,
    administeredAt,
    administeredBy,
    notes,
    status,
  ];
}

class MissedVaccinationLog extends Equatable {
  final String vaccinationId;
  final DateTime scheduledDate;
  final String status; // "missed"

  const MissedVaccinationLog({
    required this.vaccinationId,
    required this.scheduledDate,
    required this.status,
  });

  @override
  List<Object?> get props => [vaccinationId, scheduledDate, status];
}

class FutureVaccinationLog extends Equatable {
  final String vaccinationId;
  final DateTime scheduledDate;
  final String status; // "upcoming"

  const FutureVaccinationLog({
    required this.vaccinationId,
    required this.scheduledDate,
    required this.status,
  });

  @override
  List<Object?> get props => [vaccinationId, scheduledDate, status];
}

class VaccinationCounts extends Equatable {
  final int administered;
  final int missed;
  final int future;

  const VaccinationCounts({
    required this.administered,
    required this.missed,
    required this.future,
  });

  @override
  List<Object?> get props => [administered, missed, future];
}