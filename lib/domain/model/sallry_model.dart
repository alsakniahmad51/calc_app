class SallaryModel {
  final int sallary;
  final DateTime sallaryDate;
  final int orderId;
  final String? notes;
  final String clientName;

  SallaryModel(
      {required this.sallary,
      required this.sallaryDate,
      required this.orderId,
      required this.notes,
      required this.clientName});

  static Map<String, dynamic> tojson({required SallaryModel sallary}) {
    return {
      "sallary": sallary.sallary,
      "sallarydate": sallary.sallaryDate.toString(),
      "orderid": sallary.orderId,
      "notes": sallary.notes,
      "clientName": sallary.clientName
    };
  }
}
