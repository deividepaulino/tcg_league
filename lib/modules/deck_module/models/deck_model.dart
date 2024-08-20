class DeckModel {
  int deckId;
  String deckName;
  String deckGame;
  String deckFormat;
  int totalCards;
  int proxies;
  List<CardModel> deckList;

  DeckModel({
    required this.deckId,
    required this.deckName,
    required this.deckFormat,
    required this.deckGame,
    required this.proxies,
    required this.totalCards,
    required this.deckList,
  });

  factory DeckModel.fromJson(Map<String, dynamic> json) {
    return DeckModel(
      deckId: json['id'],
      deckName: json['deck_name'],
      deckFormat: json['deck_format'],
      deckGame: json['deck_game'],
      proxies: json['proxy_quantity'],
      totalCards: json['card_quantity'],
      deckList: List<CardModel>.from(
        json['cards'].map((x) => CardModel.fromJson(x)),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': deckId,
      'deck_name': deckName,
      'deck_format': deckFormat,
      'deck_game': deckGame,
      'proxy_quantity': proxies,
      'card_quantity': totalCards,
      'cards': deckList.map((x) => x.toJson()).toList(),
    };
  }

  factory DeckModel.empty() {
    return DeckModel(
      deckId: -1,
      deckName: '',
      deckFormat: '',
      deckGame: '',
      proxies: 0,
      totalCards: 0,
      deckList: [],
    );
  }
}

class CardModel {
  int cardId;
  String cardName;
  String cardCode;
  int type;

  CardModel({
    required this.cardId,
    required this.cardName,
    required this.cardCode,
    required this.type,
  });

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
      cardId: json['id'],
      cardName: json['name'],
      cardCode: json['code'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': cardId,
      'name': cardName,
      'code': cardCode,
      'type': type,
    };
  }

  factory CardModel.empty() {
    return CardModel(
      cardId: 0,
      cardName: '',
      cardCode: '',
      type: 0,
    );
  }
}
