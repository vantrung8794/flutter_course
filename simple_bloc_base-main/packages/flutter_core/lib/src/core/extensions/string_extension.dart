extension StringExtensions on String {}

extension StringNullSafe on String? {
  bool get isEmptyOrNull => (this ?? '').isEmpty;
}
