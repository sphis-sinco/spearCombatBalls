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
}
