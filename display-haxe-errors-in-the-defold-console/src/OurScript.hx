class OurScript extends defold.support.Script<{}> {

	public static function error(message:String, ?level:Int = 0, ?infos:haxe.PosInfos):Void {
		// Paths in this format 'path/file_name:line_number' will be clickable in the Defold console.
		lua.Lua.error(infos.fileName + ':' + infos.lineNumber + ": " + message, level);
	}

	override function init(self:{}) {
		error("something painful");
	}

}