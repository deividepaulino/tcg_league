import 'package:flutter/material.dart';
import 'package:tcg_league/modules/deck_module/controller/deck_controller.dart';
import 'package:tcg_league/modules/deck_module/models/deck_model.dart';
import 'package:tcg_league/modules/deck_module/view/atoms/deck_atoms.dart';

class DeckRegisterWidget extends StatefulWidget {
  const DeckRegisterWidget({super.key});

  @override
  State<DeckRegisterWidget> createState() => _DeckRegisterWidgetState();
}

class _DeckRegisterWidgetState extends State<DeckRegisterWidget> {
  final TextEditingController _deckNameController = TextEditingController();
  final TextEditingController _deckGameController = TextEditingController();
  final TextEditingController _deckFormatController = TextEditingController();
  final TextEditingController _cardQtdController = TextEditingController();
  final TextEditingController _proxyQtdController = TextEditingController();

  final controller = DeckController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              const Text('Registrar Deck'),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _deckNameController,
            decoration: const InputDecoration(
              labelText: 'Nome do Deck',
            ),
          ),
          TextField(
            controller: _deckGameController,
            decoration: const InputDecoration(
              labelText: 'Jogo',
            ),
          ),
          TextField(
            controller: _deckFormatController,
            decoration: const InputDecoration(
              labelText: 'Formato',
            ),
          ),
          TextField(
            controller: _cardQtdController,
            decoration: const InputDecoration(
              labelText: 'Quantidade de Cartas',
            ),
          ),
          TextField(
            controller: _proxyQtdController,
            decoration: const InputDecoration(
              labelText: 'Quantidade de Proxies',
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              deckPostAtom.setValue(
                DeckModel(
                  // deckId: -1,
                  userId: 1,
                  deckName: _deckNameController.text,
                  deckFormat: _deckFormatController.text,
                  deckGame: _deckGameController.text,
                  proxies: int.parse(_proxyQtdController.text),
                  totalCards: int.parse(_cardQtdController.text),
                  deckList: [],
                ),
              );
              await controller.postDeck();
            },
            child: const Text('Registrar'),
          ),
        ],
      ),
    );
  }
}
