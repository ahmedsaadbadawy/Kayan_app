import 'package:dartz/dartz.dart';
import 'package:kayan_app/core/errors/failurs.dart';

import '../models/finishes_model.dart';

abstract class FinishesRepo {
  Future<Either<Failure, List<FinishesModel>>> getFinishes();
  // Future<Either<Failure, FinishesModel>> getFinishesById(int id);
}