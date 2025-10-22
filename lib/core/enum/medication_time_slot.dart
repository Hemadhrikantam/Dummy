enum MedicationTimeSlot { Afternoon, Morning, Evening, Night }

extension MedicationTimeSlotStringX on String {
  MedicationTimeSlot toMedicationTimeSlotEnum() {
    switch (trim().toLowerCase()) {
      case 'afternoon':
        return MedicationTimeSlot.Afternoon;
      case 'morning':
        return MedicationTimeSlot.Morning;
      case 'evening':
        return MedicationTimeSlot.Evening;
      case 'night':
        return MedicationTimeSlot.Night;
      default:
        throw ArgumentError('Invalid MedicationTimeSlot value: $this');
    }
  }
}