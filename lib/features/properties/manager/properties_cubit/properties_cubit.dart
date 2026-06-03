import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:kayan_app/features/properties/data/models/property_model.dart';
import 'package:kayan_app/features/properties/data/repos/properties_repo.dart';

part 'properties_state.dart';

class PropertiesCubit extends Cubit<PropertiesState> {
  PropertiesCubit({required this.propertiesRepo}) : super(PropertiesInitial());
  final PropertiesRepo propertiesRepo;

  Future<void> fetchProperties() async {
    emit(PropertiesLoading());
    var result = await propertiesRepo.getProperties();
    result.fold(
      (failure) => emit(PropertiesFailure(failure.message)),
      (properties) => emit(PropertiesSuccess(properties)),
    );
  }
}
