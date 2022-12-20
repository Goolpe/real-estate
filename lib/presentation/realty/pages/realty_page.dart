import 'package:flutter/material.dart';
import 'package:realestate/core/bloc/bloc_builder.dart';
import 'package:realestate/core/utils/service_locator.dart';
import 'package:realestate/data/repositories/i_realty_repository.dart';
import 'package:realestate/presentation/realty/controller/realty_controller.dart';
import 'package:realestate/presentation/realty/controller/realty_state.dart';
import 'package:realestate/presentation/realty/pages/realty_details.dart';
import 'package:realestate/presentation/widgets/widgets.dart';

class RealtyPage extends StatelessWidget {
  const RealtyPage({required this.id, super.key});

  final String id;

  @override
  Widget build(BuildContext context) {
    final controller = RealtyController(getIt<IRealtyRepository>(), id);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: BlocBuilder(
          bloc: controller,
          builder: (context, state) {
            if (state is RealtySuccessState) {
              return RealtyDetails(data: state.data);
            }

            if (state is RealtyLoadingState) {
              return const LoadingIndicator();
            }

            if (state is RealtyErrorState) {
              return ErrorIndicator(
                error: state.error,
                onRefresh: controller.refresh,
              );
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
