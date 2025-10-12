part of 'add_vaccination_fields.dart';

class AddVaccinationForm extends StatefulWidget {
  const AddVaccinationForm({super.key, this.id});
  final String? id;
  @override
  State<AddVaccinationForm> createState() => _AddVaccinationFormState();
}

class _AddVaccinationFormState extends State<AddVaccinationForm> {
  @override
  void initState() {
    final petId = context.read<DashboardBloc>().state.selectedPet?.id;
    context.read<VaccinationFormBloc>().add(
      VaccinationFormEvent.init(petId ?? '', widget.id),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VaccinationFormBloc, VaccinationFormState>(
      builder: (context, state) {
        return state.initStatus.loading
            ? LoadingWidget.circularProgressIndicatorCenter
            : ListView(
              padding: Styles.edgeInsetsOnlyH00,
              children: [
                CustomCard(
                  child: Column(
                    children: [
                      __VaccinationName(),
                      Styles.gap10,
                      __Company(),
                      Styles.gap10,
                      __DateAdministered(),
                      __Frequency(),
                      __DueDate(),
                      Styles.gap10,
                      __Notes(),
                      __Reminder(),
                      Styles.gap10,
                      __Media(),
                    ],
                  ),
                ),
                Styles.gap30,
                Styles.gap50,
              ],
            );
      },
    );
  }
}
