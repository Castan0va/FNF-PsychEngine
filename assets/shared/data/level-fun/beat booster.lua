function onBeatHit()
    if curBeat < 264 then
    triggerEvent('Add Camera Zoom','0.015','0')
    setProperty('camZooming', true)
    end
end