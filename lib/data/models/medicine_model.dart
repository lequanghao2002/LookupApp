class MedicineModel {
  MedicineModel({
    required this.id,
    this.islove = false,
    required this.image,
    this.name = 'Chưa cập nhật',
    this.scienceName = 'Chưa cập nhật',
    this.description = 'Chưa cập nhật',
    this.processing = 'Chưa cập nhật',
    this.action = 'Chưa cập nhật',
    this.performance = 'Chưa cập nhật',
    this.use = 'Chưa cập nhật',
    this.taboo = 'Chưa cập nhật',
  });

  final int id;
  bool islove;
  final String image;
  final String name;
  final String scienceName;
  final String description;
  final String processing;
  final String action;
  final String performance;
  final String use;
  final String taboo;
}
