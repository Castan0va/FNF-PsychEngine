function onUpdate(elapsed)    if curStep == 0 then

    started = true

end

function onStepHit()
    songPos = getSongPosition()

    local currentBeat = (songPos/5000)*(curBpm/60)

    local currentBeat2 = (songPos/2500)*(curBpm/60)

    doTweenX('opponentmove1', 'dad', -100 - 150*math.sin((currentBeat+12*12)*math.pi), 1)

    doTweenY('opponentmove2', 'dad', -100 - 150*math.sin((currentBeat2+12*12)*math.pi), 2)

    doTweenX('disruptor2', 'disruptor2.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)

    doTweenY('disruptor2', 'disruptor2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)
end
end