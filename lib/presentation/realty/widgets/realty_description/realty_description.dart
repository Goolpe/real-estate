import 'package:flutter/material.dart';
import 'package:realestate/core/bloc/bloc.dart';
import 'package:realestate/presentation/realty/widgets/realty_description/realty_description_controller.dart';
import 'package:realestate/presentation/realty/widgets/realty_description/realty_description_state.dart';
import 'package:realestate/presentation/widgets/mid_title.dart';

class RealtyDescription extends StatelessWidget {
  const RealtyDescription({
    required this.description,
    super.key,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    final controller = RealtyDescriptionController(description);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const MidTitle('Description'),
          const SizedBox(height: 16),
          BlocBuilder(
            bloc: controller,
            builder: (context, state) {
              if (state is RealtyDescShortState) {
                return Column(
                  children: [
                    Text('${state.data}...'),
                    TextButton.icon(
                      onPressed: controller.setFullDesc,
                      icon: const Icon(Icons.expand_more),
                      label: const Text('Show more'),
                    )
                  ],
                );
              }

              if (state is RealtyDescFullState) {
                return Text(state.data);
              }

              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }
}
