part of 'add_vaccination_fields.dart';

class AddVaccinationForm extends StatelessWidget {
  const AddVaccinationForm({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return CustomCard(
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: bottomInset),
            child: ListView(
              padding: Styles.edgeInsetsOnlyH00,
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
                Styles.gap100,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
