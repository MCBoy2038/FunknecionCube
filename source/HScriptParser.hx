package;

import flixel.util.FlxTimer;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.math.FlxMath;
import flixel.FlxSprite;
import flixel.FlxG;
import openfl.utils.AssetType;
import haxe.ds.StringMap;
import haxe.*;
import hscript.*;
import sys.*;
import sys.io.*;
import sys.net.*;

class ScriptLoader 
{


    // These are the variables / libraries that you will be able to access globally through these scripts
    public static var vars:StringMap<Dynamic>;
    public static var parser:Parser = new Parser();


    public static function init() {
        // Here we define our global variables in which we would like to access libs
        parser.allowTypes = true;
        vars = new StringMap<Dynamic>();

		vars.set("Sys", Sys);
		vars.set("Std", Std);
		vars.set("Math", Math);
		vars.set("StringTools", StringTools);

		vars.set("FlxG", FlxG);
		vars.set("FlxSprite", FlxSprite);
		vars.set("FlxMath", FlxMath);
		vars.set("FlxTween", FlxTween);
		vars.set("FlxEase", FlxEase);
		vars.set("FlxTimer", FlxTimer);

		vars.set("Conductor", Conductor);
		vars.set("Note", Note);
		vars.set("PlayState", PlayState);
    }

    /**
        @param path This is your specified path for where your script is located.
        @param extraParams If you want you can add some additional paramaters to the global variables if you wish to
    **/

    public static function loadScript(path:String, ?extraParams:StringMap<Dynamic>):Script {
        trace('Currently loading data from $path');
        var script:Script = null;
        if (FileSystem.exists(path))
            script = new Script(parser.parseString(File.getContent(path), path), extraParams);
        return script;
    }
}

// This class of Script allows for us to fully parse through our data.
class Script {
    public var interp:Interp;
    public var path:Paths;
    public var alive:Bool = true;

    	/**
	 * [Sets a field within the module to a new value]
	 * @param content Basically just where you set your content from your string 
	 * @param extraParams  Extra Parameters if you wanna be extra!
	 * @return interp.variables.set(field, value)
	 */
    public function new(content:Expr, ?extraParams:StringMap<Dynamic>) {
        interp = new Interp();

        for (i in ScriptLoader.vars.keys())
            interp.variables.set(i, ScriptLoader.vars.get(i));

        if (extraParams != null) {
            for (i in extraParams.keys())
                interp.variables.set(i, extraParams.get(i));
        }
        interp.execute(content);
    }

    public function get(field:String):Dynamic
		return interp.variables.get(field);

	/**
	 * [Sets a field within the module to a new value]
	 * @param field 
	 * @param value 
	 * @return interp.variables.set(field, value)
	 */
	public function set(field:String, value:Dynamic)
		interp.variables.set(field, value);

	/**
		* [Checks the existence of a value or exposure within the module]
		* @param field 
		* @return Bool
				return interp.variables.exists(field)
	 */
	public function exists(field:String):Bool
		return interp.variables.exists(field);
}