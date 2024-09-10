class Doctor {
  final String name;
  final String spe;
  final String clinicAddress;
  final int fee;
  final String photo;
  final String? clinicTime;

  Doctor({
    required this.name,
    required this.spe,
    required this.clinicAddress,
    required this.fee,
    required this.photo,
    this.clinicTime,
  });
}