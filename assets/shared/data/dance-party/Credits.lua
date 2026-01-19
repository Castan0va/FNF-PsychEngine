function onCreate()
    songName = 'Dance Party' --put name of song here
    credTxt = 'Caystel' --song credits
    songNameSize = 45
    credTxtSize = 40
    makeLuaSprite('creditBox', 'creditsDisplay', -550, 250)
    setObjectCamera('creditBox', 'hud')
    addLuaSprite('creditBox')
    makeLuaText('songTxt', songName, 500, -570, 340)
    setTextSize('songTxt', songNameSize)
    setTextFont('songTxt', 'pahf.ttf')
    addLuaText('songTxt')
    makeLuaText('creditTxt', credTxt, 500, -570, 410)
    setTextSize('creditTxt', credTxtSize)
    setTextFont('creditTxt', 'pahf.ttf')
    addLuaText('creditTxt')

    setObjectOrder('creditTxt', getObjectOrder('creditBox') + 1)
    setObjectOrder('songTxt', getObjectOrder('creditBox') + 1)
end

function onStepHit()
    if curStep == 128 then
        doTweenX('credin1', 'creditBox', 50, 1, 'backOut')
        doTweenX('credin2', 'songTxt', 80, 1, 'backOut')
        doTweenX('credin3', 'creditTxt', 80, 1, 'backOut')
    end
    if curStep == 160 then
        doTweenX('credout1', 'creditBox', -550, 1, 'backIn')
        doTweenX('credout2', 'songTxt', -570, 1, 'backIn')
        doTweenX('credout3', 'creditTxt', -570, 1, 'backIn')
    end
end
