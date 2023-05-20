function onStepHit()

    if curStep == 128 then
 setProperty('defaultCamZoom', 1.0); 
 
    elseif curStep == 251 then
         doTweenAlpha('whitescreen', 'whitescreen', 1, 0.37);    
 
    elseif curStep == 256 then
 setProperty('defaultCamZoom', 0.50); 
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.37);    
 
    elseif curStep == 496 then
 setProperty('defaultCamZoom', 1.0); 
 
    elseif curStep == 508 then
         doTweenAlpha('whitescreen', 'whitescreen', 1, 0.3);    
 
    elseif curStep == 512 then
 setProperty('defaultCamZoom', 0.50); 
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.3);    
 
    elseif curStep == 765 then
         doTweenAlpha('whitescreen', 'whitescreen', 1, 0.28);   
 
    elseif curStep == 768 then
 setProperty('defaultCamZoom', 1); 
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.28);   
 
    elseif curStep == 896 then
 setProperty('defaultCamZoom', 0.75);  
 
    elseif curStep == 1024 then
 setProperty('defaultCamZoom', 1.0);  
 
    elseif curStep == 1152 then
 setProperty('defaultCamZoom', 0.75); 
 
    elseif curStep == 1280 then
 setProperty('defaultCamZoom', 0.50); 
         doTweenAlpha('whitescreen', 'whitescreen', 1, 0);  
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.28);  
 
    elseif curStep == 1408 then
         doTweenAlpha('whitescreen', 'whitescreen', 1, 0);  
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.28);  
 
    elseif curStep == 1531 then
         doTweenAlpha('whitescreen', 'whitescreen', 1, 0.3);   
 
    elseif curStep == 1536 then
 setProperty('defaultCamZoom', 1.0);  
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.28);  
 
    elseif curStep == 1792 then
 setProperty('defaultCamZoom', 0.75);  
 
    elseif curStep == 1920 then
 setProperty('defaultCamZoom', 0.6);  
 
    elseif curStep == 2048 then
 setProperty('defaultCamZoom', 0.50);  
         doTweenAlpha('whitescreen', 'whitescreen', 1, 0);  
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.28);  
 
    elseif curStep == 2288 then
 setProperty('defaultCamZoom', 0.75);
 
    elseif curStep == 2304 then
 setProperty('defaultCamZoom', 0.50);  
         doTweenAlpha('whitescreen', 'whitescreen', 1, 0);  
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.28);   
 
    elseif curStep == 2432 then
         doTweenAlpha('whitescreen', 'whitescreen', 1, 0);  
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.28);   
 
    elseif curStep == 2560 then
         doTweenAlpha('whitescreen', 'whitescreen', 1, 0);  
         doTweenAlpha('whitescreen', 'whitescreen', 0, 1.28);   
 
    elseif curStep == 2752 then
         doTweenAlpha('blackscreen', 'blackscreen', 1, 4.81);   
 
 
 
 end
 end
 
 function onCreate()
 
     makeLuaSprite('blackscreen', 'blackscreen', -300, -300);
     makeGraphic('blackscreen', 4000, 4000, 0xFFFFFF)
     setProperty('blackscreen.color', '000000')
     scaleObject('blackscreen', 6, 6);
     addLuaSprite('blackscreen', true);
     setProperty('blackscreen.alpha',0)
 
     makeLuaSprite('whitescreen', 'whitescreen', -300, -300);
     makeGraphic('whitescreen', 4000, 4000, 0xFFFFFF)
     scaleObject('whitescreen', 6, 6);
     addLuaSprite('whitescreen', true);
     setProperty('whitescreen.alpha',0)
 end