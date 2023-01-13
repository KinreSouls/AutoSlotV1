--                      [[KinreSouls]]              
--[[With this script you can change slot 1 2 3 just with one key]]
--[[you have to assign which one is best for you]]
--[[Made by KinreSouls / ⸙ ᴊᴜʟɪᴀɴ¹¹ ]]
--[[Discord Server : http://discord.gg/cUSrqMSsY2]]

local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()

local CanYouSwitchToThefirstSlot = "Slot1"
local CanYouSwitchToTheseconSlot = "Slot2"
local CanYouSwitchToTheThirdSlot = "Slot3"

game.StarterGui:SetCore("SendNotification", {
                        Title = "KinreSouls";
                        Text = "Welcome AutoSlot, you can change Slot with the keys (J, K, L) and you can do Fast Reset ( , ) or Hard Reset with ( . )";
                        Duration = 5;
                        })    
local espupdatetime = 5; autoesp = false


function Slot1()
    plr.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Character Slot Changer"])
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({CanYouSwitchToThefirstSlot})
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
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({CanYouSwitchToTheseconSlot})
end
function Slot3()
    plr.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Character Slot Changer"])
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({"k"})
    task.wait(0.5)
    plr.Backpack.ServerTraits.ChatAdvance:FireServer({CanYouSwitchToTheThirdSlot})
end


mouse.KeyDown:connect(function(key)
    if key == "j" then--If it didn't work then go back to this slot by pressing this button
        Slot1()
    end
    if key == "k" then--This is the slot that you want to change in to a hybrid
        Slot2()
    end
    if key == "l" then--Press this when the slot is about to switch(Right when it says "Loading...")
        Slot3()
    end
end)

print("Injected!")
print("Fast Hard Reset")
wait(0.1)

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()

Mouse.KeyDown:connect(function(Key)
   Key = Key:lower()
   if Key == '.' then
       Player.Character.Humanoid.Health = 0
end
end)
getgenv().Executed = false
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/FortniBloxYT1/Venyx-UI/main/Venyx.lua"))()
local BoogaHub = Library.new
local Player, UIS, RS, VU, TeleportService , KIGMToggled, TeleSpeed, SpamMelee, AntiGrabRespawn, SpamKi, ServerDestroyer, RespawnKey, OtherRespawnKey, Buying, BuyingEXP, SpammingMoves, AutoFarming, Attacking, HeavyAttacking , SilentEGM, ResetStamina, Ressetting, BeanSpam, AutoFarming, AutoForm, TpKey, NpcsMode, AutoBlock, LoopAttach, OldPercentatge, Power, autoFarmDistance = game.Players.LocalPlayer, game:GetService("UserInputService"), game:GetService("RunService"),game:GetService("VirtualUser"),game:GetService("TeleportService"),false,false,false,false,false,false,Enum.KeyCode.Comma,Enum.KeyCode.Clear,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,Enum.KeyCode.Clear,100,100,2
local TouchyCFrame
local function ResetRace()
	if Player.Character.Race.Value == "Saiyan" or Player.Character.Race.Value == "Android" or Player.Character.Race.Value == "Human" then
		return true
	else
		return false
	end
end

local function ResetCharacter()
	Player.Character.Humanoid.Health = 0
	Player.Character.Head:Destroy()
end

local function Respawn()
	if game.PlaceId ~= 536102540 then ResetCharacter() return end
	if game.PlaceId == 536102540 and not ResetRace() then ResetCharacter() return end
	Player.Character:WaitForChild('HumanoidRootPart')
	Toggled = true
	CurrentFrame3 = Player.Character.HumanoidRootPart.CFrame
	Player.Backpack.ServerTraits.ChatStart:FireServer(workspace.FriendlyNPCs["Hair Stylist"])
	task.wait(.430)
	game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
	task.wait(.430)
	Player.Backpack.HairScript.RemoteEvent:FireServer("woah")

	Player.CharacterAdded:Connect(function()
		if not Toggled then
			return
		end
		repeat
			task.wait()
			Player.Character.HumanoidRootPart.CFrame = CurrentFrame3
		until Player.Character:FindFirstChild("PowerOutput")
		Toggled = false
	end)
end

UIS.InputBegan:Connect(function(Input,GameProcessedEvent)
	if GameProcessedEvent then return end
	if Input.KeyCode == RespawnKey then
		if game.PlaceId == 536102540 and ResetRace() then
			Respawn()
		else
			ResetCharacter()
		end
	end
end)

UIS.InputBegan:Connect(function(Input,GameProcessedEvent)
	if GameProcessedEvent then return end
	if Input.KeyCode == OtherRespawnKey then
		game.Players.LocalPlayer.Backpack.ServerTraits.ChatStart:FireServer(game.Workspace.FriendlyNPCs["Hair Stylist"])
		task.wait(.450)
		game.Players.LocalPlayer.Backpack.ServerTraits.ChatAdvance:FireServer({"Yes"})
		task.wait(.450)
		game.Players.LocalPlayer.Backpack.HairScript.RemoteEvent:FireServer("woah")
	end
end)

UIS.InputBegan:Connect(function(Input,GameProcessedEvent)
	if GameProcessedEvent then return end
	if Input.KeyCode == Enum.KeyCode.V and SkyBeam then
		if Player.Character:FindFirstChild("Blast") then
			if Player.Character.Blast:FindFirstChild("Weld") then
				Player.Character.Blast.Weld:Destroy()
				Player.Character.Blast.Anchored = false
			end
		end
	end
end)


local Main = BoogaHub:addPage("Main", 5012544693)
local MainSection3 = Main:addSection("Main Toggles | Section 3")
MainSection3:addKeybind("Fast Reset", Enum.KeyCode.Comma, function()

end, function(Key) 
	RespawnKey = Key.KeyCode
end)

MainSection3:addKeybind("Fast Reset (No Save Pos)", Enum.KeyCode.Clear, function()

end, function(Key) 
	OtherRespawnKey = Key.KeyCode
end)

