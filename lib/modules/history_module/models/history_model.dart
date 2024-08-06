class HistoryModel {
  final String deckName;
  final String deckFormat;
  final String deckGame;
  final int proxies;
  final int totalCards;
  final List<HistoryCardModel> deckList;

  HistoryModel({
    required this.deckName,
    required this.deckFormat,
    required this.deckGame,
    required this.proxies,
    required this.totalCards,
    required this.deckList,
  });

  factory HistoryModel.fromJson(Map<String, dynamic> json) {
    return HistoryModel(
      deckName: json['deck_name'],
      deckFormat: json['deck_format'],
      deckGame: json['deck_game'],
      proxies: json['proxies'],
      totalCards: json['total_cards'],
      deckList: List<HistoryCardModel>.from(
        json['deck_list'].map((x) => HistoryCardModel.fromJson(x)),
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

  factory HistoryModel.empty() {
    return HistoryModel(
      deckName: '',
      deckFormat: '',
      deckGame: '',
      proxies: 0,
      totalCards: 0,
      deckList: [],
    );
  }
}

class HistoryCardModel {
  String cardName;
  int cardQuantity;
  int proxies;
  String cardCode;

  HistoryCardModel({
    required this.cardName,
    required this.cardQuantity,
    required this.proxies,
    required this.cardCode,
  });

  factory HistoryCardModel.fromJson(Map<String, dynamic> json) {
    return HistoryCardModel(
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

  factory HistoryCardModel.empty() {
    return HistoryCardModel(
      cardName: '',
      cardQuantity: 0,
      proxies: 0,
      cardCode: '',
    );
  }
}
