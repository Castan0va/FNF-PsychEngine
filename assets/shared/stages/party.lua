function onCreate()
	makeLuaSprite('back', 'stages/mpeg/partyback' ,-600,-300) -- the 2 ending numbers are x,y coordinates
	makeLuaSprite('ground', 'stages/mpeg/partyfloor',-570,-200)
 	makeLuaSprite('ball', 'stages/mpeg/discoball' ,-560,-100)
	makeLuaSprite('overlay', 'stages/mpeg/partyoverlay' ,-500,-230)
	makeLuaSprite('black', 'stages/mpeg/blackpng' ,-500,-230)
	makeAnimatedLuaSprite('speakers', 'stages/mpeg/partyspeakers', -600, -190, 0, 0)
	addAnimationByPrefix('speakers', 'idle', 'idle', 12, false)
	makeAnimatedLuaSprite('lightpull', 'stages/mpeg/lightpull', 280, 0, 0, 0)
	addAnimationByPrefix('lightpull', 'light pull', 'light pull', 12, false)

	setScrollFactor('speakers',1.07,1.07)
	setScrollFactor('ball',1.15,1.15)
	setScrollFactor('overlay',1.15,1.15)

	setGraphicSize('back',2800,1500)
	setGraphicSize('overlay',2800,1500)
	setGraphicSize('speakers',2400,1350)
	setGraphicSize('ball',2400,1350)
	setGraphicSize('ground',2400,1350)
	setGraphicSize('black',4000,4000)

	addLuaSprite('back', false)
	addLuaSprite('speakers', false)
	addLuaSprite('ground', false)
	addLuaSprite('ball', false) 
	addLuaSprite('overlay', true) 
	addLuaSprite('black', false)
	addLuaSprite('lightpull', true)

	setObjectCamera('lightpull', 'hud')

	makeLuaSprite('borderL', 'bordersideL' ,0,0)
    makeLuaSprite('borderR', 'bordersideR' ,1120,0)

    setObjectCamera('borderL', 'hud')
    setObjectCamera('borderR', 'hud')

    addLuaSprite('borderL', true)
    addLuaSprite('borderR', true)
end

function onBeatHit()
	playAnim('speakers', 'idle')
end

function onCreatePost()
	noteTweenX("correction1", 4, 670, 0.1, linear)
	noteTweenX("correction2", 5, 780, 0.1, linear)
	noteTweenX("correction3", 6, 890, 0.1, linear)
	noteTweenX("correction4", 7, 1000, 0.1, linear)
	doTweenAlpha('overlaybye', 'overlay', 0, 0.01, linear)
	doTweenAlpha('ballbye', 'ball', 0, 0.01, linear)
end

function onStepHit()
	if curStep == 6 then
	setProperty('scoreTxt.visible', false)
    setProperty('healthBar.visible', false) -- change this & next 3 to true if u want health
    setProperty('healthBarBG.visible', false)
    setProperty('iconP1.visible', false)
    setProperty('iconP2.visible', false)
    setProperty('timeTxt.visible', false)
    setProperty('timeBar.visible', false)
    setProperty('timeBarBG.visible', false)
	setProperty('health.visible', false)

    setPropertyFromGroup('playerStrums', 0, 'alpha', 0)
    setPropertyFromGroup('playerStrums', 1, 'alpha', 0)
	setPropertyFromGroup('playerStrums', 2, 'alpha', 0)
	setPropertyFromGroup('playerStrums', 3, 'alpha', 0)

    end
	if curStep == 101 then
		playAnim('lightpull', 'light pull')
	end
	if curStep == 112 then
		doTweenAlpha('blackbye', 'black', 0, 0.01, linear)
		doTweenAlpha('overlayhi', 'overlay', 1, 0.01, linear)
		doTweenAlpha('ballhi', 'ball', 1, 0.01, linear)

		setProperty('scoreTxt.visible', true)
        setProperty('healthBar.visible', true)
		setProperty('health.visible', true)
		setProperty('healthBarBG.visible', true)
        setProperty('iconP1.visible', true)
        setProperty('iconP2.visible', true)
        setProperty('timeTxt.visible', true)
        setProperty('timeBar.visible', true)
        setProperty('timeBarBG.visible', true)

        setPropertyFromGroup('playerStrums', 0, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 1, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 2, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 3, 'alpha', 1)
	end
end

