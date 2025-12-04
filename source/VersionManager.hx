import lime.utils.Assets;

class VersionManager
{
	public var BUILD(get, never):Int;

	function get_BUILD():Int
	{
		return Std.parseInt(Assets.getText('build.txt'));
	}
}
