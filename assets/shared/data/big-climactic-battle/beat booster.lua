function onBeatHit()
    if curBeat < 272 then
    triggerEvent('Add Camera Zoom','0.01','0')
    setProperty('camZooming', true)
    end
end