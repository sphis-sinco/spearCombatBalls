package;

import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();

		trace('Build Number: ' + VersionManager.BUILD);
		trace('Version: ' + VersionManager.VERSION);
		trace('Full Version: ' + VersionManager.VERSION_FULL);

		addChild(new FlxGame(0, 0, PlayState));
	}
}
