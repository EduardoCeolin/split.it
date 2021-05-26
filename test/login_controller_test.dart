import 'package:flutter_test/flutter_test.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_state.dart';

void main() {
  late LoginController controller;
  setUp(() {
    controller = LoginController(onUpdate: () {});
  });

  test("Testando o Google SignIn retornando sucesso", () {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
  });
}
