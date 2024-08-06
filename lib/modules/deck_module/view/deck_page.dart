import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:tcg_league/core/widgets/bottom_menu.dart';
import 'package:tcg_league/modules/deck_module/controller/deck_controller.dart';
import 'package:tcg_league/modules/deck_module/models/deck_model.dart';
import 'package:tcg_league/modules/deck_module/view/atoms/deck_atoms.dart';
import 'package:tcg_league/modules/deck_module/view/states/deck_states.dart';
import 'package:tcg_league/modules/deck_module/view/widgets/deck_list.dart';

class DeckPage extends StatefulWidget {
  const DeckPage({super.key});

  @override
  State<DeckPage> createState() => _DeckPageState();
}

class _DeckPageState extends State<DeckPage> {
  final DeckController _controller = DeckController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.select(() => deckState.value);
    return Scaffold(
      bottomNavigationBar: const CustomBottomMenu(),
      body: switch (state) {
        DeckInitialState _ => _builldInitial(),
        DeckLoadingState _ => _buildLoading(),
        DeckSuccessState state => _buildSuccess(state.deckLists!),
        DeckErrorState _ => _buildError(),
      },
    );
  }

  _builldInitial() {
    _controller.getChallangeList();
    return const Center(child: CircularProgressIndicator());
  }

  _buildLoading() {
    return const Center(child: CircularProgressIndicator());
  }

  _buildSuccess(List<DeckModel> deckLists) {
    return DeckListChallangeList(
      decks: deckLists,
    );
  }

  _buildError() {
    return Column(
      children: [
        const Text('Erro ao fazer Deck'),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Tentar novamente'),
        ),
      ],
    );
  }
}
