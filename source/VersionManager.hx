import lime.utils.Assets;

class VersionManager
{
	public var BUILD(get, never):Int;

	function get_BUILD():Int
	{
		return Std.parseInt(Assets.getText('build.txt'));
	}

	public var VERSION(get, never):String;

	function get_VERSION():String
	{
		return Assets.getText('version.txt');
	}

	public var VERSION_FULL(get, never):String;

	function get_VERSION_FULL():String
	{
		var full_version = VERSION;

		#if INCLUDE_BUILD full_version += '.' + BUILD; #end

		return full_version;
	}
}
