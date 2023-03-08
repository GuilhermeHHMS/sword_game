import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';
import 'package:sword_game/characters/players/first_player.dart';

main() => runApp(MyGame());

class MyGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GameBase(),
    );
  }
}

class GameBase extends StatelessWidget {
  const GameBase({super.key});

  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      map: WorldMapByTiled('mapa.json', forceTileSize: Vector2(100, 100)),
      player: FirstPlayer(
        Vector2(30, 30),
      ),
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(
            keyboardDirectionalType: KeyboardDirectionalType.wasdAndArrows),
      ),
    );
  }
}
