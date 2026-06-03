part of 'locale_cubit.dart';

@immutable
sealed class LocaleState {
  final Locale locale;
  const LocaleState(this.locale);
}

final class ChangeLocaleState extends LocaleState {
  const ChangeLocaleState(super.locale);
}
