abstract class ContactsItens {}

class ItemNome implements ContactsItens {
  final String nome;
  ItemNome(this.nome);
}

class ItemFone implements ContactsItens {
  final String fone;
  ItemFone(this.fone);
}

class ItemFoto implements ContactsItens {
  final String foto;
  ItemFoto(this.foto);
}

class ItemGroup implements ContactsItens {
  final String group;
  ItemGroup(this.group);
}
