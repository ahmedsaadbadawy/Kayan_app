part of 'finishes_cubit.dart';

@immutable
sealed class FinishesState {}

final class FinishesInitial extends FinishesState {}

final class FinishesLoading extends FinishesState {}

final class FinishesSuccess extends FinishesState {
  final List<FinishesModel> finishes;
  FinishesSuccess(this.finishes);
}

final class FinishesFailure extends FinishesState {
  final String errMessage;
  FinishesFailure(this.errMessage);
}
