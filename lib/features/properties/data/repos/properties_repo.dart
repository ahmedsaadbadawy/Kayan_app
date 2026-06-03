import 'package:dartz/dartz.dart';
import 'package:kayan_app/core/errors/failurs.dart';

import '../models/property_model.dart';

abstract class PropertiesRepo {
  Future <Either<Failure, List<PropertyModel>>> getProperties();
  // Future <Either<Failure, PropertyModel>> getPropertyDetails(int id);
}