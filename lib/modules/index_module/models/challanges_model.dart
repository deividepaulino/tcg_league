class ChallangeModel {
  int? torneioId;
  int? posicaoAtual;
  String? torneioNome;
  String? deckAtual;
  int? quantidadeParticipantes;
  String? dataInicio;
  String? status;

  ChallangeModel({
    this.torneioId,
    this.posicaoAtual,
    this.deckAtual,
    this.torneioNome,
    this.quantidadeParticipantes,
    this.dataInicio,
    this.status,
  });

  ChallangeModel.fromJson(Map<String, dynamic> json) {
    torneioId = json['torneioId'] ?? -1;
    posicaoAtual = json['posicaoAtual'] ?? -1;
    torneioNome = json['torneioNome'] ?? 'N/A';
    deckAtual = json['deckAtual'] ?? 'Não informado';
    quantidadeParticipantes = json['quantidadeParticipantes'] ?? -1;
    dataInicio = json['dataInicio'] ?? 'Não informado';
    status = json['status'] ?? 'Outro';
  }

  static List<ChallangeModel> fromJsonList(List list) {
    if (list.isEmpty) return [];
    return list.map((item) => ChallangeModel.fromJson(item)).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      "torneioId": torneioId,
      "posicaoAtual": posicaoAtual,
      "deckAtual": deckAtual,
      "quantidadeParticipantes": quantidadeParticipantes,
      "dataInicio": dataInicio,
      "status": status,
      "torneioNome": torneioNome,
    };
  }

  factory ChallangeModel.empty() {
    return ChallangeModel(
      torneioId: -1,
      posicaoAtual: -1,
      torneioNome: '',
      deckAtual: '',
      quantidadeParticipantes: -1,
      dataInicio: '',
      status: '',
    );
  }
}
