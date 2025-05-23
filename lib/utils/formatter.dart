class Formatter {
  static String formatCurrency(int amount) {
    RegExp reg = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    String Function(Match) mathFunc = (Match match) => '${match[1]}.';
    return amount.toString().replaceAllMapped(reg, mathFunc);
  }
} 