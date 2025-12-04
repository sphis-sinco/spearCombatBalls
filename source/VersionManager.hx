#if sys
import sys.io.File;
#end
import lime.utils.Assets;

class VersionManager
{
	public static var BUILD(get, never):Int;

	static function get_BUILD():Int
	{
		return Std.parseInt(Assets.getText('assets/build.txt'));
	}

	public static var VERSION(get, never):String;

	static function get_VERSION():String
	{
		return Assets.getText('assets/version.txt');
	}

	public static var VERSION_FULL(get, never):String;

	static function get_VERSION_FULL():String
	{
		var full_version = VERSION;

		if (INCLUDE_BUILD)
			full_version += '.' + BUILD;

		return full_version;
	}

	public static function onStart()
	{
		#if sys
		#if debug
		File.saveContent(#if mac '../../..' #else '' #end +  '../../../../assets/build.txt', '' + BUILD + 1);
		#end
		#end
		trace('Build Number: ' + BUILD);
		trace('Version: ' + VERSION);
		trace('Full Version: ' + VERSION_FULL);
	}

	public static var INCLUDE_BUILD(get, never):Bool;

	static function get_INCLUDE_BUILD():Bool
	{
        // TODO: Make a setting
		return true;
	}
}
