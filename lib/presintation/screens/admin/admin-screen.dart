import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../components/decoration-utils.dart';
import 'bloc/admin_bloc.dart';

class AdminScreen extends StatefulWidget {
  final String title;
  const AdminScreen({super.key, required this.title});
  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: BlocListener<AdminBloc, AdminState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        child: Container(
          width: screenWidth,
          decoration: backGroundPattern(),
          child: BlocBuilder<AdminBloc, AdminState>(
            builder: (context, state) {
              return const Column(
                children: [],
              );
            },
          ),
        ),
      ),
    );
  }
}
