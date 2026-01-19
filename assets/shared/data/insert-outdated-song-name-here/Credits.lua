function onCreate()
    songName = 'Insert Outdated Song Name Here' --put name of song here
    credTxt = 'Someone567123' --song credits
    makeLuaSprite('creditBox', 'creditsDisplay', -550, 250)
    setObjectCamera('creditBox', 'hud')
    addLuaSprite('creditBox')
    makeLuaText('songTxt', songName, 450, -490, 325)
    setTextSize('songTxt', 40)
    setTextFont('songTxt', 'pahf.ttf')
    setTextAlignment('songTxt', 'left')
    addLuaText('songTxt')
    makeLuaText('creditTxt', credTxt, 500, -585, 430)
    setTextSize('creditTxt', 34)
    setTextFont('creditTxt', 'pahf.ttf')
    addLuaText('creditTxt')
end

function onStepHit()
    if curStep == 8 then
        doTweenX('credin1', 'creditBox', -100, 1, 'backOut')
        doTweenX('credin2', 'songTxt', 10, 1, 'backOut')
        doTweenX('credin3', 'creditTxt', -85, 1, 'backOut')
    end
    if curStep == 48 then
        doTweenX('credout1', 'creditBox', -550, 1, 'backIn')
        doTweenX('credout2', 'songTxt', -490, 1, 'backIn')
        doTweenX('credout3', 'creditTxt', -585, 1, 'backIn')
    end
end
