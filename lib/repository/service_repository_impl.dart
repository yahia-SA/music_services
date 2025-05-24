import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:music_services/models/service_model.dart';
import 'package:music_services/repository/service_repository.dart';

class ServiceRepositoryImpl implements ServiceRepository {
  final CollectionReference _collection =
      FirebaseFirestore.instance.collection('services');

  @override
  Future<List<ServiceModel>> fetchServices() async {
    final snapshot = await _collection.get();
    return snapshot.docs
        .map((doc) => ServiceModel.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
  }
}
