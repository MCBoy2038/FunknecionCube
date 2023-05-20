
local huhhx = 0
local huhhy = 0
local c = false
function onCreate()
    setProperty('defaultCamZoom', 1)
end
function onUpdate()
    if curBeat < 4 then
        setPropertyFromGroup('playerStrums', 0, 'alpha', 0)
        setPropertyFromGroup('playerStrums', 1, 'alpha', 0)
        setPropertyFromGroup('playerStrums', 2, 'alpha', 0)
        setPropertyFromGroup('playerStrums', 3, 'alpha', 0)
    else
        setPropertyFromGroup('playerStrums', 0, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 1, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 2, 'alpha', 1)
        setPropertyFromGroup('playerStrums', 3, 'alpha', 1)
    end
end

function onUpdatePost()
    setProperty('songLength', math.random(0,99999999))
    if misses > 5 then
        setProperty('health', -200)
    end
end

function opponentNoteHit()
    c = true
end

function onBeatHit()
    if curBeat % 4 == 0 then
        if c == true then
            setProperty('camHUD.zoom', getProperty('camHUD.zoom') - 0.03)
            setProperty('camGame.zoom', getProperty('camGame.zoom') - 0.015)
        end
    end
end

function onGameOver()
    doTweenAlpha('isfazfaofgghaooua', 'camHUD', 0, 0.75)
end