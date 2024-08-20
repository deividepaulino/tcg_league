import 'package:flutter/material.dart';

import 'package:tcg_league/modules/deck_module/models/deck_model.dart';

class DeckInfoWidget extends StatefulWidget {
  final DeckModel deck;
  const DeckInfoWidget({super.key, required this.deck});

  @override
  State<DeckInfoWidget> createState() => _DeckInfoWidgetState();
}

class _DeckInfoWidgetState extends State<DeckInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dados do deck',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const Spacer(),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.cancel,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.deck.deckGame,
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${widget.deck.totalCards} cartas',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
          Text(
            'Cartas',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: ListView.builder(
              itemCount: widget.deck.deckList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      '${widget.deck.deckList[index].cardName} x${widget.deck.deckList[index].cardName}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
