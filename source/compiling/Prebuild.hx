package source.compiling;

#if sys
import sys.io.File;
#end

class Prebuild
{
	public static function main()
	{
		#if sys
		var BUILD = Std.parseInt(File.getContent('assets/build.txt'));

		#if debug
		var sysPath = Sys.programPath().substring(0, Sys.programPath().indexOf('\\export')).replace('\\', '/');
		sysPath += '/assets/build.txt';

		File.saveContent(sysPath, Std.string(BUILD + 1));

		if (!FileSystem.exists('prev-build')
			|| (FileSystem.exists('prev-build') && (File.getContent('prev-build') != File.getContent('assets/build.txt'))))
		{
			File.saveContent('prev-build', Std.string(BUILD));
			File.saveContent('assets/build.txt', Std.string(BUILD + 1));
		}
		#end
		#end
	}
}
