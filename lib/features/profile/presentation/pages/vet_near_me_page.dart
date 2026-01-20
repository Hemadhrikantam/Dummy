import 'package:dummy/core/constant/app_colors.dart';
import 'package:dummy/core/constant/app_text.dart';
import 'package:dummy/core/constant/styles.dart';
import 'package:dummy/core/extention/app_theme_extention.dart';
import 'package:dummy/core/widgets/buttons/app_button.dart';
import 'package:dummy/core/widgets/buttons/back_button.dart';
import 'package:dummy/core/widgets/google_map_view.dart';
import 'package:dummy/features/profile/presentation/bloc/vet_near_me/vet_near_me_bloc.dart';
import 'package:dummy/features/profile/presentation/widgets/manage_family_members/clinic_nearme_bottom_sheet.dart';
import 'package:dummy/features/profile/presentation/widgets/manage_family_members/stores_nearme_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class VetNearMePage extends StatefulWidget {
  @override
  createState() => _VetNearMePage();
  static const routeName = '/VetNearMePage';

  const VetNearMePage({super.key});

  static Route<T> route<T>() {
    return MaterialPageRoute<T>(
      builder: (context) => VetNearMePage(),
      settings: const RouteSettings(name: routeName),
    );
  }
}

class _VetNearMePage extends State<VetNearMePage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 0;
  bool _mapLoaded = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  Set<Marker> _buildMarkers(VetNearMeState state) {
    final Set<Marker> markers = {};

    final items = selectedIndex == 0 ? state.clinics : state.stores;

    for (var item in items) {
      markers.add(
        Marker(
          markerId: MarkerId(item.id.toString()),
          position: LatLng(item.latitude, item.longitude),
          infoWindow: InfoWindow(
            title: item.name,
            snippet: selectedIndex == 0 ? "Clinic" : "Store",
          ),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        ),
      );
    }
    return markers;
  }

  void _onMapLoaded() {
    if (_mapLoaded) return;
    _mapLoaded = true;
    setState(() {});
    context.read<VetNearMeBloc>().add(VetNearMeEvent.init());
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BlocBuilder<VetNearMeBloc, VetNearMeState>(
            builder: (context, state) {
              return GoogleMapView(
                onMapLoaded: _onMapLoaded,
                markers: _buildMarkers(state),
                child: Container(
                  padding: Styles.edgeInsetsAll10,
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Styles.gap30,
                        Row(
                          children: [
                            BackButtonWidget(),
                            Styles.gap8,
                            Expanded(
                              child: Text(
                                AppText.vetNearMe,
                                style: context.textTheme.titleSmall?.copyWith(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Styles.gap20,
                        Row(
                          children: [
                            Expanded(
                              child: AppButton(
                                borderColor: AppColors.stepperColor,
                                backgroundColor:
                                    selectedIndex == 0
                                        ? AppColors.stepperColor
                                        : AppColors.white,
                                name: Text(
                                  "Clincs",
                                  style: context.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color:
                                        selectedIndex == 0
                                            ? AppColors.white
                                            : AppColors.text,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    selectedIndex = 0;
                                  });
                                },
                              ),
                            ),
                            Styles.gap15,
                            Expanded(
                              child: AppButton(
                                borderColor: AppColors.stepperColor,
                                backgroundColor:
                                    selectedIndex == 1
                                        ? AppColors.stepperColor
                                        : AppColors.white,
                                name: Text(
                                  "Stores",
                                  style: context.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color:
                                        selectedIndex == 1
                                            ? AppColors.white
                                            : AppColors.text,
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    selectedIndex = 1;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Styles.gap50,
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          if (_mapLoaded)
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child:
                  selectedIndex == 0
                      ? ClinicNearMeBottomSheet()
                      : StoresNearMeBottomSheet(),
            ),
        ],
      ),
    );
  }
}
