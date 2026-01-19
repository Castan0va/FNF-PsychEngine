function opponentNoteHit()
    if curStep > transform-time then
    health = getProperty('health')
    if getProperty('health') > 0.2 then
            setProperty('health', health- 0.015);
        end
    end
end