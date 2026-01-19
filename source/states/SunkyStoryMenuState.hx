package states;

import backend.WeekData;
import backend.Highscore;
import backend.Song;

typedef WeekData = {
    name:String,
    songs:Array<String>
};

class SunkyStoryMenuState extends MusicBeatState{

    var bg:FlxSprite;
    var topBorder:FlxSprite;
    var bottomBorder:FlxSprite;
    var frame:FlxSprite;
    var disc:FlxSprite;
    var frontBuildings:FlxSprite;
    var backBuildings:FlxSprite;
    var sunky:FlxSprite;
    var legacy:FlxSprite;
    var bf:FlxSprite;
    var sunkyWeek:FlxSprite;
    var legacyWeek:FlxSprite;

    var scoreTxt:FlxText;

    var weeks:Array<WeekData> = [
        {name: 'sunk', songs: ['level-fun', 'gotsta-go-fest', 'epic-sunkdown']},
        {name: 'legacysunk', songs: ['level-the-fun-one', 'insert-outdated-song-name-here', 'final-sunkdown']}
    ];

    var select:Int;
    var score:Int;

    var selectedWeek:Bool;

    override function create(){

        super.create();

        select = 0;
        selectedWeek = false;

        bg = new FlxSprite(0, 0).loadGraphic(Paths.image('storymenu/bg'));
        bg.scale.set(0.67, 0.67);
        bg.screenCenter();
        bg.antialiasing = ClientPrefs.data.antialiasing;
        add(bg);

        backBuildings = new FlxSprite(0, 0);
        backBuildings.frames = Paths.getSparrowAtlas('storymenu/backParallax');
		backBuildings.animation.addByPrefix('idle', "parallax", 3);
		backBuildings.animation.play('idle');
        backBuildings.antialiasing = ClientPrefs.data.antialiasing;
        add(backBuildings);

        frontBuildings = new FlxSprite(0, 0);
        frontBuildings.frames = Paths.getSparrowAtlas('storymenu/frontParallax');
		frontBuildings.animation.addByPrefix('idle', "parallax", 3);
		frontBuildings.animation.play('idle');
        frontBuildings.antialiasing = ClientPrefs.data.antialiasing;
        add(frontBuildings);

        FlxTween.tween(backBuildings, {x: -1280}, 10, {ease: FlxEase.linear, type: LOOPING});
        FlxTween.tween(frontBuildings, {x: -1280}, 5, {ease: FlxEase.linear, type: LOOPING});

        topBorder = new FlxSprite(0, 0);
        topBorder.makeGraphic(1280, 60, 0xFF000000);
        add(topBorder);

        bottomBorder = new FlxSprite(0, 660);
        bottomBorder.makeGraphic(1280, 60, 0xFF000000);
        add(bottomBorder);

        scoreTxt = new FlxText(0, 670, 0, "SCORE: 0", 32);
        scoreTxt.setFormat(Paths.font("pah.ttf"), 32, FlxColor.WHITE, RIGHT);
        scoreTxt.screenCenter(X);
        add(scoreTxt);

        frame = new FlxSprite(0, 0).loadGraphic(Paths.image('storymenu/frame'));
        frame.antialiasing = ClientPrefs.data.antialiasing;
        add(frame);

        disc = new FlxSprite(0, -290);
        disc.frames = Paths.getSparrowAtlas('storymenu/disc');
		disc.animation.addByPrefix('sunky', "disc sunky", 10000, false);
		disc.animation.addByPrefix('legacy', "disc legacy", 10000, false);
		disc.animation.play('sunky');
        disc.screenCenter(X);
        disc.antialiasing = ClientPrefs.data.antialiasing;
        add(disc);

        sunkyWeek = new FlxSprite(0, 200).loadGraphic(Paths.image('storymenu/weekSunky'));
        sunkyWeek.scale.set(0.61, 0.61);
        sunkyWeek.screenCenter(X);
        sunkyWeek.antialiasing = ClientPrefs.data.antialiasing;
        add(sunkyWeek);

        legacyWeek = new FlxSprite(0, 200).loadGraphic(Paths.image('storymenu/weekLegacy'));
        legacyWeek.scale.set(0.61, 0.61);
        legacyWeek.screenCenter(X);
        legacyWeek.antialiasing = ClientPrefs.data.antialiasing;
        add(legacyWeek);

        sunky = new FlxSprite(-650, -137);
        sunky.scale.set(0.61, 0.61);
        sunky.frames = Paths.getSparrowAtlas('storymenu/sunky');
		sunky.animation.addByPrefix('idle', "sunky", 24);
		sunky.animation.play('idle');
        sunky.antialiasing = ClientPrefs.data.antialiasing;
        add(sunky);

        legacy = new FlxSprite(-645, -150);
        legacy.scale.set(0.61, 0.61);
        legacy.frames = Paths.getSparrowAtlas('storymenu/legacy');
		legacy.animation.addByPrefix('idle', "legacy", 24);
		legacy.animation.play('idle');
        legacy.antialiasing = ClientPrefs.data.antialiasing;
        add(legacy);

        bf = new FlxSprite(25, -140);
        bf.scale.set(0.61, 0.61);
        bf.frames = Paths.getSparrowAtlas('storymenu/bf');
		bf.animation.addByPrefix('idle', "bf", 24);
		bf.animation.play('idle');
        bf.antialiasing = ClientPrefs.data.antialiasing;
        add(bf);
    }

    override function update(elapsed:Float){

        score = Highscore.getWeekScore(weeks[select].name, 1);
        scoreTxt.text = "WEEK SCORE: " + score;
        scoreTxt.screenCenter(X);

        disc.angle += 360 * elapsed;

        if (select == 0){
            disc.animation.play('sunky');
            sunky.alpha = 1;
            legacy.alpha = 0;
            sunkyWeek.alpha = 1;
            legacyWeek.alpha = 0;
        }
        else if (select == 1){
            disc.animation.play('legacy');
            sunky.alpha = 0;
            legacy.alpha = 1;
            sunkyWeek.alpha = 0;
            legacyWeek.alpha = 1;
        }

        if (controls.ACCEPT){
            FlxG.sound.play(Paths.sound('confirmMenu'));
            PlayState.storyPlaylist = weeks[select].songs;
			PlayState.isStoryMode = true;
			selectedWeek = true;
	
			PlayState.storyDifficulty = 1;
	
            PlayState.SONG = Song.loadFromJson(PlayState.storyPlaylist[0].toLowerCase(), PlayState.storyPlaylist[0].toLowerCase());
            PlayState.campaignScore = 0;
			PlayState.campaignMisses = 0;
            LoadingState.loadAndSwitchState(new PlayState());
        }

        if (controls.BACK && !selectedWeek){
			FlxG.sound.play(Paths.sound('cancelMenu'));
			MusicBeatState.switchState(new SunkyMainMenuState());
		}

        if (controls.UI_UP_P && select > 0){   
            FlxG.sound.play(Paths.sound('scrollMenu'));
			select -= 1;
		}

		if (controls.UI_DOWN_P && select < (weeks.length - 1)){
            FlxG.sound.play(Paths.sound('scrollMenu'));
			select += 1;
		}
        
        super.update(elapsed);

    }
}