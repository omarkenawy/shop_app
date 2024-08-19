import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shop_app/index.dart';
import 'package:shop_app/modules/Order_Track/cubit/order_track_cubit.dart';

class OrderTrack extends StatefulWidget {
  const OrderTrack({super.key});

  @override
  State<OrderTrack> createState() => _OrderTrackState();
}

class _OrderTrackState extends State<OrderTrack> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrderTrackCubit(),
      child: Scaffold(
        appBar: const CustomAppBar(
          tittle: "Track order",
          showbBackButton: true,
        ),
        body: BlocBuilder<OrderTrackCubit, OrderTrackState>(
          builder: (context, state) => state.isLoading
              ? const CircularProgressIndicator()
              : GoogleMap(
                  markers: state.markes,
                  onTap: (newLocation) => context
                      .read<OrderTrackCubit>()
                      .changeLocaiton(newLocation),
                  onMapCreated: (googleMapController) async => context
                      .read<OrderTrackCubit>()
                      .setGoogleMapController(googleMapController),
                  initialCameraPosition: const CameraPosition(
                      target: LatLng(
                    29.977272,
                    31.251895,
                  ))),
        ),

        // Padding(
        //   padding: const EdgeInsets.only(bottom: 25.0),
        //   child: Stack(
        //     children: [
        //       Column(
        //         children: [
        //           BlocBuilder<OrderTrackCubit, OrderTrackState>(
        //             builder: (context, state) {
        //               return Container(
        //                 height: 442,
        //                 width: double.maxFinite,
        //                 decoration: const BoxDecoration(
        //                     color: Colors.grey,
        //                     borderRadius: BorderRadius.only(
        //                       bottomLeft: Radius.circular(15),
        //                       bottomRight: Radius.circular(15),
        //                     )),
        //                 child: GoogleMap(
        //                     markers: state.markes,
        //                     onTap: (newLocation) => context
        //                         .read<OrderTrackCubit>()
        //                         .changeLocaiton(newLocation),
        //                     onMapCreated: (googleMapController) async => context
        //                         .read<OrderTrackCubit>()
        //                         .setGoogleMapController(googleMapController),
        //                     initialCameraPosition: const CameraPosition(
        //                         target: LatLng(
        //                       29.977272,
        //                       31.251895,
        //                     ))),
        //               );
        //             },
        //           )
        //         ],
        //       ),
        //       Positioned(
        //           top: 15,
        //           left: 15,
        //           right: 15,
        //           child: Container(
        //               height: 40,
        //               width: 345,
        //               decoration: BoxDecoration(
        //                   color: Colors.green,
        //                   borderRadius: BorderRadius.circular(6),
        //                   border:
        //                       Border.all(width: 1, color: Constans.greenColor)),
        //               child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Row(
        //                       children: [
        //                         SvgPicture.asset(
        //                           'assets/svgs/verified-svgrepo-com.svg',
        //                           height: 20,
        //                           width: 20,
        //                           color: Colors.white,
        //                         ),
        //                         const SizedBox(
        //                           width: 10,
        //                         ),
        //                         const Text(
        //                           'Order Status:',
        //                           style: TextStyle(
        //                               color: Colors.white,
        //                               fontSize: 14,
        //                               fontWeight: FontWeight.w600),
        //                         )
        //                       ],
        //                     ),
        //                     const Text(
        //                       "Delivered",
        //                       style: TextStyle(
        //                         color: Colors.white,
        //                         fontSize: 14,
        //                         fontWeight: FontWeight.w700,
        //                       ),
        //                     )
        //                   ]))),
        //       Positioned(
        //           top: 249,
        //           right: 15,
        //           left: 15,
        //           child: Container(
        //             height: 320,
        //             width: 345,
        //             decoration: BoxDecoration(
        //               color: Colors.white,
        //               borderRadius: BorderRadius.circular(15),
        //               boxShadow: const [
        //                 BoxShadow(
        //                   color: Colors.grey,
        //                   blurRadius: 4,
        //                 ),
        //               ],
        //             ),
        //           ))
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
