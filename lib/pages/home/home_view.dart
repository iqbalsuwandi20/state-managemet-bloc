import 'package:flutter/material.dart';
import 'package:state_management_bloc/data/models/data_home.dart';

import '../../logic/export.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    RandomBloc randomBloc = context.read<RandomBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Presentation Layer".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<RandomBloc, RandomState>(
        bloc: randomBloc,
        builder: (context, state) {
          if (state is RandomLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is RandomError) {
            return Center(
              child: Text("Terjadi kesalahan!!!".toUpperCase()),
            );
          }
          if (state is RandomInitial) {
            return Center(
              child: Text("Tidak ada data!!!".toUpperCase()),
            );
          }
          DataHomeModel dataHomeModel = state.data;
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Container(
                      color: Colors.grey.shade300,
                      child: Image.network(
                        "${dataHomeModel.profile}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "${dataHomeModel.fullname}".toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text("${dataHomeModel.email}"),
                  const SizedBox(height: 20),
                  Text(
                    "============ Masakan ============".toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "${dataHomeModel.judulMasakan}",
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 5),
                  Text("${dataHomeModel.waktu}"),
                  const SizedBox(height: 5),
                  Text("${dataHomeModel.kesulitan}"),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 300,
                    height: 200,
                    child: Container(
                      color: Colors.grey.shade300,
                      child: Image.network(
                        "${dataHomeModel.gambarMasakan}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          randomBloc.add(GetRandomEvent());
          randomBloc.state.data.toJson();
        },
        child: const Icon(Icons.refresh_outlined),
      ),
    );
  }
}
