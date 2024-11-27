class TranscationModel {
  final String title, date, amount;
  final bool isWithdraw;

  const TranscationModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isWithdraw});
}
