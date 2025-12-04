package;

import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxSpriteUtil;
import flixel.graphics.FlxGraphic;
import flixel.FlxSprite;
import flixel.FlxState;

class PlayState extends FlxState
{
	public var player:FlxSprite;

	override public function create()
	{
		super.create();

		player = new FlxSprite().makeGraphic(16, 16, FlxColor.TRANSPARENT);
		FlxSpriteUtil.drawCircle(player);
		player.color = FlxColor.RED;
		add(player);

		player.screenCenter();

		add(new FlxText(2, 2, 0, VersionManager.VERSION_FULL, 8));
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
