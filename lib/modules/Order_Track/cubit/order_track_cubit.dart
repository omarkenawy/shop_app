import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shop_app/global/services/mapServices.dart';

part 'order_track_state.dart';

class OrderTrackCubit extends Cubit<OrderTrackState> {
  OrderTrackCubit() : super(OrderTrackState(markes: const {}));

  final MapService _mapService = MapService();
  late GoogleMapController controller;

  void setGoogleMapController(GoogleMapController controller) async {
    this.controller = controller;

    await getUserLocation();
  }

  Future<void> getUserLocation() async {
    final userPostion = await _mapService.getUserLocation();
    if (userPostion != null) {
      emit(state.copyWith(userPostion: userPostion));
      log(userPostion.latitude.toString());
      log(userPostion.longitude.toString());

      changeLocaiton(LatLng(userPostion.latitude, userPostion.longitude));
    }
  }

  void addNewMarker(LatLng newLocation) {
    // final Marker newMarker =
    //     Marker(markerId: const MarkerId('0'), position: newLocation);

    // var markers = state.markes;
    // markers.add(newMarker);

    // emit(state.copyWith(markes: markers));
  }

  void changeLocaiton(LatLng newLocation) {
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: newLocation, zoom: 5),
      ),
    );
    addNewMarker(newLocation);
  }
}
