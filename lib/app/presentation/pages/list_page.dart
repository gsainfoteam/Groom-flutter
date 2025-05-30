import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groom_flutter/app/domain/entities/user_entity.dart';
import 'package:groom_flutter/app/presentation/bloc/user_list_bloc.dart';
import 'package:groom_flutter/app/presentation/widgets/profile_card_widget.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key, required this.uuid});
  final int uuid;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserListBloc()..add(UserListEvent.load(uuid)),
      child: Scaffold(
        appBar: AppBar(title: const Text("Groom-App")),
        body: Container(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: ListView(
            children: [
              ProfileCardWidget(user: UserEntity.mock()),
              ProfileCardWidget(user: UserEntity.mock()),
              ProfileCardWidget(user: UserEntity.mock()),
            ],
          ),
        ),
      ),
    );
  }
}
