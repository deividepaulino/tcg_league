import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:tcg_league/core/widgets/bottom_menu.dart';
import 'package:tcg_league/modules/index_module/controller/index_controller.dart';
import 'package:tcg_league/modules/index_module/view/atoms/index_atoms.dart';
import 'package:tcg_league/modules/index_module/view/states/index_states.dart';
import 'package:tcg_league/modules/index_module/view/widgets/challange_list.dart';
import 'package:tcg_league/modules/index_module/view/widgets/profile_widget.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final IndexController _controller = IndexController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.select(() => indexState.value);
    return Scaffold(
      bottomNavigationBar: const CustomBottomMenu(),
      body: switch (state) {
        IndexInitialState _ => _builldInitial(),
        IndexLoadingState _ => _buildLoading(),
        IndexSuccessState _ => _buildSuccess(),
        IndexErrorState _ => _buildError(),
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

  _buildSuccess() {
    return Column(
      children: [
        IndexProfileWidget(profile: indexProfileAtom.value),
        IndexChallangeList(challanges: indexChallangesAtom.value),
      ],
    );
  }

  _buildError() {
    return Column(
      children: [
        const Text('Erro ao fazer Index'),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Tentar novamente'),
        ),
      ],
    );
  }
}
