import 'package:bonfire/bonfire.dart';

class FirstPlayerSheet {
  static Future<SpriteAnimation> get idleRight => SpriteAnimation.load(
        'arthurPendragon_.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(0, 0),
        ),
      );

  static Future<SpriteAnimation> get idleleft => SpriteAnimation.load(
        'arthurPendragon_.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.5,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(128, 0),
        ),
      );

  static Future<SpriteAnimation> get runRight => SpriteAnimation.load(
        'arthurPendragon_.png',
        SpriteAnimationData.sequenced(
            amount: 3,
            stepTime: 0.1,
            textureSize: Vector2(32, 32),
            texturePosition: Vector2(0, 128)),
      );

  static Future<SpriteAnimation> get runLeft => SpriteAnimation.load(
        'arthurPendragon_.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.1,
          textureSize: Vector2(32, 32),
          texturePosition: Vector2(128, 32),
        ),
      );

  static SimpleDirectionAnimation get simpleDirectionAnimation =>
      SimpleDirectionAnimation(
        idleRight: idleRight,
        idleLeft: idleRight,
        runRight: runRight,
      );
}
