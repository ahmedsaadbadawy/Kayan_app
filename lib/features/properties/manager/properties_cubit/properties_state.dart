part of 'properties_cubit.dart';

@immutable
sealed class PropertiesState {}

final class PropertiesInitial extends PropertiesState {}

final class PropertiesLoading extends PropertiesState {}

final class PropertiesSuccess extends PropertiesState {
  final List<PropertyModel> properties;
  PropertiesSuccess( this.properties);
}

final class PropertiesFailure extends PropertiesState {
  final String errMessage;
  PropertiesFailure(this.errMessage);
}
