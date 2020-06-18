--
--
-- level1_screen.lua
-- Created by: Your Name
-- Date: Month Day, Year
-- Description: This is the level 1 screen of the game.
-----------------------------------------------------------------------------------------


-----------------------------------------------------------------------------------------
-- INITIALIZATIONS
-----------------------------------------------------------------------------------------

-- Use Composer Libraries
local composer = require( "composer" )
local widget = require( "widget" )
local physics = require("physics")
-----------------------------------------------------------------------------------------

-- Naming Scene
sceneName = "level1_screen"
-- Creating Scene Object
local scene = composer.newScene( sceneName )
-----------------------------------------------------------------------------------------
-- LOCAL VARIABLES
-----------------------------------------------------------------------------------------

-- The local variables for this scene
local bkg_image
local muteButton
local unmuteButton

-----------------------------------------------------------------------------------------
-- GLOBAL VARIABLES
-----------------------------------------------------------------------------------------

soundOn = true
-----------------------------------------------------------------------------------------
--Music
-----------------------------------------------------------------------------------------
local Music1 = audio.loadSound("Sounds/Music1.mp3")
local Music1Channel

local Music2 = audio.loadSound("Sounds/Music2.mp3")
local Music2Channel

local Music3 = audio.loadSound("Sounds/Music3.mp3")
local Music3Channel






-----------------------------------------------------------------------------------------
--Functions
-----------------------------------------------------------------------------------------
local function Mute(touch)
    if (touch.phase == "ended") then
    -- pause the sound 
        audio.pause(Music1)
        audio.pause(Music2)
        audio.pause(Music3)
             --mute it
             soundOn = false
            --hide the mute button and show the unmute button 
         muteButton.isVisible = true
         unmuteButton.isVisible = false
    end
end




local function unmute(touch)
    if (touch.phase == "ended") then
    -- pause the sound 
        audio.resume(Music1)
        audio.resume(Music2)
        audio.resume(Music3)
         --mute it
         soundOn = true
        --hide the mute button and show the unmute button 
        muteButton.isVisible = false
        unmuteButton.isVisible = true
    end
end

local function AddPhysicsBodies()   
    physics.addBody(ground,"static", {friction=0.2, bounce=0.3})
    physics.addBody(wallL,"static", {friction=0.5, bounce=0.9}) 
    physics.addBody(wallR,"static", {friction=0.5, bounce=0.9})
    physics.addBody(dropZone,"static", {friction=0.5, bounce=0.9})

    physics.addBody(pinS,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin1,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin2,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin3,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin4,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin5,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin6,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin7,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin8,"static", {friction=0.5, bounce=0.3, radius=25})

    physics.addBody(pin9,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin10,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin11,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin12,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin13,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin14,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin15,"static", {friction=0.5, bounce=0.3, radius=25})

    physics.addBody(pin16,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin17,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin18,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin19,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin20,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin21,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin22,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin23,"static", {friction=0.5, bounce=0.3, radius=25})

    physics.addBody(pin24,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin25,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin26,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin27,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin28,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin29,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin30,"static", {friction=0.5, bounce=0.3, radius=25})

    physics.addBody(pin31,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin32,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin33,"static", {friction=0.5, bounce=0.3, radius=25})
    physics.addBody(pin34,"static", {friction=0.5, bounce=0.3, radius=25})

    physics.addBody(gate1,"static", {friction=0, radius=15})
    physics.addBody(gate2,"static", {friction=0, radius=15})
    physics.addBody(gate3,"static", {friction=0, radius=15})
    physics.addBody(gate4,"static", {friction=0, radius=15})
    physics.addBody(gate5,"static", {friction=0, radius=15})
    physics.addBody(gate6,"static", {friction=0, radius=15})
    physics.addBody(gate7,"static", {friction=0, radius=15})


    physics.addBody(Ball1, {density=2.0, friction=0.5, bounce=.95, radius=25})
    physics.addBody(Ball2, {density=2.0, friction=0.5, bounce=.96, radius=25})
    physics.addBody(Ball3, {density=2.0, friction=0.5, bounce=.97, radius=25})
    
    end
local function RemovePhysicsBodies()   
    physics.removeBody(ground)
    physics.removeBody(wallL) 
    physics.removeBody(wallR)
    physics.removeBody(dropZone)

    physics.removeBody(pinS)
    physics.removeBody(pin1)
    physics.removeBody(pin2)
    physics.removeBody(pin3)
    physics.removeBody(pin4)
    physics.removeBody(pin5)
    physics.removeBody(pin6)
    physics.removeBody(pin7)
    physics.removeBody(pin8)

    physics.removeBody(pin9)
    physics.removeBody(pin10)
    physics.removeBody(pin11)
    physics.removeBody(pin12)
    physics.removeBody(pin13)
    physics.removeBody(pin14)
    physics.removeBody(pin15)

    physics.removeBody(pin16)
    physics.removeBody(pin17)
    physics.removeBody(pin18)
    physics.removeBody(pin19)
    physics.removeBody(pin20)
    physics.removeBody(pin21)
    physics.removeBody(pin22)
    physics.removeBody(pin23)

    physics.removeBody(pin24)
    physics.removeBody(pin25)
    physics.removeBody(pin26)
    physics.removeBody(pin27)
    physics.removeBody(pin28)
    physics.removeBody(pin29)
    physics.removeBody(pin30)

    physics.removeBody(pin31)
    physics.removeBody(pin32)
    physics.removeBody(pin33)
    physics.removeBody(pin34)

    physics.removeBody(gate1)
    physics.removeBody(gate2)
    physics.removeBody(gate3)
    physics.removeBody(gate4)
    physics.removeBody(gate5)
    physics.removeBody(gate6)

    physics.removeBody(Ball1)
    physics.removeBody(Ball2)
    physics.removeBody(Ball3)
    
    end
function Nitro( event )
    -- if thouch faze started
    if (event.phase == "began") then
    
    Ball1.x = 30
    Ball1.y = 106

    Ball2.x = 30
    Ball2.y = 53

    Ball3.x = 30
    Ball3.y = 2
    
    dropZone.x = 500
    end
end

function StartGame( event )
    -- if thouch faze started
    if (event.phase == "began") then
        dropZone.x = -1000
    end
end

-- Creating Transitioning Function back to main menu
local function BackTransition( )
    composer.gotoScene( "main_menu", {effect = "slideUp", time = 500})
end



-----------------------------------------------------------------------------------------
-- GLOBAL SCENE FUNCTIONS
-----------------------------------------------------------------------------------------

-- The function called when the screen doesn't exist
function scene:create( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view
    ------------------------------------------------------------------------------------------
    --Images
 -- Insert the background image
    bkg_image = display.newImageRect("Images/level1_screen.png", display.contentWidth, display.contentHeight)
    bkg_image.x = display.contentCenterX
    bkg_image.y = display.contentCenterY
    bkg_image.width = display.contentWidth
    bkg_image.height = display.contentHeight

        -- Insert background image into the scene group in order to ONLY be associated with this scene
    sceneGroup:insert( bkg_image )    

     -----------------------------------------------------------------------------------------
    -- BUTTON WIDGETS
    -----------------------------------------------------------------------------------------

    -- Creating Back Button
    backButton = widget.newButton( 
    {
        -- Setting Position
        x = 100,
        y = 50,

        -- Setting Dimensions
        width = 180,
        height = 70,
         
        -- Setting Visual Properties
        defaultFile = "Images/Back Button Unpressed.png",
        overFile = "Images/Back Button Pressed.png",

        -- Setting Functional Properties
        onRelease = BackTransition

    } )


    -- Associating Buttons with this scene
  

    muteButton = display.newImageRect("Images/muteButton.png", 200, 200)
    muteButton.x = display.contentWidth - 50
    muteButton.y = 50
    muteButton.isVisible = false
    muteButton.xScale = .5
    muteButton.yScale = .5
    

    unmuteButton = display.newImageRect("Images/unmute button.png", 200, 200)
    unmuteButton.x = display.contentWidth - 50
    unmuteButton.y = 50
    unmuteButton.isVisible = true
    unmuteButton.xScale = .5
    unmuteButton.yScale = .5


    Gfuel = display.newImage("Images/Gfuel.png", 50, 50)
    Gfuel.x = display.contentWidth - 50
    Gfuel.y = 200
    Gfuel.xScale = .15
    Gfuel.yScale = .15


    ground = display.newImage("Images/floor.png", 50, 50)
    ground.x = display.contentWidth/2
    ground.y = 850
    ground.width = display.contentWidth

    wallL = display.newImage("Images/floor.png", 50, 50)
    wallL.x = -80
    wallL.y = 260
    wallL.width = display.contentWidth
    wallL:rotate(90)

   

    wallR = display.newImage("Images/floor.png", 50, 50)
    wallR.x = 1106
    wallR.y = 255
    wallR.width = display.contentWidth
    wallR:rotate(90)
    
    
   


    dropZone = display.newImage("Images/floor.png", 50, 50)
    dropZone.x = display.contentWidth/2
    dropZone.y = 240
    dropZone.width = display.contentWidth
    dropZone:rotate(5)
    

     fifteen = display.newImage("Images/-15.tif", 50, 50)
     fifteen.x = 100
     fifteen.y = 690
    fifteen.xScale = .4
    fifteen.yScale = .4
    
    fifteen2 = display.newImage("Images/-15.tif", 50, 50)
     fifteen2.x = 940
     fifteen2.y = 690
    fifteen2.xScale = .4
    fifteen2.yScale = .4


     ten = display.newImage("Images/10.tif", 50, 50)
     ten.x = 470
     ten.y = 690
     ten.xScale = .4
     ten.yScale = .4
   
    ten2 = display.newImage("Images/10.tif", 50, 50)
     ten2.x = 580
     ten2.y = 690
     ten2.xScale = .4
     ten2.yScale = .4
   

    twentyFive = display.newImage("Images/25.tif", 50, 50)
    twentyFive.x = 220
    twentyFive.y = 690
    twentyFive.xScale = .4
    twentyFive.yScale = .4

    twentyFive2 = display.newImage("Images/25.tif", 50, 50)
    twentyFive2.x = 826
    twentyFive2.y = 690
    twentyFive2.xScale = .4
    twentyFive2.yScale = .4


     fifty = display.newImage("Images/50.tif", 50, 50)
    fifty.x = 340
    fifty.y = 690
    fifty.xScale = .3
    fifty.yScale = .3

     fifty2 = display.newImage("Images/50.tif", 50, 50)
    fifty2.x = 700
    fifty2.y = 690
    fifty2.xScale = .3
    fifty2.yScale = .3




     gate1 = display.newImage("Images/saber.png", 50, 50)
     gate1.x = 160
     gate1.y = 710
     gate1:rotate(327)
    gate1.xScale = .15
    gate1.yScale = .3


     gate2 = display.newImage("Images/saber.png", 50, 50)
     gate2.x = 280
     gate2.y = 710
     gate2:rotate(327)
    gate2.xScale = .15
    gate2.yScale = .3

    gate3 = display.newImage("Images/saber.png", 50, 50)
     gate3.x = 400
     gate3.y = 710
     gate3:rotate(327)
    gate3.xScale = .15
    gate3.yScale = .3

    gate4 = display.newImage("Images/saber.png", 50, 50)
     gate4.x = 520
     gate4.y = 710
     gate4:rotate(327)
    gate4.xScale = .15
    gate4.yScale = .3

    gate5 = display.newImage("Images/saber.png", 50, 50)
     gate5.x = 640
     gate5.y = 710
     gate5:rotate(327)
    gate5.xScale = .15
    gate5.yScale = .3

    gate6 = display.newImage("Images/saber.png", 50, 50)
     gate6.x = 760
     gate6.y = 710
     gate6:rotate(327)
    gate6.xScale = .15
    gate6.yScale = .3

    gate7 = display.newImage("Images/saber.png", 50, 50)
     gate7.x = 880
     gate7.y = 710
     gate7:rotate(327)
    gate7.xScale = .15
    gate7.yScale = .3

    





     pinS = display.newImageRect("Images/Ball1.png", 50, 50)
    pinS.x = 9
    pinS.y = 350
pinS:rotate(45)


    pin1 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin1.x = 100
    pin1.y = 300
pin1:rotate(45)

 pin2 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin2.x = 220
    pin2.y = 300
pin2:rotate(45)

pin3 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin3.x = 340
    pin3.y = 300
pin3:rotate(45)

pin4 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin4.x = 460
    pin4.y = 300
pin4:rotate(45)

pin5 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin5.x = 580
    pin5.y = 300
pin5:rotate(45)

pin6 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin6.x = 700
    pin6.y = 300
pin6:rotate(45)

pin7 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin7.x = 820
    pin7.y = 300
pin7:rotate(45)

pin8 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin8.x = 940
    pin8.y = 300
pin8:rotate(45)




pin9 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin9.x = 160
    pin9.y = 420
pin9:rotate(45)

pin10 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin10.x = 280
    pin10.y = 420
pin10:rotate(45)

pin11 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin11.x = 400
    pin11.y = 420
pin11:rotate(45)

pin12 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin12.x = 520
    pin12.y = 420
pin12:rotate(45)

pin13 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin13.x = 640
    pin13.y = 420
pin13:rotate(45)

pin14 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin14.x = 760
    pin14.y = 420
pin14:rotate(45)

pin15 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin15.x = 880
    pin15.y = 420
pin15:rotate(45)



pin16 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin16.x = 100
    pin16.y = 540
pin16:rotate(45)

pin17 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin17.x = 220
    pin17.y = 540
pin17:rotate(45)

pin18 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin18.x = 340
    pin18.y = 540
pin18:rotate(45)

pin19 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin19.x = 460
    pin19.y = 540
pin19:rotate(45)

pin20 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin20.x = 580
    pin20.y = 540
pin20:rotate(45)

pin21 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin21.x = 700
    pin21.y = 540
pin21:rotate(45)

pin22 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin22.x = 820
    pin22.y = 540
pin22:rotate(45)

pin23 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin23.x = 940
    pin23.y = 540
pin23:rotate(45)



pin24 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin24.x = 160
    pin24.y = 660
pin24:rotate(45)


pin25 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin25.x = 280
    pin25.y = 660
pin25:rotate(45)


pin26 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin26.x = 400
    pin26.y = 660
pin26:rotate(45)


pin27 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin27.x = 520
    pin27.y = 660
pin27:rotate(45)


pin28 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin28.x = 640
    pin28.y = 660
pin28:rotate(45)


pin29 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin29.x = 760
    pin29.y = 660
pin29:rotate(45)


pin30 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin30.x = 880
    pin30.y = 660
pin30:rotate(45)


pin31 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin31.x = 40
    pin31.y = 420
pin31:rotate(45)

pin32 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin32.x = 1000
    pin32.y = 420
pin32:rotate(45)

pin33 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin33.x = 40
    pin33.y = 660
pin33:rotate(45)

pin34 = display.newImageRect("Images/Ball1.png", 50, 50)
    pin34.x = 1000
    pin34.y = 660
pin34:rotate(45)


    Ball1 = display.newImageRect("Images/Ball2.png", 50, 50)
    Ball2 = display.newImageRect("Images/Ball3.png", 50, 50)
    Ball3 = display.newImageRect("Images/ball4.png", 50, 50)
    
    Ball1.x = 30
    Ball1.y = 106

    Ball2.x = 30
    Ball2.y = 53

    Ball3.x = 30
    Ball3.y = 2

    -----------------------------------------------------------------------------------------
    --sceneGroups
    -----------------------------------------------------------------------------------------
    sceneGroup:insert(unmuteButton)
    sceneGroup:insert(muteButton)
    sceneGroup:insert(pin1)
    sceneGroup:insert(pin2)
    sceneGroup:insert(pin3)
    sceneGroup:insert(pin4)
    sceneGroup:insert(pin5)
    sceneGroup:insert(pin6)
    sceneGroup:insert(pin7)
    sceneGroup:insert(pin8)
    sceneGroup:insert(pin9)
    sceneGroup:insert(pin10)
    sceneGroup:insert(pin11)
    sceneGroup:insert(pin12)
    sceneGroup:insert(pin12)
    sceneGroup:insert(pin13)
    sceneGroup:insert(pin14)
    sceneGroup:insert(pin15)
    sceneGroup:insert(pin16)
    sceneGroup:insert(pin17)
    sceneGroup:insert(pin18)
    sceneGroup:insert(pin19)
    sceneGroup:insert(pin20)
    sceneGroup:insert(pin21)
    sceneGroup:insert(pin22)
    sceneGroup:insert(pin23)
    sceneGroup:insert(pin24)
    sceneGroup:insert(pin25)
    sceneGroup:insert(pin26)
    sceneGroup:insert(pin27)
    sceneGroup:insert(pin28)
    sceneGroup:insert(pin29)
    sceneGroup:insert(pin30)
    sceneGroup:insert(pin31)
    sceneGroup:insert(pin32)
    sceneGroup:insert(pin33)
    sceneGroup:insert(pin34)
    sceneGroup:insert(pinS)
    sceneGroup:insert(gate1)
    sceneGroup:insert(gate2)
    sceneGroup:insert(gate3)
    sceneGroup:insert(gate4)
    sceneGroup:insert(gate5)
    sceneGroup:insert(gate6)
    sceneGroup:insert(gate7)
    sceneGroup:insert(fifteen)
    sceneGroup:insert(fifteen2)
    sceneGroup:insert(ten)
    sceneGroup:insert(ten2)
    sceneGroup:insert(twentyFive)
    sceneGroup:insert(twentyFive2)
    sceneGroup:insert(fifty)
    sceneGroup:insert(fifty2)
    sceneGroup:insert(backButton)
    sceneGroup:insert(dropZone)
    sceneGroup:insert(Ball1)
    sceneGroup:insert(Ball2)
    sceneGroup:insert(Ball3)
    sceneGroup:insert(Gfuel)









end --function scene:create( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to appear on screen
function scene:show( event )



    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view
    local phase = event.phase

    -----------------------------------------------------------------------------------------

    if ( phase == "will" ) then

        physics.start()
        -- Called when the scene is still off screen (but is about to come on screen).
    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then

     AddPhysicsBodies()
    --random bkg music 
    randomOperator = math.random(1, 3)
    
    if (randomOperator == 1) then
         Music1Channel = audio.play(Music1)
    elseif (randomOperator == 2) then 
        Music1Channel = audio.play(Music2)
    elseif (randomOperator == 3) then
        Music1Channel = audio.play(Music3)
    end


     
    


     
    
     unmuteButton:addEventListener("touch", Mute)
     muteButton:addEventListener("touch", unmute)
     dropZone:addEventListener( "touch",StartGame )
     Gfuel:addEventListener( "touch", Nitro )

        -- Called when the scene is now on screen.
        -- Insert code here to make the scene come alive.
        -- Example: start timers, begin animation, play audio, etc.
    end

end --function scene:show( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to leave the screen
function scene:hide( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view
    local phase = event.phase

    -----------------------------------------------------------------------------------------

    if ( phase == "will" ) then
        -- Called when the scene is on screen (but is about to go off screen).
        -- Insert code here to "pause" the scene.
        -- Example: stop timers, stop animation, stop audio, etc.
        audio.stop(Music1Channel)
        audio.stop(Music2Channel)
        audio.stop(Music3Channel)
    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then
        -- Called immediately after scene goes off screen.
        muteButton:removeEventListener("touch", Mute)
        unmuteButton:removeEventListener("touch", unmute)

        RemovePhysicsBodies()
    end

end --function scene:hide( event )

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to be destroyed
function scene:destroy( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    -- Called prior to the removal of scene's view ("sceneGroup").
    -- Insert code here to clean up the scene.
    -- Example: remove display objects, save state, etc.

end --function scene:destroy( event )
-----------------------------------------------------------------------------------------
-- EVENT LISTENERS
-----------------------------------------------------------------------------------------

-- Adding Event Listeners
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene
