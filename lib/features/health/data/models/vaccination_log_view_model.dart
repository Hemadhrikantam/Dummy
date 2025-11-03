import '../../domain/entities/vaccination_log_view.dart';

class VaccinationLogViewModel extends VaccinationLogView {
  const VaccinationLogViewModel({
    required super.logs,
    required super.counts,
  });

  factory VaccinationLogViewModel.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> logsJson =
        (json['logs'] as Map<String, dynamic>?) ?? const {};
    final Map<String, dynamic> countsJson =
        (json['counts'] as Map<String, dynamic>?) ?? const {};

    final administered = _parseAdministered(logsJson['administered']);
    final missed = _parseMissed(logsJson['missed']);
    final future = _parseFuture(logsJson['future']);

    final logs = VaccinationLogs(
      administered: administered,
      missed: missed,
      future: future,
    );

    final counts = VaccinationCounts(
      administered: _int(countsJson['administered']),
      missed: _int(countsJson['missed']),
      future: _int(countsJson['future']),
    );

    return VaccinationLogViewModel(logs: logs, counts: counts);
  }

  static List<AdministeredVaccinationLog> _parseAdministered(dynamic v) {
    if (v is! List) return const [];
    return v
        .whereType<Map<String, dynamic>>()
        .map((e) => AdministeredVaccinationLog(
              id: _str(e['id']) ?? '',
              vaccinationId: _str(e['vaccination_id']) ?? '',
              scheduledDate: _dt(e['scheduled_date']),
              administeredAt: _dt(e['administered_at']) ?? DateTime.fromMillisecondsSinceEpoch(0),
              administeredBy: _str(e['administered_by']) ?? '',
              notes: _optStr(e['notes']),
              status: _str(e['status']) ?? '',
            ))
        .toList();
  }

  static List<MissedVaccinationLog> _parseMissed(dynamic v) {
    if (v is! List) return const [];
    return v
        .whereType<Map<String, dynamic>>()
        .map((e) => MissedVaccinationLog(
              vaccinationId: _str(e['vaccination_id']) ?? '',
              scheduledDate: _dt(e['scheduled_date']) ?? DateTime.fromMillisecondsSinceEpoch(0),
              status: _str(e['status']) ?? '',
            ))
        .toList();
  }

  static List<FutureVaccinationLog> _parseFuture(dynamic v) {
    if (v is! List) return const [];
    return v
        .whereType<Map<String, dynamic>>()
        .map((e) => FutureVaccinationLog(
              vaccinationId: _str(e['vaccination_id']) ?? '',
              scheduledDate: _dt(e['scheduled_date']) ?? DateTime.fromMillisecondsSinceEpoch(0),
              status: _str(e['status']) ?? '',
            ))
        .toList();
  }

  static DateTime? _dt(dynamic v) {
    if (v == null) return null;
    if (v is String && v.isEmpty) return null;
    return DateTime.parse(v as String);
  }

  static int _int(dynamic v) {
    if (v == null) return 0;
    if (v is int) return v;
    if (v is String && v.isNotEmpty) return int.tryParse(v) ?? 0;
    return 0;
  }

  static String? _str(dynamic v) => v == null ? null : (v as String?);
  static String? _optStr(dynamic v) {
    if (v == null) return null;
    final s = v as String?;
    if (s == null || s.isEmpty) return null;
    return s;
  }
}