class MaterialModel {
  int id;
  String category;
  String type;
  String name;
  String add;
  String use;
  String replace;
  String chem;

  MaterialModel(
      {
        this.id,
      this.category,
      this.type,
      this.name,
      this.add,
      this.use,
      this.replace,
      this.chem});

  MaterialModel.fromJson(Map<String, dynamic> json) {
    id = json['id_'];
    category = json['category_'];
    type = json['type_'];
    name = json['name_'];
    add = json['add_'];
    use = json['use_'];
    replace = json['replace_'];
    chem = json['chem_'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id_'] = this.id;
    data['category_'] = this.category;
    data['type_'] = this.type;
    data['name_'] = this.name;
    data['add_'] = this.add;
    data['use_'] = this.use;
    data['replace_'] = this.replace;
    data['chem_'] = this.chem;
    return data;
  }
}
