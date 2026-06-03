import 'package:dartz/dartz.dart';
import 'package:kayan_app/core/errors/failurs.dart';
import 'package:kayan_app/features/properties/data/models/property_model.dart';
import 'package:kayan_app/features/properties/data/repos/properties_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class PropertiesRepoImpl implements PropertiesRepo {
  final SupabaseClient _supabaseClient = Supabase.instance.client;
  @override
  Future<Either<Failure, List<PropertyModel>>> getProperties() async {
    try {
      final List<dynamic> response = await _supabaseClient
          .from('properties')
          .select()
          .order('created_at', ascending: false);

      final List<PropertyModel> properties = response
          .map((json) => PropertyModel.fromMap(json))
          .toList();

      return Right(properties);
    } catch (e) {
      return Left(ServerFailure.fromSupabase(e));
    }
  }
}
