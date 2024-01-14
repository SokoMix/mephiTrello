import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:mephi_trello/DI/DI.dart';
import 'package:mephi_trello/router/router_manager.dart';
import 'package:mephi_trello/service/trello_API.dart';

import '../domain/user_manager.dart';
import '../pages/projects/projects_manager.dart';

class Providers {
  final Provider<TrelloApi> APIProvider = Provider((ref) => GetIt.I.get<TrelloApi>());
  final Provider<UserManager> userProvider = Provider((ref) => UserManager());
  // final Provider<ProjectManager> projectsProvider = Provider((ref) => ProjectManager(
  //     GetIt.I.get<TrelloApi>(),
  //     GetIt.I.get<RouterManager>(),
  // ),
  // );

  ProviderContainer providerContainer() {
    ProviderContainer container = ProviderContainer();

    container.read(APIProvider);
    container.read(userProvider);
    // container.read(projectsProvider);

    return container;
  }
}