#if sys
import sys.io.File;
import sys.FileSystem;
#end
import lime.utils.Assets;

using StringTools;

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

	public static function get_VERSION_FULL():String
	{
		var full_version = VERSION;

		full_version += '-' + VERSION_RELEASE_TYPE_TEXT;
		if (INCLUDE_BUILD)
			full_version += BUILD;

		return full_version;
	}

	public static var VERSION_RELEASE_TYPE_TEXT:VersionReleaseTypeText = DEBUG;

	public static var INCLUDE_BUILD(get, never):Bool;

	static function get_INCLUDE_BUILD():Bool
	{
		// TODO: Make a setting
		return true;
	}
}

enum abstract VersionReleaseTypeText(String)
{
	var RELEASE = 'r';

	var RELEASE_CANDIDATE = 'rc';
	var PRE_RELEASE = 'pr';

	var SNAPSHOT = 's';

	var DEBUG = 'd';
}
