part of 'order_track_cubit.dart';

class OrderTrackState {
  OrderTrackState({
    this.isLoading = false,
    this.error,
    this.userPostion,
    required this.markes,
  });

  final bool isLoading;
  final String? error;
  final Position? userPostion;
  Set<Marker> markes;

  OrderTrackState copyWith({
    bool? isLoading,
    String? error,
    Position? userPostion,
    Set<Marker>? markes,
  }) {
    return OrderTrackState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      userPostion: userPostion ?? this.userPostion,
      markes: markes ?? this.markes,
    );
  }
}
