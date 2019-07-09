local config = {} local XmlSaveFragment=[[<config password='' salt=''/>]] local function LoadFile(FileName) local F = io.open(FileName, "r") if not F then return nil end local C = F:read("*a") F:close() return Cend local function SaveFile(FileName, Content) local F = io.open(FileName, "w") F:write(Content) F:close()end function config.load(T) local Config = T.config local Key = T.key local Data=LoadFile(Config) if not Data then return "No password file saved" end local X = xml.parse{data=Data} local Salt = X.config.salt:S() local TotalKey = filter.base64.enc(crypto.digest{data=Key .. Salt,algorithm='SHA512'}):sub(1,32) local Password = X.config.password:S() Password = filter.base64.dec(Password) Password = filter.aes.dec{data=Password, key=TotalKey} -- If we have a short password need to get rid -- of \0 padding. for i=#Password, 1, -1 do if Password:byte(i) ~= 0 then Password = Password:sub(1, i) break end end return Passwordend local Comment=[[<!-- This config file was saved with the config.load -->]] local XmlSaveFragment=[[<config password='' salt=''/>]] function config.save(T) local Config = T.config local Password = T.password local Key = T.key local Salt = util.guid(128) local TotalKey = filter.base64.enc(crypto.digest{data=Key .. Salt,algorithm='SHA512'}):sub(1,32) local X =  xml.parse{data=XmlSaveFragment} local EncryptedPassword = filter.aes.enc{data=Password, key=TotalKey} EncryptedPassword = filter.base64.enc(EncryptedPassword) X.config.salt = Salt X.config.password = EncryptedPassword local Content = Comment..X:S() SaveFile(Config, Content)end local LoadHelp=[[{ "Returns": [{"Desc": "The decrypted password <u>string</u>."}], "SeeAlso": [ { "Title": "Source code for the encrypt.password.lua module on github", "Link": "https://github.com/interfaceware/iguana-tools/blob/master/shared/encrypt/password.lua" }, { "Title": "Encrypt Password in File", "Link": "http://help.interfaceware.com/v6/encrypt-password-in-file" } ], "Title": "config.load", "Parameters": [ { "config": {"Desc": "Name of the configuration file to load <u>string</u>."}}, { "key": { "Desc": "Key used to decrypt the password in the file <u>string</u>."}}], "ParameterTable": true, "Usage": "config.load{config=&lt;filename&gt;, key=&lt;decryption key&gt;}", "Examples": [ "--Save the config file - but do not leave this line in the scriptconfig.save{password='my password',config='acmeapp', key='skKddd223kdS'}<br>-- Load the password previously saved to the configuration filelocal Password = config.load{config='acmeapp', key='skKddd223kdS'}" ], "Desc": "This function loads an encrypted password from the specified file in the configuration directory of Iguana that was saved using the config.save{} function"}]] help.set{input_function=config.load, help_data=json.parse{data=LoadHelp}} local SaveHelp=[[{ "Returns": [], "SeeAlso": [ { "Title": "Source code for the encrypt.password.lua module on github", "Link": "https://github.com/interfaceware/iguana-tools/blob/master/shared/encrypt/password.lua" }, { "Title": "Encrypt Password in File", "Link": "http://help.interfaceware.com/v6/encrypt-password-in-file" } ], "Title": "config.save", "Parameters": [ { "password": { "Desc": "The password to save in the file <u>string</u>."}}, { "config": {"Desc": "Name of the configuration file to save to <u>string</u>."}}, { "key" : { "Desc": "Key used to encrypt the saved password <u>string</u>."}}], "ParameterTable": true, "Usage": "config.save{password=&lt;password&gt;, config=&lt;filename&gt;, key=&lt;encryption key&gt;}", "Examples": [ "--Save the config file - but do not leave this line in the scriptconfig.save{password='my password',config='acmeapp', key='skKddd223kdS'}<br>-- Load the password previously saved to the configuration filelocal Password = config.load{config='acmeapp', key='skKddd223kdS'}" ],
-----------------------------------------------------------------------------------
-- Guns Of Boom
-- Game Code Cheat Menu Template v2 9.4
-- ( Modified By MeTo )
-----------------------------------------------------------------------------------

-- Section		: Config
-- Description	: This is script setting.
local MemRange	    = gg.REGION_CODE_APP
local ScriptSpeed   = 350
local DefaultLobby	= {1, 2, 3, 6, 7, 9, 10, 11, 12}
local ShowWarning   = true
local StrongAim     = true

-- Section		: Hack List
-- Description	: In this section, You can declare what hack you want to put.
-- Note			: If Hack.region not set, assume it as heap hack.
local Hack = {"ESP", "AIM","AIMV", "AIMVX","HS","WEAPON", "WP_1", "WP_2", "WP_3", "WP_4", "WP_5", "WP_6", "WP_7"}


Hack["ESP"] = {}
Hack["ESP"].name		= " ESP"
Hack["ESP"].switch 		= "🔴"
Hack["ESP"].address		= 0
Hack["ESP"].on			= 0x01
Hack["ESP"].type		= gg.TYPE_BYTE
Hack["ESP"].sig			= "01h;90h;A0h;E3h;00h;00h;50h;E3h;09h;00h;00h;1Ah::12"
Hack["ESP"].list		= 5
Hack["ESP"].desc		= "Make sure you use this cheat before getting into match."

Hack["AIM"] = {}
Hack["AIM"].name		= " Fiber Aim "
Hack["AIM"].switch 		= "🔴"
Hack["AIM"].address		= 0
Hack["AIM"].on			= 0xEA
Hack["AIM"].type		= gg.TYPE_BYTE
Hack["AIM"].sig			= "C1h;0Ah;B4h;EEh;10h;FAh;F1h;EEh;08h;00h;00h;5Ah::12"
Hack["AIM"].list		= 12

Hack["AIMV"] = {}
Hack["AIMV"].name		= " Aim Base"
Hack["AIMV"].address	= 0
Hack["AIMV"].sig		= "0Dh;1Ah;94h;EDh;00h;0Ah;22h;EEh;01h;8Ah;9Dh;EDh;01h;9Ah;20h;EEh::16"
Hack["AIMV"].list		= 13

Hack["AIMVX"] = {}
Hack["AIMVX"].name		= " Strong Aim 💪"
Hack["AIMVX"].switch 	= "🔴"
Hack["AIMVX"].address	= 0
Hack["AIMVX"].on		= "E3A0043Fh"
Hack["AIMVX"].type		= gg.TYPE_DWORD

Hack["HS"] = {}
Hack["HS"].name			= " Always Headshot"
Hack["HS"].switch 		= "🔴"
Hack["HS"].address		= 0
Hack["HS"].on			= "E3A06002h"
Hack["HS"].type			= gg.TYPE_DWORD
Hack["HS"].sig			= "0ch;00h;84h;E5h;04h;00h;A0h;E1h;00h;10h;A0h;E3h;03h;50h;A0h;E1h;02h;60h;A0h;E1h::20"
Hack["HS"].list			= 17

Hack["WEAPON"] = {}
Hack["WEAPON"].name		= " Weapon Hack"
Hack["WEAPON"].address	= 0
Hack["WEAPON"].sig		= "03h;10h;A0h;E1h;20h;20h;80h;E5h;24h;10h;80h;E5h;1Eh;FFh;2Fh;E1h;0Ah;0Bh;D0h;EDh::20"
Hack["WEAPON"].list		= 21

Hack["WP_1"] = {}
Hack["WP_1"].name		= "Ammo Hack "
Hack["WP_1"].switch 	= "🔴"
Hack["WP_1"].address	= 0
Hack["WP_1"].on			= "E30005DCh"
Hack["WP_1"].type		= gg.TYPE_DWORD


Hack["WP_2"] = {}
Hack["WP_2"].name		= " M"
Hack["WP_2"].switch 	= "On"
Hack["WP_2"].address	= 0
Hack["WP_2"].on			= "E30005DCh"
Hack["WP_2"].type		= gg.TYPE_DWORD

Hack["WP_3"] = {}
Hack["WP_3"].name		= " M"
Hack["WP_3"].switch 	= "On"
Hack["WP_3"].address	= 0
Hack["WP_3"].on			= "E30005DCh"
Hack["WP_3"].type		= gg.TYPE_DWORD

Hack["WP_4"] = {}
Hack["WP_4"].name		= " M"
Hack["WP_4"].switch 	= "On"
Hack["WP_4"].address	= 0
Hack["WP_4"].on			=  "234"
Hack["WP_4"].type	=  gg.TYPE_DWORD
Hack["WP_1"].desc		= "Make sure you use this cheat before getting into match."

Hack["WP_5"] = {}
Hack["WP_5"].name		= "RapidFire"
Hack["WP_5"].switch 	= "🔴"
Hack["WP_5"].address	= 0
Hack["WP_5"].on			= "E3A00000h"
Hack["WP_5"].type		= gg.TYPE_DWORD


Hack["WP_6"] = {}
Hack["WP_6"].name		= " R"
Hack["WP_6"].switch 	= "On"
Hack["WP_6"].address	= 0
Hack["WP_6"].on			= "E3A00000h"
Hack["WP_6"].type		= gg.TYPE_DWORD

Hack["WP_7"] = {}
Hack["WP_7"].name		= " R"
Hack["WP_7"].switch 	= "On"
Hack["WP_7"].address	= 0
Hack["WP_7"].on			= "E3A00000h"
Hack["WP_7"].type		= gg.TYPE_DWORD
Hack["WP_1"].desc		= "Make sure you use this cheat before getting into match."

-- Section		: Function Declaration
-- Description	: This is where hand, leg, mouth, nose a.k.a Important part of the script.

function speedON()

gg.alert('Activate before entering the match. After entering the match passive.Do before each match.')
gg.﻿searchNumber('"60"' ,gg.TYPE_FLOAT)   
gg.getResults(200)
gg.﻿editAll(25, gg.TYPE_FLOAT) 
gg.clearResults()
gg.toast('RapidFire Aktived')
end

function speedOFF()

gg.﻿searchNumber('"25"' ,gg.TYPE_FLOAT)   
gg.getResults(200)
gg.﻿editAll(60, gg.TYPE_FLOAT) 
gg.clearResults()
gg.toast('RapidFire Deaktived')
end


function ShowChangelog()
	PopupBox(
"-- 📜 Changelog --",
[[
○ v9.2	- First upload, ESP Hack only, fixed bug.
...
○ v9.3  - Added Options, Toggle Lobby Cheats, Fixed bugs.
...
○ v9.4  - Esp, Hs, Aim, Ammo Hack Scprit has been updated from the beginning. 
]])
end

function Int2Hex(int)
	return string.format("%X", int)
end

function PopupBox(Caption, Text)
     gg.alert('🔔 ' .. Caption .. ' 🔔\n' .. Text)
end

function SetMemoryValue(address, ggtype, data)
	while(address) and (address ~= 0)  do
		t = {}
		t[1] = {}
		t[1].address = address
		t[1].flags = ggtype
		t[1].value = data
	 if gg.setValues(t) then
			return true
		else
			return false
		end
	end
	return false
end

function GetMemoryValue(address, ggtype)
	while(address) and (address ~= 0) do
		t = {}
		t[1] = {}
		t[1].address = address
		t[1].flags = ggtype
		res = gg.getValues(t)
		if type(res) ~= "string" then
			if ggtype == gg.TYPE_BYTE then
				result = res[1].value & 0xFF
			elseif ggtype == gg.TYPE_WORD then
				result = res[1].value & 0xFFFF
			elseif ggtype == gg.TYPE_DWORD then
				result = res[1].value & 0xFFFFFFFF
			elseif ggtype == gg.TYPE_QWORD then
				result = res[1].value & 0xFFFFFFFFFFFFFFFF
			elseif ggtype == gg.TYPE_XOR then
				result = res[1].value & 0xFFFFFFFF
			else
				result = res[1].value
			end
			return result
		else
			return nil
		end
	end
	return nil
end

HackErr = 0
function ScanArrayOfByte(h)
	gg.clearResults();
	gg.searchNumber(h.sig, gg.TYPE_BYTE)
	rCount = gg.getResultCount()
	while(rCount) and (rCount >= h.list) do
		rAddress = gg.getResults(rCount)[h.list].address
		gg.clearResults();
		if rAddress then
			h.address = rAddress
			gg.toast("ℹ️ "..h.name .. " is ready.", true)
			if h.on ~= nil	then h.off = GetMemoryValue(h.address, h.type) end
			return rAddress 
		end
		break
	end
	gg.clearResults();
	PopupBox("Oops, An Error Occured !", "Failed searching" ..h.name.. ", it will be disabled.")
	HackErr = HackErr + 1
	sXs = "Unstable: " .. tostring(HackErr)
	return false
end

function HeapHandler(h)
	gg.clearResults()
	oRange = gg.getRanges()
	if oRange ~= h.region then gg.setRanges(h.region) end
	gg.searchNumber(sValue, h.type)
	rCount = gg.getResultCount()
	while (rCount) and (rCount >= h.pull) do
		gg.getResults(h.pull)
		gg.editAll(mValue, h.type)
		break
	end
	gg.setRanges(oRange)
	gg.clearResults()
end

function CheatHandler(h)
	if h.desc ~= nil and h.desc ~= 1 and ShowWarning == true then PopupBox("Notice:".. h.name, h.desc); h.desc = 1 end
  while(h.address) and (h.address ~= 0) do
    if h.on == nil then return true end
    if h.off == nil then h.off = GetMemoryValue(h.address, h.type) end
    if h.switch ~= nil then
      gg.toast( "✅" ..h.name.." -> "..h.switch, true)
      if h.switch == "🔴" then
          mValue = h.on
          sValue = h.off
          h.switch = "🔵"
        elseif h.switch == "🔵" then
          mValue = h.off
          sValue = h.on
          h.switch = "🔴"
      end
      if h.region ~= nil then return HeapHandler(h) end -- If region not set, assume it as heap hack.
      SetMemoryValue(h.address, h.type, mValue)
      return false
    end
  end
  PopupBox("Error", h.name .. " has been disabled.")
  return true
end

function RestoreValue(h)
	if h.switch ~= nil then h.switch = "🔵" end
	if h.desc ~= nil then h.desc = 1 end
	CheatHandler(h)
end

-- Section		: Main Code
-- Description	: This where first code get executed known as Main code.
gg.setVisible(false)
gg.setRanges(MemRange)

CfgFile = gg.getFile()..".apizcfg" 
Chunk = loadfile(CfgFile) if Chunk ~= nil then local CfgTable = Chunk() DefaultLobby  = CfgTable[1] ShowWarning   = CfgTable[2] StrongAim     = CfgTable[3] end
sXs = "Stable"
gg.toast("⚙️ Initializing script...", true)
-- Get address of cheat, Using AOB Scan.
ScanArrayOfByte(Hack["ESP"])
ScanArrayOfByte(Hack["AIM"])
Hack["AIMVX"].address = ScanArrayOfByte(Hack["AIMV"]) + 0x4
ScanArrayOfByte(Hack["HS"])
WpnBase	= ScanArrayOfByte(Hack["WEAPON"])
if WpnBase ~= 0 then
Hack["WP_1"].address = WpnBase + 0x84
Hack["WP_2"].address = WpnBase + 0x84
Hack["WP_3"].address = WpnBase + 0x84
Hack["WP_4"].address = WpnBase + 0x74
Hack["WP_5"].address = WpnBase + 0x74
Hack["WP_6"].address = WpnBase + 0x74
Hack["WP_7"].address = WpnBase + 0x74
end
HackList	= {} for _ in ipairs(Hack) do HackList[_] = Hack[_] end
PopupBox("Warning !", "I will not responsible for any ban, by using this script means you ready to get ban anytime.\n- By MeTo-")
gg.setVisible(true)

while(true) do
	if gg.isVisible(true) then 
		gg.setVisible(false)
	
		i = gg.choice({
		-- Menu Of Cheats, Each cheat separated by ","
		"• 👀 ~  " .. Hack["ESP"].switch .. Hack["ESP"].name,
		"• 🎯 ~  " .. Hack["AIM"].switch .. Hack["AIM"].name,
		"• 🤕 ~  " .. Hack["HS"].switch .. Hack["HS"].name,
		"• 📮 ~  " .. Hack["WP_1"].switch .. Hack["WP_1"].name,
   "• 💥 ~  " .. Hack["WP_5"].switch .. Hack["WP_5"].name,
   "• 🔫 Ultra Rapid Fire/Manual",
		"• 🛠️ Options",
		"• 🚪 Quit Script"
		}, 
		nil, 
		-- Menu Of Cheat Header
		"🔱 🇬‌🇺‌🇳‌🇸‌ 🇴‌🇫‌ 🇧‌🇴‌🇴‌🇲‌ 🔱 "
		)
   	 if i == 1then CheatHandler(Hack["ESP"]) end
		if i == 2 then 
				CheatHandler(Hack["AIM"])
      if StrongAim == true then
        CheatHandler(Hack["AIMVX"])
      end
		end
		if i == 3 then CheatHandler(Hack["HS"]) end
		if i == 4 then 
			CheatHandler(Hack["WP_1"])
	    CheatHandler(Hack["WP_2"]) 
			CheatHandler(Hack["WP_3"]) 
     CheatHandler(Hack["WP_4"])
end
if i == 5 then
     CheatHandler(Hack["WP_5"])
			CheatHandler(Hack["WP_6"]) 
			CheatHandler(Hack["WP_7"]) 
		end
		if i == 7 then
		-- Options Start !!
			while(true) do
				o = gg.choice({
				"🎛️ Lobby Cheat Configuration", 
				"⚠️ Show Warning:  "..tostring(ShowWarning), 
				"💪 Strong Aim (Buggy):  "..tostring(StrongAim), 
				"📑 Changelog", 
				"↩️ Back"}, nil, "Options")
				if o == 1 then
					HackName = {}
					ToggleVar = {}
					for _=1, #HackList do table.insert(HackName, Hack[HackList[_]].name) end
					for _=1, #HackList do for __ = 1, #DefaultLobby do Var = false if DefaultLobby[__] == _ then Var = true break end end table.insert(ToggleVar, Var) end
					Enabled = gg.multiChoice(HackName, ToggleVar, "📝 Lobby Cheat Configuration")
					if Enabled ~= nil then 
						NewLobbyData = {} for _=1, #HackList do if Enabled[_] == true then table.insert(NewLobbyData, _) end end
						Str = "" for _=1, #NewLobbyData do Str = Str .. string.format("%d. %s\n", _, Hack[HackList[NewLobbyData[_]]].name) end
						if gg.alert("🗜️ Apply Modification ?\n\n"..Str, "🔨 Apply", "⚔️ Cancel") == 1 then DefaultLobby = NewLobbyData gg.toast("🛡️ Applied !") else gg.toast("🛡️ Cancelled !") end
					end
				end
				if o == 2 then ShowWarning = not ShowWarning end
				if o == 3 then StrongAim = not StrongAim end
				if o == 4 then ShowChangelog() end
				if o == 5 then gg.saveVariable({DefaultLobby, ShowWarning, StrongAim}, CfgFile) gg.toast("⚒️ Config Saved !") gg.setVisible(true) break end
			end
		-- Options End !!
		end
if i == 6 then
	k = gg.choice({
					"✅  Aktived - Lobby - ⚪️ ",
					"✖  Deaktived - Match ⚫️ ",
				"⬅️ Back"}, nil, " Ultra Rapid Fire/Manual")
					if k == 1 then speedON() end
					if k == 2 then speedOFF() end
        if k == 3 then gg.setVisible(true) end	
        end	
		if i == 8 then break end
	end
	gg.sleep(ScriptSpeed)
end

-- Section		  : Cleaning
-- Description	: In case you need to disable hack before quitting script.
_ = "Don't forget to <3 me at GameGuardian Forum."
if gg.alert("🤯 Keep in background ?\n\nLeaving hack running in background will cause this script unstable when it executed again.\nTurn off all hack ?", "🔔 Yes", "⚠️ No") == 1 then
	for _=1, #HackList do RestoreValue(Hack[HackList[_]]) end
	gg.toast("📷 All hack turn off. " .. _)
else 
	gg.toast("📸 You have been warned. " .. _)
end

-- Section		  : End Of Code
-- Description	: Happy Ending !
print([[
If you enjoyed using this, Don't forget to give me <3 at forum :D
saiaapiz@GG
]])
os.exit()


