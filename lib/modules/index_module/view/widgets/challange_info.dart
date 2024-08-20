import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:tcg_league/modules/index_module/controller/index_controller.dart';
import 'package:tcg_league/modules/index_module/view/atoms/index_atoms.dart';

class ChallangeInfoWidget extends StatefulWidget {
  final bool isOpen;
  final String title;
  const ChallangeInfoWidget(
      {super.key, required this.isOpen, required this.title});

  @override
  State<ChallangeInfoWidget> createState() => _ChallangeInfoWidgetState();
}

class _ChallangeInfoWidgetState extends State<ChallangeInfoWidget> {
  final controller = IndexController();

  @override
  void initState() {
    controller.getChallangeTable();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.select(() => challangeTableAtom.value);

    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(widget.title),
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
          Table(
            children: [
              TableRow(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(10),
                  shape: BoxShape.rectangle,
                ),
                children: [
                  Text(
                    'POS',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                  ),
                  Text(
                    'Nome',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                  ),
                  Text(
                    'Deck',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                  ),
                  Text(
                    'Vitórias',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                  ),
                  Text(
                    'Pontuação',
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
              for (var i = 0; i < state.players.length; i++)
                TableRow(
                  children: [
                    Text(state.players[i].position.toString()),
                    Text(state.players[i].name),
                    Text(state.players[i].deck.deckName),
                    Text(state.players[i].wins.toString()),
                    Text(state.players[i].points.toString()),
                  ],
                ),
            ],
          ),
          Row(
            children: [
              Text('Minha Pontuação: 10'),
              Text('Vitórias: 2'),
            ],
          ),
          Row(
            children: [
              Text('Participantes: 10'),
              Text('Meu deck: Deck 1'),
            ],
          ),
          Row(
            children: [
              const Spacer(),
              //status card "open" "live" "closed"
              Chip(
                backgroundColor: (widget.isOpen) ? Colors.blue : Colors.grey,
                label: (widget.isOpen)
                    ? const Text('Aberto',
                        style: TextStyle(color: Colors.white))
                    : const Text('Fechado',
                        style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
