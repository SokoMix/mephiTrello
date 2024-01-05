import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/user_manager.dart';

Provider userProvider() => Provider((ref) => UserManager());