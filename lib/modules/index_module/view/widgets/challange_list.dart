import 'package:flutter/material.dart';
import 'package:tcg_league/core/extensions/date_time_extension.dart';
import 'package:tcg_league/modules/index_module/models/challanges_model.dart';

class IndexChallangeList extends StatefulWidget {
  final List<ChallangeModel> challanges;
  const IndexChallangeList({super.key, required this.challanges});

  @override
  State<IndexChallangeList> createState() => IndexChallangeListState();
}

class IndexChallangeListState extends State<IndexChallangeList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Meus torneios'),
        //list
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: ListView.builder(
            itemCount: widget.challanges.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.challanges[index].challangeName,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text(
                        'Posiçao: ${widget.challanges[index].userPosition.toString()}',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(
                        'Deck: ${widget.challanges[index].userDeck}',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Chip(
                        backgroundColor:
                            (widget.challanges[index].challangeStatus == 'open')
                                ? Colors.green
                                : Colors.grey,
                        label:
                            (widget.challanges[index].challangeStatus == 'open')
                                ? const Text('Aberto',
                                    style: TextStyle(color: Colors.white))
                                : const Text(
                                    'Encerrado',
                                    style: TextStyle(color: Colors.white),
                                  ),
                      ),
                      Text(
                        widget.challanges[index].challangeType,
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(
                        widget.challanges[index].challangeInitialDate
                            .toBrazilianDateOnly(),
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(
                        'Players: ${widget.challanges[index].totalParticipants.toString()}',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
