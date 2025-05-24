import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:music_services/repository/service_repository.dart';
import 'package:music_services/repository/service_repository_impl.dart';
import 'package:music_services/viewmodel/service_viewmodel.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  // Firebase
  locator.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);
  
  // Repository
  locator.registerLazySingleton<ServiceRepository>(
    () => ServiceRepositoryImpl(),
  );
  
  // ViewModel
  locator.registerFactory(() => ServiceViewModel(repository: locator()));
}