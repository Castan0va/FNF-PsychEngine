local allowCountdown = false 

function onStartCountdown() 
    if not allowCountdown then
        if isStoryMode then
	        return Function_Stop
        else
            return Function_Continue
        end
	end

	if allowCountdown then
	    return Function_Continue
	end
end

function onCreate() -- sprite loading

    setProperty('iconP1.y',getProperty('iconP1.y')-20)
    
    setProperty('iconP2.y',getProperty('iconP2.y')-20)

    setProperty('healthBar.x', 90)

    if not downscroll then
        setProperty('healthBar.y', 605)
        makeLuaSprite('health', 'healthBar2', 51, 560)
        addLuaSprite('health')
        setObjectCamera('health', 'hud')
        runHaxeCode('game.uiGroup.insert(game.uiGroup.members.indexOf(game.iconP1), game.getLuaObject("health"));')
    end

    if downscroll then
        setProperty('healthBar.y', 20)
        makeLuaSprite('health', 'healthBar2', 51, -20)
        addLuaSprite('health')
        setObjectCamera('health', 'hud')
        runHaxeCode('game.uiGroup.insert(game.uiGroup.members.indexOf(game.iconP1), game.getLuaObject("health"));')
    end
    
    if hideHud == true then
        doTweenAlpha('healthtween3', 'health', 0, 0.01, linear)
    end
    if  isStoryMode then
        doTweenAlpha('fadingout1', 'healthBar', 0, 0.01)
        doTweenAlpha('fadingout2', 'scoreTxt', 0, 0.01)
        doTweenAlpha('fadingout3', 'iconP1', 0, 0.01)
        doTweenAlpha('fadingout4', 'iconP2', 0, 0.01)
        doTweenAlpha('fadingout5', 'health', 0, 0.01)
        setProperty('camGame.zoom', 1)
        runTimer('camChange', 2, 1) --timer
        cameraSetTarget('dad')
        playSound('street ambience', 1)
    end
end

function onTimerCompleted(tag) 
    if tag == 'camChange' then --cutscene stuff
        runTimer('introbf', 1, 1)
        runTimer('bfwhoosh', 0.55, 1) --timer
        cameraSetTarget('bf')
    elseif tag == 'bfwhoosh' then
        playSound('whoosh', 1)
    elseif tag == 'introbf' then
        runTimer('introsunky', 0.5, 1)
        characterPlayAnim('bf', 'intro', true);
        runTimer('sunkycrunch', 0.7, 1)
    elseif tag == 'introsunky' then
        runTimer('bfhey', 1.2, 1)
        characterPlayAnim('dad', 'intro', true);
    elseif tag == 'sunkycrunch' then
        playSound('crunch', 1)
    elseif tag == 'bfhey' then
        runTimer('CutEnd', 1.2, 1)
        characterPlayAnim('bf', 'yeah!', true);
        playSound('hey', 1)
    elseif tag == 'CutEnd' then
        doTweenAlpha('fadingin1', 'healthBar', 1, 0.5)
        doTweenAlpha('fadingin2', 'scoreTxt', 1, 0.5)
        doTweenAlpha('fadingin3', 'iconP1', 1, 0.5)
        doTweenAlpha('fadingin4', 'iconP2', 1, 0.5)
        doTweenAlpha('fadingin5', 'health', 1, 0.5)
        allowCountdown = true
        startCountdown()
    end
end