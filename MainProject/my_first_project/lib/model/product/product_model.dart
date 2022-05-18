// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProductModel {
  String? updateAt;
  String? descricao;
  String? avatar;
  String? id;
  List<TipoId>? tipoId;

  ProductModel(
      {this.updateAt, this.descricao, this.avatar, this.id, this.tipoId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateAt': updateAt,
      'descricao': descricao,
      'avatar': avatar,
      'id': id,
      'tipoId': tipoId?.map((x) => x.toMap()).toList(),
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      updateAt:
          map['updateAt'] ?? '', //!= null ? map['updateAt'] as String : null,
      descricao: map['descricao'] ?? '',
      avatar: map['avatar'] ?? '',
      id: map['id'] ?? '',
      tipoId: List<TipoId>.from(
          map['tipoId']?.map((x) => TipoId.fromMap(x)) ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);

  tolist() {}
}

class TipoId {
  String? name;
  String? id;
  String? produtoId;

  TipoId({this.name, this.id, this.produtoId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'id': id,
      'produtoId': produtoId,
    };
  }

  factory TipoId.fromMap(Map<String, dynamic> map) {
    return TipoId(
      name: map['name'] != null ? map['name'] as String : null,
      id: map['id'] != null ? map['id'] as String : null,
      produtoId: map['produtoId'] != null ? map['produtoId'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TipoId.fromJson(String source) =>
      TipoId.fromMap(json.decode(source) as Map<String, dynamic>);
}
