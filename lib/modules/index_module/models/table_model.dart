class TableModel {
  final List<TablePlayer> players;

  TableModel({
    required this.players,
  });

  // Atualize o método fromJson para lidar com uma lista diretamente
  factory TableModel.fromJson(List<dynamic> json) {
    return TableModel(
      players: List<TablePlayer>.from(
          json.map((x) => TablePlayer.fromJson(x as Map<String, dynamic>))),
    );
  }

  // Atualize o método toJson se necessário
  Map<String, dynamic> toJson() {
    return {
      'players': List<dynamic>.from(players.map((x) => x.toJson())),
    };
  }

  //empty static
  static TableModel empty() {
    return TableModel(players: []);
  }
}

class TablePlayer {
  int position;
  String name;
  int wins;
  int defeats;
  int draws;
  int points;
  TableDeck deck;

  TablePlayer({
    required this.position,
    required this.name,
    required this.wins,
    required this.defeats,
    required this.draws,
    required this.points,
    required this.deck,
  });

  factory TablePlayer.fromJson(Map<String, dynamic> json) {
    return TablePlayer(
      position: json['posicao'],
      name: json['nome'],
      wins: json['vitorias'],
      defeats: json['derrotas'],
      draws: json['empates'],
      points: json['pontuacao'],
      deck: TableDeck.fromJson(json['deck']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'posicao': position,
      'nome': name,
      'vitorias': wins,
      'derrotas': defeats,
      'empates': draws,
      'pontuacao': points,
      'deck': deck.toJson(),
    };
  }

  //empty static
  static TablePlayer empty() {
    return TablePlayer(
      position: 0,
      name: '',
      wins: 0,
      defeats: 0,
      draws: 0,
      points: 0,
      deck: TableDeck.empty(),
    );
  }
}

class TableDeck {
  int deckId;
  String deckName;

  TableDeck({
    required this.deckId,
    required this.deckName,
  });

  factory TableDeck.fromJson(Map<String, dynamic> json) {
    return TableDeck(
      deckId: json['id'],
      deckName: json['nome'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': deckId,
      'nome': deckName,
    };
  }

  //empty static
  static TableDeck empty() {
    return TableDeck(deckId: 0, deckName: '');
  }
}
