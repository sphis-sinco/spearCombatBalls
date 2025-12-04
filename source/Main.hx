package;

import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();

		#if sys
		var BUILD:Int = Std.parseInt(sys.io.File.getContent('assets/build.txt'));
        trace('Build before: ' + BUILD);

		#if debug
		var sysPath = Sys.programPath().substring(0, Sys.programPath().indexOf('\\export')).replace('\\', '/');
		sysPath += '/assets/build.txt';

        BUILD += 1;

		File.saveContent(sysPath, Std.string(BUILD));

		if (!FileSystem.exists('prev-build')
			|| (FileSystem.exists('prev-build') && (File.getContent('prev-build') != File.getContent('assets/build.txt'))))
		{
			File.saveContent('prev-build', Std.string(BUILD - 1));
			File.saveContent('assets/build.txt', Std.string(BUILD));
		}
		#end

        trace('Build after: ' + BUILD);
		#end

		trace('Build Number: ' + VersionManager.BUILD);
		trace('Version: ' + VersionManager.VERSION);
		trace('Full Version: ' + VersionManager.VERSION_FULL);

		addChild(new FlxGame(0, 0, PlayState));
	}
}
