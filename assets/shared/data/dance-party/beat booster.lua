function onBeatHit()
    if curStep > 255 then
        if curStep < 639 then
            triggerEvent('Add Camera Zoom','0.025','0')
            setProperty('camZooming', true)
        end
    end
    if curStep > 767 then
        if curStep < 1151 then
            triggerEvent('Add Camera Zoom','0.025','0')
            setProperty('camZooming', true)
        end
    end
end