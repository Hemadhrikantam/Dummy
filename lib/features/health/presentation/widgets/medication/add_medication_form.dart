part of 'add_medication_fields.dart';

class AddMedicationForm extends StatefulWidget {
  const AddMedicationForm({super.key, this.id});
  final String? id;
  @override
  State<StatefulWidget> createState() => _AddMedicationForm();
}

class _AddMedicationForm extends State<AddMedicationForm> {
  @override
  void initState() {
    final petId = context.read<DashboardBloc>().state.selectedPet?.id;
    context.read<MedicationFormBloc>().add(
      MedicationFormEvent.init(petId ?? '',widget.id),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MedicationFormBloc, MedicationFormState>(
      builder: (context, state) {
        return state.initStatus.loading
            ? LoadingWidget.circularProgressIndicatorCenter
            : ListView(
              padding: Styles.edgeInsetsOnlyH00,
              children: [
                CustomCard(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [__Remainder()],
                      ),
                      Styles.gap10,
                      __TabletName(),
                      Styles.gap10,
                      __Company(),
                      Styles.gap10,
                      __Dosage(),
                      Styles.gap10,
                      __Morning(),
                      Styles.gap10,
                      __Afternoon(),
                      Styles.gap10,
                      __Night(),
                      Styles.gap10,
                      if ((state.morningTimeHour.isValid &&
                              state.morningTimeMin.isValid) ||
                          (state.afternoonTimeHour.isValid &&
                              state.afternoonTimeMin.isValid) ||
                          (state.nightTimeHour.isValid &&
                              state.nightTimeMin.isValid))
                        TotalDosage(),
                      __Frequency(),
                      Styles.gap10,
                      __StartDate(),
                      Styles.gap10,
                      __EndDate(),
                      Styles.gap10,
                      __Notes(),
                      Styles.gap10,
                      __Media(),
                    ],
                  ),
                ),
                Styles.gap100,
              ],
            );
      },
    );
  }
}
