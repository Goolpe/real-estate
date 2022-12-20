import 'package:flutter/material.dart';
import 'package:realestate/core/bloc/bloc.dart';

class BlocBuilder<S extends BlocState> extends StatefulWidget {
  const BlocBuilder({
    required this.bloc,
    required this.builder,
    super.key,
  });

  final Bloc<S> bloc;
  final Widget Function(BuildContext, BlocState) builder;

  @override
  State<BlocBuilder> createState() => _BlocBuilderState();
}

class _BlocBuilderState extends State<BlocBuilder> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<BlocState>(
      stream: widget.bloc.stream,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return widget.builder(context, snapshot.data!);
        }

        return const SizedBox.shrink();
      },
    );
  }

  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }
}
