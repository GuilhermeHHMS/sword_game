import 'package:bonfire/bonfire.dart';
import 'first_player_sheet.dart';

class FirstPlayer extends SimplePlayer with ObjectCollision {
  FirstPlayer(Vector2 position)
      : super(
          position: position,
          size: Vector2(32, 32),
          animation: SimpleDirectionAnimation(
            idleRight: FirstPlayerSheet.idleRight,
            runRight: FirstPlayerSheet.runRight,
            idleLeft: FirstPlayerSheet.idleleft,
            runLeft: FirstPlayerSheet.runLeft,
          ),
        ) {
    setupCollision(
      CollisionConfig(collisions: [
        CollisionArea.rectangle(
          size: Vector2(16, 24),
          align: Vector2(8, 8),
        ),
      ]),
    );
  }
}
