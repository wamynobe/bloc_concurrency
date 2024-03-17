import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/loadmore.dart';
import 'package:test/test_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => TestBloc()..add(const TestEvent.init()),
        child: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: BlocBuilder<TestBloc, TestState>(
          builder: (context, state) {
            return Column(
              children: [
                TextButton(
                  onPressed: () {
                    context.read<TestBloc>().add(const TestEvent.filter('66'));
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.red,
                  ),
                  child: const Text('Click to filter with query "66"'),
                ),
                Text(
                  'current filter ${state.query ?? ''}',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                switch (state.status) {
                  Status.success => Expanded(
                      child: ContinuousListView(
                        itemCount: state.data.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(state.data[index]),
                          );
                        },
                        canLoadMore: state.data.length < 20,
                        onRefresh: () {
                          return Future.value();
                        },
                        onLoadMore: () async {
                          final isDone = Completer<void>();
                          context
                              .read<TestBloc>()
                              .add(TestEvent.fetchMore('', isDone));
                          await isDone.future;
                        },
                      ),
                    ),
                  _ => _buildLoading(),
                }
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildLoading() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
