import 'package:json_annotation/json_annotation.dart';
// part 'material.g.dart';


@JsonSerializable(explicitToJson: true)
class Material_ {
  String class_, name_, add_,use_,replace_,chem_;
  int id_;


  Material_(this.class_, this.name_, this.add_, this.use_, this.replace_,
      this.chem_, this.id_);

  // factory Material_.fromJson(Map<String,dynamic> data) => _$Material_FromJson(data);

  // Map<String,dynamic> toJson() => _$Material_ToJson(this);

}
