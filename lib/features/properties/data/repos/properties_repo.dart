import 'package:dartz/dartz.dart';
import 'package:kayan_app/core/errors/failurs.dart';

import '../models/property_model.dart';

abstract class PropertiesRepo {
  Future <Either<Failure, List<Property>>> getProperties();
  // Future <Either<Failure, Property>> getPropertyDetails(int id);
}