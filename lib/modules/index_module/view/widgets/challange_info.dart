import 'package:flutter/material.dart';

class ChallangeInfoWidget extends StatefulWidget {
  final bool isOpen;
  const ChallangeInfoWidget({super.key, required this.isOpen});

  @override
  State<ChallangeInfoWidget> createState() => _ChallangeInfoWidgetState();
}

class _ChallangeInfoWidgetState extends State<ChallangeInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //TODO TITULO DA LIGA
              Text('Liga semanal'),
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
            children: [
              Text('Data inicial: 01/01/2021'),
              Text('Data final: 01/01/2021'),
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
              TableRow(
                children: [
                  const Text('1'),
                  const Text('Jogador 1'),
                  const Text('Deck 1'),
                  const Text('2'),
                  const Text('10'),
                ],
              ),
              TableRow(
                children: [
                  const Text('2'),
                  const Text('Jogador 2'),
                  const Text('Deck 2'),
                  const Text('1'),
                  const Text('5'),
                ],
              ),
              TableRow(
                children: [
                  const Text('3'),
                  const Text('Jogador 3'),
                  const Text('Deck 3'),
                  const Text('0'),
                  const Text('0'),
                ],
              ),
              TableRow(
                children: [
                  const Text('4'),
                  const Text('Jogador 4'),
                  const Text('Deck 4'),
                  const Text('0'),
                  const Text('0'),
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
