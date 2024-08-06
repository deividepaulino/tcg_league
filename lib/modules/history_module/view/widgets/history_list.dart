import 'package:flutter/material.dart';
import 'package:tcg_league/modules/history_module/models/history_model.dart';
import 'package:tcg_league/modules/history_module/view/widgets/history_info_widget.dart';

class HistoryListChallangeList extends StatefulWidget {
  final List<HistoryModel> histories;
  const HistoryListChallangeList({super.key, required this.histories});

  @override
  State<HistoryListChallangeList> createState() =>
      HistoryListChallangeListState();
}

class HistoryListChallangeListState extends State<HistoryListChallangeList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Meus Historys'),
        //list
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: ListView.builder(
            itemCount: widget.histories.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return HistoryInfoWidget(
                        deck: widget.histories[index],
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
                          widget.histories[index].deckName,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.histories[index].deckGame,
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ],
                    ),
                    trailing: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('${widget.histories[index].totalCards} cartas'),
                        Visibility(
                            visible: widget.histories[index].proxies > 0,
                            child: Text(
                                'Proxies: ${widget.histories[index].proxies}')),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Cadastrar deck'),
        ),
      ],
    );
  }
}
