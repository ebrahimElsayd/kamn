import 'dart:io';

import 'package:kamn/features/sports_service_providers/data/model/playground_request_model.dart';

enum ServiceProviderGroundsStatus {
  initial,
  loading,
  success,
  failure,
}

extension SportsGroundStateExtension on ServiceProviderGroundsState {
  bool get isInitial => state == ServiceProviderGroundsStatus.initial;
  bool get isLoading => state == ServiceProviderGroundsStatus.loading;
  bool get isSuccess => state == ServiceProviderGroundsStatus.success;
  bool get isFailure => state == ServiceProviderGroundsStatus.failure;
}

class ServiceProviderGroundsState {
  final ServiceProviderGroundsStatus state;
  final List<PlaygroundRequestModel>? playgrounds;
  final String? erorrMessage;
  final String? successMessage;

  ServiceProviderGroundsState({
    required this.state,
    this.playgrounds,
    this.erorrMessage,
    this.successMessage,
  });
}
