--                     [[kinresouls]]
-- [[With this script you can change slot 1 2 3 just with one key]]
-- [[you have to assign which one is best for you]]
-- [[Made by KinreSouls / ⸙ ᴊᴜʟɪᴀɴ¹¹ 모]]
-- [[Discord Server : https://discord.gg/JjhKK wTYs]]

game.StarterGui:SetCore("SendNotification", {
                        Title = "KinreSouls";
                        Text = "press J, K, L to switch slots, also dot ( . ) does a fast reset";
                        Duration = 5;
                        })    
local espupdatetime = 5; autoesp = false
local YouCanSwitchToTheThirdSlot = "Slot3"
local YouCanSwitchToTheSecondSlot = "Slot2"
local YouCanSwitchToTheFirstSlot = "Slot1"

local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()

function Slot3()
    plr.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Character Slot Changer"])
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({YouCanSwitchToTheThirdSlot})
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
end

function Slot2()
    plr.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Character Slot Changer"])
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({YouCanSwitchToTheSecondSlot})
end
function Slot1()
    plr.Backpack.ServerTraits.ChatStart:FireServer(Workspace.FriendlyNPCs["Character Slot Changer"])
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({YouCanSwitchToTheFirstSlot})
end
function respawn()
    if workspace.FriendlyNPCs:FindFirstChild'Hair Stylist' then
        plr.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Hair Stylist"])
        task.wait(0.3)
        plr.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
        task.wait(0.5)
        plr.Backpack.HairScript.RemoteEvent:FireServer("woah")
    end
end
mouse.KeyDown:connect(function(key)
    if key == "j" then--If it didn't work then go back to this slot by pressing this button
        Slot3()
    end
    if key == "k" then--This is the slot that you want to change in to a hybrid
        Slot2()
      end
    if key == "l" then--This is the slot that you want to change in to a hybrid
        Slot1()
    end
    if key == "." then--Press this when the slot is about to switch(Right when it says "Loading...")
        respawn()
    end
end)
