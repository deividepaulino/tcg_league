class DeckModel {
  final String deckName;
  final String deckFormat;
  final String deckGame;
  final int proxies;
  final int totalCards;
  final List<DeckCardModel> deckList;

  DeckModel({
    required this.deckName,
    required this.deckFormat,
    required this.deckGame,
    required this.proxies,
    required this.totalCards,
    required this.deckList,
  });

  factory DeckModel.fromJson(Map<String, dynamic> json) {
    return DeckModel(
      deckName: json['deck_name'],
      deckFormat: json['deck_format'],
      deckGame: json['deck_game'],
      proxies: json['proxies'],
      totalCards: json['total_cards'],
      deckList: List<DeckCardModel>.from(
        json['deck_list'].map((x) => DeckCardModel.fromJson(x)),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'deck_name': deckName,
      'deck_format': deckFormat,
      'deck_game': deckGame,
      'proxies': proxies,
      'total_cards': totalCards,
      'deck_list': deckList.map((x) => x.toJson()).toList(),
    };
  }

  factory DeckModel.empty() {
    return DeckModel(
      deckName: '',
      deckFormat: '',
      deckGame: '',
      proxies: 0,
      totalCards: 0,
      deckList: [],
    );
  }
}

class DeckCardModel {
  String cardName;
  int cardQuantity;
  int proxies;
  String cardCode;

  DeckCardModel({
    required this.cardName,
    required this.cardQuantity,
    required this.proxies,
    required this.cardCode,
  });

  factory DeckCardModel.fromJson(Map<String, dynamic> json) {
    return DeckCardModel(
      cardName: json['card_name'],
      cardQuantity: json['card_quantity'],
      proxies: json['proxies'],
      cardCode: json['card_code'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'card_name': cardName,
      'card_quantity': cardQuantity,
      'proxies': proxies,
      'card_code': cardCode,
    };
  }

  factory DeckCardModel.empty() {
    return DeckCardModel(
      cardName: '',
      cardQuantity: 0,
      proxies: 0,
      cardCode: '',
    );
  }
}
