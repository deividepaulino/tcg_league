import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:tcg_league/core/widgets/bottom_menu.dart';
import 'package:tcg_league/modules/history_module/controller/history_controller.dart';
import 'package:tcg_league/modules/history_module/models/history_model.dart';
import 'package:tcg_league/modules/history_module/view/atoms/history_atoms.dart';
import 'package:tcg_league/modules/history_module/view/states/history_states.dart';
import 'package:tcg_league/modules/history_module/view/widgets/history_list.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final HistoryController _controller = HistoryController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.select(() => historyState.value);
    return Scaffold(
      bottomNavigationBar: const CustomBottomMenu(),
      body: switch (state) {
        HistoryInitialState _ => _builldInitial(),
        HistoryLoadingState _ => _buildLoading(),
        HistorySuccessState state => _buildSuccess(state.deckLists!),
        HistoryErrorState _ => _buildError(),
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

  _buildSuccess(List<HistoryModel> deckLists) {
    return HistoryListChallangeList(
      histories: deckLists,
    );
  }

  _buildError() {
    return Column(
      children: [
        const Text('Erro ao fazer History'),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Tentar novamente'),
        ),
      ],
    );
  }
}
