import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kayan_app/features/finishes/data/Repos/finishes_repo.dart';
import '../../data/models/finishes_model.dart';

part 'finishes_state.dart';

class FinishesCubit extends Cubit<FinishesState> {
  FinishesCubit({required this.finishesRepo}) : super(FinishesInitial());

  final FinishesRepo finishesRepo;

  Future<void> fetchFinishes() async {
    emit(FinishesLoading());
    var result = await finishesRepo.getFinishes();
    result.fold(
      (failure) => emit(FinishesFailure(failure.message)),
      (finishes) => emit(FinishesSuccess(finishes)),
    );
  }
}
