// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Contact {
  int id;
  String nome;
  String fone;
  String email;
  String urlAvatar;
  Contact({
    required this.id,
    required this.nome,
    required this.fone,
    required this.email,
    required this.urlAvatar,
  });

  Contact copyWith({
    int? id,
    String? nome,
    String? fone,
    String? email,
    String? urlAvatar,
  }) {
    return Contact(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      fone: fone ?? this.fone,
      email: email ?? this.email,
      urlAvatar: urlAvatar ?? this.urlAvatar,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
      'fone': fone,
      'email': email,
      'urlAvatar': urlAvatar,
    };
  }

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      id: map['id'] as int,
      nome: map['nome'] as String,
      fone: map['fone'] as String,
      email: map['email'] as String,
      urlAvatar: map['urlAvatar'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Contact.fromJson(String source) =>
      Contact.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Contact(id: $id, nome: $nome, fone: $fone, email: $email, urlAvatar: $urlAvatar)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Contact &&
        other.id == id &&
        other.nome == nome &&
        other.fone == fone &&
        other.email == email &&
        other.urlAvatar == urlAvatar;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nome.hashCode ^
        fone.hashCode ^
        email.hashCode ^
        urlAvatar.hashCode;
  }
}
