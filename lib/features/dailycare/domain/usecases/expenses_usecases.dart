import 'package:dummy/core/utils/type_def.dart';

import '../entities/expense.dart';
import '../repositories/daily_care_repository.dart';

class ExpensesUsecases {
  ExpensesUsecases(this.dailyCareRepository);
  final DailyCareRepository dailyCareRepository;

  AppTypeResponse<List<PetExpense>> call(DateTime? date) {
    return dailyCareRepository.expenses(date);
  }
}
