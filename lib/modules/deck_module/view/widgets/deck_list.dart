import 'package:flutter/material.dart';
import 'package:tcg_league/modules/deck_module/models/deck_model.dart';
import 'package:tcg_league/modules/deck_module/view/widgets/deck_info_widget.dart';
import 'package:tcg_league/modules/deck_module/view/widgets/deck_register_widget.dart';

class DeckListChallangeList extends StatefulWidget {
  final List<DeckModel> decks;
  const DeckListChallangeList({super.key, required this.decks});

  @override
  State<DeckListChallangeList> createState() => DeckListChallangeListState();
}

class DeckListChallangeListState extends State<DeckListChallangeList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Meus Decks'),
        //list
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: ListView.builder(
            itemCount: widget.decks.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return DeckInfoWidget(
                        deck: widget.decks[index],
                      );
                    },
                  );
                },
                child: Card(
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.decks[index].deckName,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.decks[index].deckGame,
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ],
                    ),
                    trailing: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('${widget.decks[index].totalCards} cartas'),
                        Visibility(
                            visible: widget.decks[index].proxies > 0,
                            child: Text(
                                'Proxies: ${widget.decks[index].proxies}')),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return const DeckRegisterWidget();
              },
            );
          },
          child: const Text('Cadastrar deck'),
        ),
      ],
    );
  }
}
