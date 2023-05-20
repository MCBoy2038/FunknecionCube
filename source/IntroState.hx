package;

import flixel.FlxSprite;
import flixel.util.FlxTimer;
import flixel.tweens.FlxTween;
import flixel.tweens.FlxEase;

import flixel.FlxG;

//video
import sys.FileSystem;
import vlc.MP4Handler;

class IntroState extends MusicBeatState
{
    var logo:FlxSprite;
    public static var secret:Bool = false;
    var skin:String = '';
    override function create(){
        if (secret == false){
            skin = 'logo';
        }else{
            skin = 'newgrounds_logo';
        }
        logo = new FlxSprite(0, 0).loadGraphic(Paths.image(skin));
        logo.screenCenter();
        if (secret == true){
            logo.setGraphicSize(Std.int(logo.width * 0.7));
        }
        logo.antialiasing = ClientPrefs.globalAntialiasing;
        logo.alpha = 0;
        //add(logo);
        new FlxTimer().start(0.5, function(tmr:FlxTimer){
            startVideo('haxeStartup');
        });
        super.create();
    }

    override function update(elapsed){
        /*
        FlxTween.tween(logo, {alpha: 1}, 0.7, {ease: FlxEase.quadInOut});
        new FlxTimer().start(2, function(tmr:FlxTimer)
            {
                FlxTween.tween(logo, {alpha: 0}, 0.7, {
                    ease: FlxEase.quadInOut,
                    onComplete: function(twn:FlxTween)
                    {
                        MusicBeatState.switchState(new TitleState());
                    }
                });
            });
        */
        super.update(elapsed);
    }

    public function startVideo(name:String)
        {
            var filepath:String = 'assets/videos/' + name + '.mp4';
            #if sys
            if(!FileSystem.exists(filepath))
            #else
            if(!OpenFlAssets.exists(filepath))
            #end
            {
                FlxG.log.warn('Couldnt find video file: ' + name);
                startAndEnd();
                return;
            }
    
            var video:MP4Handler = new MP4Handler();
            video.playVideo(filepath);
            video.finishCallback = function()
            {
                startAndEnd();
                return;
            }

            trace('JKSDFGHBJKDFGBKJDFBGJK');
        }
    
    function startAndEnd(){
        MusicBeatState.switchState(new TitleState());
    }
}