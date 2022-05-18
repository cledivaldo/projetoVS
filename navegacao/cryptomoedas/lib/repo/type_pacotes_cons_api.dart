import '../models/pacotes/pacote.dart';

class PacoteRepository {
  static List<Pacote> tabela = [
    Pacote(
      icone: 'images/bitcoin.png',
      nome: 'HTML',
      sigla: 'HTML',
    ),
    Pacote(
      icone: 'images/ethereum.png',
      nome: 'Dio',
      sigla: 'DIO',
    ),
    Pacote(
      icone: 'images/xrp.png',
      nome: 'Depois',
      sigla: 'Depois',
    ),
  ];
}
