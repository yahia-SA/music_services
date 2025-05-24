import 'package:music_services/models/service_model.dart';

abstract class ServiceRepository {
  Future<List<ServiceModel>> fetchServices();
}

