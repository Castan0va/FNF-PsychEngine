function onCreate()
    songName = 'Gotsta Go Fest' --put name of song here
    credTxt = 'Anon' --song credits (replace with SOUSMSAM9001 when you aren't lazy)
    makeLuaSprite('creditBox', 'creditsDisplay', -550, 250)
    setObjectCamera('creditBox', 'hud')
    addLuaSprite('creditBox')
    makeLuaText('songTxt', songName, 500, -570, 340)
    setTextSize('songTxt', 45)
    setTextFont('songTxt', 'pahf.ttf')
    addLuaText('songTxt')
    makeLuaText('creditTxt', credTxt, 500, -570, 410)
    setTextSize('creditTxt', 40)
    setTextFont('creditTxt', 'pahf.ttf')
    addLuaText('creditTxt')
end

function onStepHit()
    if curStep == 16 then
        doTweenX('credin1', 'creditBox', -100, 1, 'backOut')
        doTweenX('credin2', 'songTxt', -70, 1, 'backOut')
        doTweenX('credin3', 'creditTxt', -70, 1, 'backOut')
    end
    if curStep == 48 then
        doTweenX('credout1', 'creditBox', -550, 1, 'backIn')
        doTweenX('credout2', 'songTxt', -570, 1, 'backIn')
        doTweenX('credout3', 'creditTxt', -570, 1, 'backIn')
    end
end
