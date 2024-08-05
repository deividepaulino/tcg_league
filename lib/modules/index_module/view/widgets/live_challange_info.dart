import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tcg_league/modules/index_module/view/widgets/challange_info.dart';

class LiveChallangeInfoWidget extends StatefulWidget {
  const LiveChallangeInfoWidget({super.key});

  @override
  State<LiveChallangeInfoWidget> createState() =>
      _LiveChallangeInfoWidgetState();
}

class _LiveChallangeInfoWidgetState extends State<LiveChallangeInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.cancel,
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Código da partida:',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                '#123456',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'Lançar resultado',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        //add point player 1 action TODO
                      },
                      icon: Icon(
                        Icons.add,
                        size: 80,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        //add point player 1 action TODO
                      },
                      icon: Icon(
                        Icons.add,
                        size: 80,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      '0',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 120,
                          ),
                    ),
                    const Spacer(),
                    Text(
                      '0',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 120,
                          ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        //remove point player 1 action TODO
                      },
                      icon: Icon(
                        Icons.remove,
                        size: 80,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        //remove point player 1 action TODO
                      },
                      icon: Icon(
                        Icons.remove,
                        size: 80,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Nós',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 24,
                          ),
                    ),
                    const Spacer(),
                    Text(
                      'Eles',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 24,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              //TODO CONFIRMAR RESULTADO
            },
            child: Text('Confirmar resultado'),
          ),
          SizedBox(
            height: 16,
          ),
          ElevatedButton(
            onPressed: () {
              if (Modular.to.canPop()) {
                Modular.to.pop();
              }
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const ChallangeInfoWidget(
                    isOpen: true,
                  );
                },
              );
            },
            child: Text('Ver tabela'),
          ),
        ],
      ),
    );
  }
}
