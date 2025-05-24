import 'package:flutter/material.dart';
import 'package:music_services/models/service_model.dart';
import 'package:music_services/repository/service_repository.dart';

class ServiceViewModel with ChangeNotifier {
  final ServiceRepository _repository;

  ServiceViewModel({required ServiceRepository repository})
      : _repository = repository;

  List<ServiceModel> _services = [];

  List<ServiceModel> get services => _services;

  Future<void> loadServices() async {
    _services = await _repository.fetchServices();
    notifyListeners();
  }
}