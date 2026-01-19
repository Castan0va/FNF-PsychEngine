function onBeatHit()
    if curBeat > 3.9 then
        if curBeat < 240 then
        triggerEvent('Add Camera Zoom','0.02','0')
        setProperty('camZooming', true)
        end
    end
end