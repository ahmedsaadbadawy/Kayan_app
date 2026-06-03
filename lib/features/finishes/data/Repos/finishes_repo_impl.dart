import 'package:dartz/dartz.dart';
import 'package:kayan_app/core/errors/failurs.dart';
import 'package:kayan_app/features/finishes/data/Repos/finishes_repo.dart';
import 'package:kayan_app/features/finishes/data/models/finishes_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class FinishesRepoImpl implements FinishesRepo {
  final SupabaseClient _supabase = Supabase.instance.client;
  @override
  Future<Either<Failure, List<FinishesModel>>> getFinishes() async {
    try {
      // List<Map<String, dynamic>> response
      final List<dynamic> response = await _supabase
          .from('finishes')
          .select()
          .order('created_at', ascending: false);

      final List<FinishesModel> finishes = response
          .map((json) => FinishesModel.fromJson(json))
          .toList();

      return Right(finishes);
    } catch (e) {
      return Left(ServerFailure.fromSupabase(e));
    }
  }
}
