-- Create Date : 03.01.2024 23:25:47

-- role
ROLS = {
	{name = "Танк", value = "tank"},
	{name = "Демагер", value = "dps"},
	{name = "Лекарь", value = "healer"}
};
ROLE_TEXT_SELECTED = ""
ROLE_VALUE_SELECTED = "";

-- class
CLASSES = {
	{name = "Воин", value = "warrior"},
	{name = "Паладин", value = "paladin"},
	{name = "Охотник", value = "hunter"},
	{name = "Разбойник", value = "rogue"},
	{name = "Жрец", value = "priest"},
	{name = "Шаман", value = "shaman"},
	{name = "Маг", value = "mage"},
	{name = "Чернокнижник", value = "warlock"},
	{name = "Друид", value = "druid"}
};
CLASS_TEXT_SELECTED = ""
CLASS_VALUE_SELECTED = "";

-- focus
MARKS = {
	{name = "Звезда", value = "star"},
	{name = "Круг", value = "circle"},
	{name = "Ромб", value = "diamond"},
	{name = "Треугольник", value = "triangle"},
	{name = "Луна", value = "moon"},
	{name = "Квадрат", value = "square"},
	{name = "Крест", value = "cross"},
	{name = "Череп", value = "skull"},
};
MARK_TEXT_SELECTED = ""
MARK_VALUE_SELECTED = "";

-- blessing
BLESSINGS = {
	{name = "Каска", value = "kings"},
	{name = "Кулак", value = "might"},
	{name = "Лайт", value = "light"},
	{name = "МП5", value = "wisdom"},
	{name = "Сальва", value = "salva"},
};
BLESSING_TEXT_SELECTED = ""
BLESSING_VALUE_SELECTED = "";

-- aura
AURAS = {
	{name = "Щит", value = "devo"},
	{name = "Ретри", value = "retr"},
	{name = "Сосред", value = "conc"},
	{name = "Святости", value = "sanc"},
	{name = "от тёмной", value = "shadow"},
	{name = "от льда", value = "frost"},
	{name = "от огня", value = "fire"},
};
AURA_TEXT_SELECTED = ""
AURA_VALUE_SELECTED = "";

-- air totem
ATOTEMS = {
	{name = "Лёгкости", value = "grac"},
	{name = "от природы", value = "natres"},
	{name = "Неистов", value = "windf"},
	{name = "Стены вет", value = "windw"},
	{name = "Безветрия", value = "tranq"},
};
ATOTEM_TEXT_SELECTED = ""
ATOTEM_VALUE_SELECTED = "";

-- earth totem
ETOTEMS = {
	{name = "Оков", value = "earthb"},
	{name = "Когтя", value = "stonec"},
	{name = "Кожи", value = "stones"},
	{name = "Силы", value = "strofe"},
	{name = "Трепета", value = "tremor"},
};
ETOTEM_TEXT_SELECTED = ""
ETOTEM_VALUE_SELECTED = "";

-- fire totem
FTOTEMS = {
	{name = "Кольцоогня", value = "firen"},
	{name = "Магмы", value = "magma"},
	{name = "Опаляющ", value = "sear"},
	{name = "Язык плам", value = "flame"},
	{name = "от льда", value = "frostr"},
};
FTOTEM_TEXT_SELECTED = ""
FTOTEM_VALUE_SELECTED = "";

-- water totem
WTOTEMS = {
	{name = "от огня", value = "fireres"},
	{name = "от болезн", value = "disclean"},
	{name = "Исцеляющ", value = "healstr"},
	{name = "Ист маны", value = "manaspr"},
	{name = "Противояд", value = "poisoncl"},
};
WTOTEM_TEXT_SELECTED = ""
WTOTEM_VALUE_SELECTED = "";

-- drop down
-- class
function Classes_Load()
	UIDropDownMenu_ClearAll(ClassesSet);
	UIDropDownMenu_Initialize(ClassesSet, ClassesnMenu_Build);
end

function ClassesnMenu_Build()
	for i, CLASS in ipairs(CLASSES) do		
		info = {};
		info.text = CLASS.name;
		info.arg1 = CLASS.name;
		info.arg2 = CLASS.value;
		info.notCheckable = true;
		info.func = ClassSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText((CLASS_TEXT_SELECTED ~= "" and CLASS_TEXT_SELECTED or "Class"), ClassesSet);
end

function ClassSelect(name, value) 
	CLASS_TEXT_SELECTED = name;
	CLASS_VALUE_SELECTED = value;
	ClassesSet:SetText(CLASS_TEXT_SELECTED);
end

-- role
function Role_Load()
	UIDropDownMenu_ClearAll(RoleSet);
	UIDropDownMenu_Initialize(RoleSet, RoleMenu_Build);
end

function RoleMenu_Build()
	for i, ROLE in ipairs(ROLS) do		
		local info = {};
		info.text = ROLE.name;
		info.arg1 = ROLE.name;
		info.arg2 = ROLE.value;
		info.notCheckable = true;
		info.func = RoleSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText((ROLE_TEXT_SELECTED ~= "" and ROLE_TEXT_SELECTED or "Role"), RoleSet);
end

function RoleSelect(name, value) 
	ROLE_TEXT_SELECTED = name;
	ROLE_VALUE_SELECTED = value;
	RoleSet:SetText(ROLE_TEXT_SELECTED);
end

-- mark
function Marks_Load()
	UIDropDownMenu_ClearAll(MarksSet);
	UIDropDownMenu_Initialize(MarksSet, MarksMenu_Build);
end

function MarksMenu_Build()
	for i, MARK in ipairs(MARKS) do		
		local info = {};
		info.text = MARK.name;
		info.arg1 = MARK.name;
		info.arg2 = MARK.value;
		info.notCheckable = true;
		info.func = MarkSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText((MARK_TEXT_SELECTED ~= "" and MARK_TEXT_SELECTED or "Marks"), MarksSet);
end

function MarkSelect(name, value) 
	MARK_TEXT_SELECTED = name;
	MARK_VALUE_SELECTED = value;
	MarksSet:SetText(MARK_TEXT_SELECTED);
end

-- bless
function Blessings_Load()
	UIDropDownMenu_ClearAll(BlessingsSet);
	UIDropDownMenu_Initialize(BlessingsSet, BlessingsMenu_Build);
end

function BlessingsMenu_Build()
	for i, BLESSING in ipairs(BLESSINGS) do		
		local info = {};
		info.text = BLESSING.name;
		info.arg1 = BLESSING.name;
		info.arg2 = BLESSING.value;
		info.notCheckable = true;
		info.func = BlessingSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText((BLESSING_TEXT_SELECTED ~= "" and BLESSING_TEXT_SELECTED or "Bless"), BlessingsSet);
end

function BlessingSelect(name, value) 
	BLESSING_TEXT_SELECTED = name;
	BLESSING_VALUE_SELECTED = value;
	BlessingsSet:SetText(BLESSING_TEXT_SELECTED);
end

-- aura
function Auras_Load()
	UIDropDownMenu_ClearAll(AurasSet);
	UIDropDownMenu_Initialize(AurasSet, AurasMenu_Build);
end

function AurasMenu_Build()
	for i, AURA in ipairs(AURAS) do		
		local info = {};
		info.text = AURA.name;
		info.arg1 = AURA.name;
		info.arg2 = AURA.value;
		info.notCheckable = true;
		info.func = AuraSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText((AURA_TEXT_SELECTED ~= "" and AURA_TEXT_SELECTED or "Aura"), AuraSet);
end

function AuraSelect(name, value) 
	AURA_TEXT_SELECTED = name;
	AURA_VALUE_SELECTED = value;
	AurasSet:SetText(AURA_TEXT_SELECTED);
end

-- air totem
function Atotems_Load()
	UIDropDownMenu_ClearAll(AtotemsSet);
	UIDropDownMenu_Initialize(AtotemsSet, AtotemsMenu_Build);
end

function AtotemsMenu_Build()
	for i, ATOTEM in ipairs(ATOTEMS) do		
		local info = {};
		info.text = ATOTEM.name;
		info.arg1 = ATOTEM.name;
		info.arg2 = ATOTEM.value;
		info.notCheckable = true;
		info.func = AtotemSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText((ATOTEM_TEXT_SELECTED ~= "" and ATOTEM_TEXT_SELECTED or "Air"), AtotemSet);
end

function AtotemSelect(name, value) 
	ATOTEM_TEXT_SELECTED = name;
	ATOTEM_VALUE_SELECTED = value;
	AtotemsSet:SetText(ATOTEM_TEXT_SELECTED);
end

-- earth totem
function Etotems_Load()
	UIDropDownMenu_ClearAll(EtotemsSet);
	UIDropDownMenu_Initialize(EtotemsSet, EtotemsMenu_Build);
end

function EtotemsMenu_Build()
	for i, ETOTEM in ipairs(ETOTEMS) do		
		local info = {};
		info.text = ETOTEM.name;
		info.arg1 = ETOTEM.name;
		info.arg2 = ETOTEM.value;
		info.notCheckable = true;
		info.func = EtotemSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText((ETOTEM_TEXT_SELECTED ~= "" and ETOTEM_TEXT_SELECTED or "Earth"), EtotemSet);
end

function EtotemSelect(name, value) 
	ETOTEM_TEXT_SELECTED = name;
	ETOTEM_VALUE_SELECTED = value;
	EtotemsSet:SetText(ETOTEM_TEXT_SELECTED);
end

-- fire totem
function Ftotems_Load()
	UIDropDownMenu_ClearAll(FtotemsSet);
	UIDropDownMenu_Initialize(FtotemsSet, FtotemsMenu_Build);
end

function FtotemsMenu_Build()
	for i, FTOTEM in ipairs(FTOTEMS) do		
		local info = {};
		info.text = FTOTEM.name;
		info.arg1 = FTOTEM.name;
		info.arg2 = FTOTEM.value;
		info.notCheckable = true;
		info.func = FtotemSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText((FTOTEM_TEXT_SELECTED ~= "" and FTOTEM_TEXT_SELECTED or "Fire"), FtotemSet);
end

function FtotemSelect(name, value) 
	FTOTEM_TEXT_SELECTED = name;
	FTOTEM_VALUE_SELECTED = value;
	FtotemsSet:SetText(FTOTEM_TEXT_SELECTED);
end

-- water totem
function Wtotems_Load()
	UIDropDownMenu_ClearAll(WtotemsSet);
	UIDropDownMenu_Initialize(WtotemsSet, WtotemsMenu_Build);
end

function WtotemsMenu_Build()
	for i, WTOTEM in ipairs(WTOTEMS) do		
		local info = {};
		info.text = WTOTEM.name;
		info.arg1 = WTOTEM.name;
		info.arg2 = WTOTEM.value;
		info.notCheckable = true;
		info.func = WtotemSelect;

		UIDropDownMenu_AddButton(info);
	  end

	UIDropDownMenu_SetText((WTOTEM_TEXT_SELECTED ~= "" and WTOTEM_TEXT_SELECTED or "Water"), WtotemSet);
end

function WtotemSelect(name, value) 
	WTOTEM_TEXT_SELECTED = name;
	WTOTEM_VALUE_SELECTED = value;
	WtotemsSet:SetText(WTOTEM_TEXT_SELECTED);
end
-- drop down

function AcceptPal()
  if UnitIsPlayer("target") then
      
      local _, targetClass = UnitClass("target")
      if targetClass ~= "PALADIN" then
          DEFAULT_CHAT_FRAME:AddMessage("Целью должен быть паладин")
          return
      end
      
      if BLESSING_VALUE_SELECTED == "" then
          SendChatMessage(".partybot chblessing kings")
          DEFAULT_CHAT_FRAME:AddMessage("Не выбрано благословление по умолчанию каска.")
      else
          SendChatMessage(".partybot chblessing " .. BLESSING_VALUE_SELECTED)
      end
      
      if AURA_VALUE_SELECTED == "" then
          SendChatMessage(".partybot chaura fire")
          DEFAULT_CHAT_FRAME:AddMessage("Не выбрана аура по умолчанию от огня.")
      else
          SendChatMessage(".partybot chaura " .. AURA_VALUE_SELECTED)
      end
  else
      DEFAULT_CHAT_FRAME:AddMessage("Не выбрана Цель")
  end
end

function AcceptSham()
  if UnitIsPlayer("target") then
      
      local _, targetClass = UnitClass("target")
      if targetClass ~= "SHAMAN" then
          DEFAULT_CHAT_FRAME:AddMessage("Целью должен быть шаман")
          return
      end

      if ATOTEM_VALUE_SELECTED == "" then
          SendChatMessage(".partybot chtotem air grac")
          DEFAULT_CHAT_FRAME:AddMessage("Не выбран тотем воздуха по умолчанию легкости воздуха.")
      else
          SendChatMessage(".partybot chtotem air " .. ATOTEM_VALUE_SELECTED)
      end
      
      if ETOTEM_VALUE_SELECTED == "" then
          SendChatMessage(".partybot chtotem earth strofe")
          DEFAULT_CHAT_FRAME:AddMessage("Не выбран тотем земли по умолчанию силы земли.")
      else
          SendChatMessage(".partybot chtotem earth " .. ETOTEM_VALUE_SELECTED)
      end
      
      if FTOTEM_VALUE_SELECTED == "" then
          SendChatMessage(".partybot chtotem fire sear")
          DEFAULT_CHAT_FRAME:AddMessage("Не выбран тотем огня по умолчанию опаляющий.")
      else
          SendChatMessage(".partybot chtotem fire " .. FTOTEM_VALUE_SELECTED)
      end
      
      if WTOTEM_VALUE_SELECTED == "" then
          SendChatMessage(".partybot chtotem water healstr")
          DEFAULT_CHAT_FRAME:AddMessage("Не выбран тотем воды по умолчанию исцеляющего потока.")
      else
          SendChatMessage(".partybot chtotem water " .. WTOTEM_VALUE_SELECTED)
      end
  else
      DEFAULT_CHAT_FRAME:AddMessage("Не выбрана Цель")
  end
end

-------
EvilPartnerDB = EvilPartnerDB or { live = false }

SLASH_EPLIVE1 = "/eplive"
SlashCmdList["EPLIVE"] = function(msg)
    if msg == "on" then
        EvilPartnerDB.live = true
        ReloadUI()
    elseif msg == "off" then
        EvilPartnerDB.live = false
        ReloadUI()
    elseif msg == "st" then
        local status, r, g, b
        if EvilPartnerDB.live then
            status = "ВКЛ"
            r, g, b = 0, 1, 0
        else
            status = "ВЫКЛ"
            r, g, b = 1, 0.5, 0
        end
        DEFAULT_CHAT_FRAME:AddMessage("Текущее состояние: " .. status, r, g, b)
    else        
        DEFAULT_CHAT_FRAME:AddMessage("Использование: /eplive [on|off|st]", 0.2, 0.6, 1)
    end
end

local function UpdateStatusIndicator()
    local textFrame = getglobal("EvilPartnerStatusFrame")
    if textFrame then
        if EvilPartnerDB.live then
            textFrame:Show() 
        else
            textFrame:Hide()
        end
    end
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", function()
    UpdateStatusIndicator()
end)

--[[
   --## test ##--
function PartyBotClone()
	if (EvilPartnerDB.live == true) then
		print("Включено")
	else
		print("Отключено")
	end	
end
]]
-------

function PartyBotAddBot()
	if (CLASS_VALUE_SELECTED == "" and ROLE_VALUE_SELECTED == "") then
		SendChatMessage(".partybot add warrior dps");
		DEFAULT_CHAT_FRAME:AddMessage("Не выбран класс или роль по умолчанию воин демагер.");
	else
		SendChatMessage(".partybot add " .. CLASS_VALUE_SELECTED .. " " .. ROLE_VALUE_SELECTED);
		--DEFAULT_CHAT_FRAME:AddMessage("Вспомогательный игрок добавлен.");
	end
end

function PartyBotRemove()
	if UnitIsPlayer("target") then
	   SendChatMessage(".partybot remove");
	else
       DEFAULT_CHAT_FRAME:AddMessage("Не выбрана Цель");
	end   	
end

function PartyBotFreeLoot()
	SetLootMethod("freeforall");
end

function PartyBotChangeRole()
    if UnitIsPlayer("target") then
	   if ROLE_VALUE_SELECTED == "tank" then
	      SendChatMessage(".partybot setrole tank");	
	   end
	   if ROLE_VALUE_SELECTED == "healer" then
	      SendChatMessage(".partybot setrole healer");
	   end
	   if ROLE_VALUE_SELECTED == "dps" then
	      SendChatMessage(".partybot setrole dps");
	   end
	   if ROLE_VALUE_SELECTED == "" then
	      DEFAULT_CHAT_FRAME:AddMessage("Не выбрана Роль");	    
	   end
    else
        DEFAULT_CHAT_FRAME:AddMessage("Не выбрана Цель");
    end
end

function PartyBotRaid()
	ConvertToRaid();
end

function PartyBotClone()
	if EvilPartnerDB.live then
		local s,m,c = SendChatMessage, ".partybot clone"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot clone");
		--DEFAULT_CHAT_FRAME:AddMessage("Вспомогательный игрок добавлен.");
	end	
end

function PartyBotLeave()
	LeaveParty();
end

function PartyBotUseAltar()
	if EvilPartnerDB.live then
		local s,m,c = SendChatMessage, ".partybot usealtar"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot usealtar");
	end	
end

function PartyBotFocusAdd()
	SendChatMessage(".partybot focusmark " .. MARK_VALUE_SELECTED);
end

function PartyBotClearFocus()
	SendChatMessage(".partybot clearmarks");
end

function PartyBotControlsSelf()
	if EvilPartnerDB.live then
		local s,m,c = SendChatMessage, ".partybot controls self"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot controls self");
	end	
end

function PartyBotControlsAll()
	if EvilPartnerDB.live then
		local s,m,c = SendChatMessage, ".partybot controls all"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot controls all");
	end	
end

function PartyBotPause()
    if UnitIsPlayer("target") then
        if EvilPartnerDB.live then
            local s,m,c = SendChatMessage, ".partybot pause"
            if UnitInRaid("player") then 
                c = "RAID"
            elseif UnitExists("party1") then 
                c = "PARTY" 
            end
            s(m, c)
        else
            SendChatMessage(".partybot pause")
        end
    else
        if EvilPartnerDB.live then
            local s,m,c = SendChatMessage, ".partybot pause all"
            if UnitInRaid("player") then 
                c = "RAID"
            elseif UnitExists("party1") then 
                c = "PARTY" 
            end
            s(m, c)
        else
            SendChatMessage(".partybot pause all")
        end
    end
end

function PartyBotUnPause()
    if UnitIsPlayer("target") then
        if EvilPartnerDB.live then
            local s,m,c = SendChatMessage, ".partybot unpause"
            if UnitInRaid("player") then 
                c = "RAID"
            elseif UnitExists("party1") then 
                c = "PARTY" 
            end
            s(m, c)
        else
            SendChatMessage(".partybot unpause")
        end
    else
        if EvilPartnerDB.live then
            local s,m,c = SendChatMessage, ".partybot unpause all"
            if UnitInRaid("player") then 
                c = "RAID"
            elseif UnitExists("party1") then 
                c = "PARTY" 
            end
            s(m, c)
        else
            SendChatMessage(".partybot unpause all")
        end
    end
end

function PartyBotItl()
	SendChatMessage(".itl");
end

function PartyBotChLead()
	if EvilPartnerDB.live then
		local s,m,c = SendChatMessage, ".partybot chleader"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot chleader");
	end	
end

function PartyBotStay()
	if EvilPartnerDB.live then
		local s,m,c = SendChatMessage, ".partybot stay"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot stay");
	end	
end

function PartyBotMove()
	if EvilPartnerDB.live then
		local s,m,c = SendChatMessage, ".partybot move"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot move");
	end	
end

function PartyBotAOE()
	if EvilPartnerDB.live then
		local s,m,c = SendChatMessage, ".partybot aoe"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot aoe");
	end	
end

function PartyBotComeToMe()
	if EvilPartnerDB.live then
		local s,m,c = SendChatMessage, ".partybot cometome"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot cometome");
	end	
end

function PartyBotCloseFrame()
	mainFrame:Hide();
end

function PartyBotPauseDPS()
	if EvilPartnerDB.live then
		local s,m,c = SendChatMessage, ".partybot pause dps"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot pause dps");
	end	
end

function PartyBotPauseHeal()
	if EvilPartnerDB.live then
		local s,m,c = SendChatMessage, ".partybot pause healer"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot pause healer");
	end	
end

function PartyBotHold()
	if EvilPartnerDB.live then
		local s,m,c = SendChatMessage, ".partybot pause 18000"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot pause 18000");
		--DEFAULT_CHAT_FRAME:AddMessage("5 часов до выхода из игры вспомогательного игрока");
		--UninviteFromParty("target")
	end	
end

function ComeToMeHeal()
	if EvilPartnerDB.live then
		local s,m,c = SendChatMessage, ".partybot cometome healer"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot cometome healer");
	end	
end

function ComeToMeDPS()
	if EvilPartnerDB.live then
		local s,m,c = SendChatMessage, ".partybot cometome dps"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot cometome dps");
	end	
end

function ComeToMeTank()
	if EvilPartnerDB.live then
		local s,m,c = SendChatMessage, ".partybot cometome tank"
		if UnitInRaid("player") then 
			c = "RAID"
		elseif UnitExists("party1") then 
			c = "PARTY" 
		end
		s(m, c)
	else
		SendChatMessage(".partybot cometome tank");
	end	
end

-- more buttons
function PartyBotResetInstances()
	ResetInstances();
end

function PartyBotReloadUI()
	ReloadUI();
end

function PartyBotDeleteGray()
	ClearCursor()local g,i,j,s,a,b=gsub;
	for i=0,4 do for j=1,GetContainerNumSlots(i)do s=GetContainerItemLink(i,j)
		if(s)then a,b,s=GetItemInfo(g(g(s,".*\124H",""),"\124h.*",""))if(s==0)
			then PickupContainerItem(i,j)DeleteCursorItem()end;end;end;end
end

function PartyBotPlayed()
	RequestTimePlayed()
end

function PartyBotRoll()
	RandomRoll(1,100)
end

function PartyBotFPS()
	ToggleFramerate();	
end

--command
--CastSpellByName("Healing Touch(Rank 1)");
--DoReadyCheck()
--ToggleFramerate()
--Logout()
--UninviteFromParty("target")
--StaticPopupDialogs

-- minimap button
local evilFrameShown = true -- show frame by default
local evilButtonPosition = 0

function mainButtonFrame_OnClick()
	mainButtonFrame_Toggle();
end

function evilButtonFrame_Init()
    -- show frame by default
	if(evilFrameShown) then
		mainFrame:Show();		
	else
		mainFrame:Hide();
	end
end

function mainButtonFrame_Toggle()
	if(mainFrame:IsVisible()) then
		mainFrame:Hide();
		evilFrameShown = false;
	else
		mainFrame:Show();
		evilFrameShown = true;
	end
	evilButtonFrame_Init();
end

function evilButtonFrame_OnEnter()
    GameTooltip:SetOwner(this, "ANCHOR_LEFT");
    GameTooltip:SetText("EvilPartner, \n click to open/close, \n right mouse to drag me");
    GameTooltip:Show();
end

function evilButtonFrame_UpdatePosition()
	evilButtonFrame:SetPoint(
		"TOPLEFT",
		"Minimap",
		"TOPLEFT",
		54 - (78 * cos(evilButtonPosition)),
		(78 * sin(evilButtonPosition)) - 55
	);
	evilButtonFrame_Init();
end

-- Thanks to Yatlas for this code
function evilButtonFrame_BeingDragged()
    -- Thanks to Gello for this code
    local xpos,ypos = GetCursorPosition() 
    local xmin,ymin = Minimap:GetLeft(), Minimap:GetBottom() 

    xpos = xmin-xpos/UIParent:GetScale()+70 
    ypos = ypos/UIParent:GetScale()-ymin-70

    evilButtonFrame_SetPosition(math.deg(math.atan2(ypos,xpos)));
end

function evilButtonFrame_SetPosition(v)
    if(v < 0) then
        v = v + 360;
    end

    evilButtonPosition = v;
    evilButtonFrame_UpdatePosition();
end

-----
function PartyBotMore()
	moreButton_OnClick();
end

function moreButton_OnClick()
	moreFrame_Toogle();
end

function moreFrame_Toogle()
	if(moreFrame:IsVisible()) then
		moreFrame:Hide();
		evilFrameShown = false;
	else
		moreFrame:Show();
		evilFrameShown = true;
	end
end
-----
function PartyBotPS()
	psButton_OnClick();
end

function psButton_OnClick()
	psFrame_Toogle();
end

function psFrame_Toogle()
	if(psFrame:IsVisible()) then
		psFrame:Hide();
		evilFrameShown = false;
	else
		psFrame:Show();
		evilFrameShown = true;
	end
end
-----

-- Thanks to Shagu for this code
ItemLevel = CreateFrame( "Frame" , "ItemLevelTooltip", GameTooltip )
ItemLevel:RegisterEvent("UPDATE_MOUSEOVER_UNIT")
ItemLevel:SetScript("OnEvent", function()
  score, r, g, b = ItemLevel:ScanUnit("mouseover")
  if score and r and g and b then
    GameTooltip:AddLine("ItemLevel: " .. score, r,g,b) -- общий в подсказке цели
    GameTooltip:Show()
  end
end)

ItemLevel:SetScript("OnShow", function()
  if GameTooltip.itemLink then
    local _, _, itemID = string.find(GameTooltip.itemLink, "item:(%d+):%d+:%d+:%d+")
    local _, _, itemLink = string.find(GameTooltip.itemLink, "(item:%d+:%d+:%d+:%d+)");

    if not itemLink then return end

    local itemLevel = ItemLevel.Database[tonumber(itemID)] or 0
    local _, _, itemRarity, _, _, _, _, itemSlot, _ = GetItemInfo(itemLink)
    local r,g,b = GetItemQualityColor(itemRarity)

    local score = ItemLevel:Calculate(itemSlot, itemRarity, itemLevel)
    if score and score > 0 then
      GameTooltip:AddLine("ItemLevel: " .. score, r, g, b) -- на вещах персонажа и цели
      GameTooltip:Show()
    end
  end
end)

ItemLevel:SetScript("OnHide", function()
  GameTooltip.itemLink = nil
end)

-- target inspect
ItemLevelHookInspectUnit = InspectUnit
function InspectUnit(unit)
  ItemLevelHookInspectUnit(unit)
  ItemLevel.Inspect = ItemLevel.Inspect or CreateFrame("Frame", nil, InspectModelFrame)
  ItemLevel.Inspect:SetFrameStrata("HIGH")
  ItemLevel.Inspect:SetWidth(200)
  ItemLevel.Inspect:SetHeight(25)
  ItemLevel.Inspect:SetPoint("BOTTOM", 0, -10)
  ItemLevel.Inspect.text = ItemLevel.Inspect.text or ItemLevel.Inspect:CreateFontString("Status", "TOOLTIP", "GameFontNormal")
  ItemLevel.Inspect.text:SetPoint("CENTER", 0, 0)

  local score, r, g, b = ItemLevel:ScanUnit("target")
  if score and r and g and b then
    ItemLevel.Inspect.text:SetText("ItemLevel: " .. score) -- общий в окне цели под персонажем
    ItemLevel.Inspect.text:SetTextColor(r, g, b)
  end
end

-- player inspect
ItemLevel.CharacterFrame = CreateFrame("Frame", nil, CharacterModelFrame)
ItemLevel.CharacterFrame:SetFrameStrata("HIGH")
ItemLevel.CharacterFrame:SetWidth(200)
ItemLevel.CharacterFrame:SetHeight(50)
ItemLevel.CharacterFrame:SetPoint("BOTTOM", 0, -10)
ItemLevel.CharacterFrame.text = ItemLevel.CharacterFrame:CreateFontString("Status", "LOW", "GameFontNormal")
ItemLevel.CharacterFrame.text:SetPoint("CENTER", 0, 0)

ItemLevel.CharacterFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
ItemLevel.CharacterFrame:RegisterEvent("UNIT_NAME_UPDATE")
ItemLevel.CharacterFrame:RegisterEvent("UNIT_PORTRAIT_UPDATE")
ItemLevel.CharacterFrame:RegisterEvent("BAG_UPDATE")
ItemLevel.CharacterFrame:SetScript("OnEvent", function()
  score, r, g, b = ItemLevel:ScanUnit("player")
  if score and r and g and b then
    ItemLevel.CharacterFrame.text:SetText("ItemLevel: " .. score)  -- -- общий в окне под персонажем
    ItemLevel.CharacterFrame.text:SetTextColor(r, g, b)
  end
end)

-- functions
function ItemLevel:round(input, places)
  if not places then places = 0 end
  if type(input) == "number" and type(places) == "number" then
    local pow = 1
    for i = 1, places do pow = pow * 10 end
    return floor(input * pow + 0.5) / pow
  end
end

function ItemLevel:Calculate(slot, rarity, ilvl)
  if not rarity then return nil end
  return (1 * ilvl) * (slot == "INVTYPE_2HWEAPON" and 2 or 1)
end

function ItemLevel:ScanUnit(target)
  if not UnitIsPlayer(target) then return nil end

  local count, ar, ag, ab, score = 0, 0, 0, 0, 0

  for i=1,19 do
    if GetInventoryItemLink(target, i) then
      local _, _, itemID = string.find(GetInventoryItemLink(target, i), "item:(%d+):%d+:%d+:%d+")
      local _, _, itemLink = string.find(GetInventoryItemLink(target, i), "(item:%d+:%d+:%d+:%d+)");

      local itemLevel = ItemLevel.Database[tonumber(itemID)] or 0
      local _, _, itemRarity, _, _, _, _, itemSlot, _ = GetItemInfo(itemLink)
      local r, g, b = .2, .2, .2

      local cscore = 0

      if itemRarity and itemSlot then
        r,g,b, _ = GetItemQualityColor(itemRarity)
        ar = ar + r ; ag = ag + g ; ab = ab + b
        cscore = ItemLevel:Calculate(itemSlot, itemRarity, itemLevel)
      end

      score = score + cscore / 17
      score = 0.01*math.floor(100*score) 
      count = count + 1
    end
  end

  local ar = ItemLevel:round(ar / count, 2);
  local ag = ItemLevel:round(ag / count, 2);
  local ab = ItemLevel:round(ab / count, 2);

  if score ~= 0 then return score, ar, ag, ab else return nil end
end

function ItemLevel:GetItemLinkByName(name)
  for itemID = 1, 25818 do
    local itemName, hyperLink, itemQuality = GetItemInfo(itemID)
    if (itemName and itemName == name) then
      local _, _, _, hex = GetItemQualityColor(tonumber(itemQuality))
      return hex.. "|H"..hyperLink.."|h["..itemName.."]|h|r"
    end
  end
end

-- hooks
local ItemLevelHookSetBagItem = GameTooltip.SetBagItem
function GameTooltip.SetBagItem(self, container, slot)
  GameTooltip.itemLink = GetContainerItemLink(container, slot)
  _, GameTooltip.itemCount = GetContainerItemInfo(container, slot)
  return ItemLevelHookSetBagItem(self, container, slot)
end

local ItemLevelHookSetQuestLogItem = GameTooltip.SetQuestLogItem
function GameTooltip.SetQuestLogItem(self, itemType, index)
  GameTooltip.itemLink = GetQuestLogItemLink(itemType, index)
  if not GameTooltip.itemLink then return end
  return ItemLevelHookSetQuestLogItem(self, itemType, index)
end

local ItemLevelHookSetQuestItem = GameTooltip.SetQuestItem
function GameTooltip.SetQuestItem(self, itemType, index)
  GameTooltip.itemLink = GetQuestItemLink(itemType, index)
  return ItemLevelHookSetQuestItem(self, itemType, index)
end

local ItemLevelHookSetLootItem = GameTooltip.SetLootItem
function GameTooltip.SetLootItem(self, slot)
  GameTooltip.itemLink = GetLootSlotLink(slot)
  ItemLevelHookSetLootItem(self, slot)
end

local ItemLevelHookSetInboxItem = GameTooltip.SetInboxItem
function GameTooltip.SetInboxItem(self, mailID, attachmentIndex)
  local itemName, itemTexture, inboxItemCount, inboxItemQuality = GetInboxItem(mailID)
  GameTooltip.itemLink = ItemLevel:GetItemLinkByName(itemName)
  return ItemLevelHookSetInboxItem(self, mailID, attachmentIndex)
end

local ItemLevelHookSetInventoryItem = GameTooltip.SetInventoryItem
function GameTooltip.SetInventoryItem(self, unit, slot)
  GameTooltip.itemLink = GetInventoryItemLink(unit, slot)
  return ItemLevelHookSetInventoryItem(self, unit, slot)
end

local ItemLevelHookSetLootRollItem = GameTooltip.SetLootRollItem
function GameTooltip.SetLootRollItem(self, id)
  GameTooltip.itemLink = GetLootRollItemLink(id)
  return ItemLevelHookSetLootRollItem(self, id)
end

local ItemLevelHookSetLootRollItem = GameTooltip.SetLootRollItem
function GameTooltip.SetLootRollItem(self, id)
  GameTooltip.itemLink = GetLootRollItemLink(id)
  return ItemLevelHookSetLootRollItem(self, id)
end

local ItemLevelHookSetMerchantItem = GameTooltip.SetMerchantItem
function GameTooltip.SetMerchantItem(self, merchantIndex)
  GameTooltip.itemLink = GetMerchantItemLink(merchantIndex)
  return ItemLevelHookSetMerchantItem(self, merchantIndex)
end

local ItemLevelHookSetCraftItem = GameTooltip.SetCraftItem
function GameTooltip.SetCraftItem(self, skill, slot)
  GameTooltip.itemLink = GetCraftReagentItemLink(skill, slot)
  return ItemLevelHookSetCraftItem(self, skill, slot)
end

local ItemLevelHookSetCraftSpell = GameTooltip.SetCraftSpell
function GameTooltip.SetCraftSpell(self, slot)
  GameTooltip.itemLink = GetCraftItemLink(slot)
  return ItemLevelHookSetCraftSpell(self, slot)
end

local ItemLevelHookSetTradeSkillItem = GameTooltip.SetTradeSkillItem
function GameTooltip.SetTradeSkillItem(self, skillIndex, reagentIndex)
  if reagentIndex then
    GameTooltip.itemLink = GetTradeSkillReagentItemLink(skillIndex, reagentIndex)
  else
    GameTooltip.itemLink = GetTradeSkillItemLink(skillIndex)
  end
  return ItemLevelHookSetTradeSkillItem(self, skillIndex, reagentIndex)
end

local ItemLevelHookSetAuctionSellItem = GameTooltip.SetAuctionSellItem
function GameTooltip.SetAuctionSellItem(self)
  local itemName, _, itemCount = GetAuctionSellItemInfo()
  GameTooltip.itemCount = itemCount
  GameTooltip.itemLink = ItemLevel:GetItemLinkByName(itemName)
  return ItemLevelHookSetAuctionSellItem(self)
end

local ItemLevelHookSetTradePlayerItem = GameTooltip.SetTradePlayerItem
function GameTooltip.SetTradePlayerItem(self, index)
  GameTooltip.itemLink = GetTradePlayerItemLink(index)
  return ItemLevelHookSetTradePlayerItem(self, index)
end

local ItemLevelHookSetTradeTargetItem = GameTooltip.SetTradeTargetItem
function GameTooltip.SetTradeTargetItem(self, index)
  GameTooltip.itemLink = GetTradeTargetItemLink(index)
  return ItemLevelHookSetTradeTargetItem(self, index)
end

-- database
ItemLevel.Database = {
  [25]=2,[35]=2,[36]=2,[37]=2,[39]=1,[40]=1,[43]=1,[44]=1,[47]=1,[48]=1,[51]=1,
  [52]=1,[55]=1,[56]=1,[57]=1,[59]=1,[60]=5,[61]=5,[79]=5,[80]=5,[85]=5,[120]=1,
  [121]=1,[129]=1,[139]=1,[140]=1,[147]=1,[153]=1,[193]=5,[194]=5,[195]=5,[200]=22,[201]=22,
  [202]=22,[203]=22,[209]=5,[210]=5,[236]=22,[237]=22,[238]=22,[239]=22,[285]=22,[286]=22,[287]=22,
  [647]=57,[710]=14,[711]=5,[714]=5,[718]=22,[719]=5,[720]=28,[727]=10,[744]=44,[753]=28,[754]=47,
  [756]=29,[763]=12,[766]=7,[767]=8,[768]=9,[776]=31,[778]=7,[781]=9,[789]=22,[790]=23,[791]=31,
  [792]=10,[793]=10,[794]=10,[795]=10,[796]=10,[797]=10,[798]=10,[799]=10,[804]=25,[805]=5,[809]=50,
  [810]=54,[811]=57,[812]=54,[816]=11,[820]=17,[821]=13,[826]=15,[827]=17,[828]=5,[832]=15,[833]=56,
  [837]=17,[838]=17,[839]=17,[840]=17,[843]=17,[844]=17,[845]=17,[846]=17,[847]=17,[848]=17,[849]=17,
  [850]=17,[851]=15,[852]=14,[853]=16,[854]=16,[856]=15,[857]=25,[860]=13,[862]=50,[863]=37,[864]=38,
  [865]=31,[866]=42,[867]=42,[868]=43,[869]=41,[870]=40,[871]=47,[872]=21,[873]=40,[880]=23,[885]=24,
  [886]=26,[888]=27,[890]=24,[892]=22,[897]=29,[899]=19,[911]=25,[914]=30,[918]=25,[920]=25,[922]=26,
  [923]=26,[924]=26,[925]=25,[926]=25,[927]=24,[928]=25,[932]=25,[933]=25,[934]=37,[935]=20,[936]=38,
  [937]=38,[940]=47,[942]=52,[943]=48,[944]=61,[983]=9,[1008]=10,[1009]=13,[1010]=8,[1011]=8,[1076]=25,
  [1077]=26,[1116]=31,[1121]=24,[1131]=25,[1154]=14,[1155]=29,[1156]=22,[1158]=10,[1159]=5,[1161]=5,[1166]=5,
  [1167]=10,[1168]=59,[1169]=46,[1171]=10,[1172]=21,[1173]=10,[1182]=10,[1183]=10,[1189]=20,[1190]=20,[1193]=17,
  [1194]=4,[1195]=6,[1196]=14,[1197]=15,[1198]=15,[1200]=5,[1201]=10,[1202]=17,[1203]=54,[1204]=41,[1207]=39,
  [1211]=15,[1213]=14,[1214]=17,[1215]=22,[1218]=21,[1219]=16,[1220]=20,[1254]=28,[1263]=60,[1264]=26,[1265]=39,
  [1270]=15,[1273]=25,[1275]=25,[1276]=27,[1280]=38,[1282]=33,[1287]=15,[1292]=25,[1296]=21,[1297]=31,[1299]=22,
  [1300]=20,[1302]=18,[1303]=20,[1304]=20,[1306]=20,[1310]=20,[1314]=20,[1315]=51,[1317]=25,[1318]=23,[1319]=25,
  [1351]=28,[1355]=15,[1359]=8,[1360]=10,[1364]=5,[1366]=2,[1367]=3,[1368]=4,[1369]=5,[1370]=4,[1372]=3,
  [1374]=4,[1376]=5,[1377]=3,[1378]=2,[1380]=4,[1382]=5,[1383]=5,[1384]=3,[1386]=5,[1387]=19,[1388]=3,
  [1389]=7,[1391]=18,[1394]=15,[1395]=1,[1396]=1,[1404]=41,[1405]=17,[1406]=21,[1411]=8,[1412]=7,[1413]=8,
  [1414]=9,[1415]=9,[1416]=9,[1417]=8,[1418]=7,[1419]=8,[1420]=9,[1421]=10,[1422]=6,[1423]=7,[1425]=9,
  [1427]=10,[1429]=6,[1430]=7,[1431]=8,[1433]=7,[1436]=17,[1438]=9,[1440]=19,[1443]=60,[1445]=23,[1446]=19,
  [1447]=46,[1448]=20,[1449]=24,[1454]=27,[1455]=24,[1457]=22,[1458]=23,[1459]=24,[1460]=20,[1461]=25,[1462]=25,
  [1465]=38,[1469]=19,[1470]=25,[1473]=19,[1479]=12,[1480]=17,[1481]=25,[1482]=24,[1483]=21,[1484]=22,[1485]=25,
  [1486]=24,[1488]=31,[1489]=25,[1490]=50,[1491]=25,[1493]=27,[1495]=13,[1497]=14,[1498]=15,[1499]=11,[1501]=13,
  [1502]=14,[1503]=15,[1504]=11,[1505]=12,[1506]=13,[1507]=14,[1509]=11,[1510]=12,[1511]=13,[1512]=12,[1513]=14,
  [1514]=14,[1515]=12,[1516]=14,[1521]=44,[1522]=36,[1523]=36,[1537]=1,[1539]=19,[1547]=30,[1557]=20,[1560]=21,
  [1561]=15,[1566]=17,[1602]=39,[1604]=45,[1607]=54,[1608]=47,[1613]=44,[1624]=43,[1625]=41,[1639]=49,[1640]=42,
  [1652]=35,[1659]=40,[1664]=41,[1677]=46,[1678]=37,[1679]=36,[1680]=44,[1685]=45,[1713]=45,[1714]=43,[1715]=44,
  [1716]=40,[1717]=30,[1718]=43,[1720]=46,[1721]=54,[1722]=42,[1725]=35,[1726]=36,[1727]=28,[1728]=65,[1729]=25,
  [1730]=12,[1731]=13,[1732]=14,[1733]=15,[1734]=11,[1735]=12,[1737]=14,[1738]=19,[1739]=20,[1740]=16,[1741]=17,
  [1742]=18,[1743]=19,[1744]=20,[1745]=16,[1746]=25,[1747]=21,[1748]=22,[1749]=23,[1750]=24,[1751]=25,[1752]=21,
  [1753]=22,[1754]=26,[1755]=27,[1756]=28,[1757]=29,[1758]=30,[1759]=26,[1760]=27,[1761]=28,[1764]=17,[1766]=18,
  [1767]=19,[1768]=20,[1769]=20,[1770]=17,[1772]=23,[1774]=24,[1775]=25,[1776]=21,[1777]=22,[1778]=23,[1780]=29,
  [1782]=30,[1783]=26,[1784]=27,[1785]=28,[1786]=29,[1787]=18,[1788]=19,[1789]=20,[1790]=16,[1791]=17,[1792]=18,
  [1793]=20,[1794]=20,[1795]=24,[1796]=25,[1797]=21,[1798]=22,[1799]=23,[1800]=24,[1801]=25,[1802]=21,[1803]=30,
  [1804]=26,[1805]=27,[1806]=28,[1807]=29,[1808]=30,[1809]=26,[1810]=27,[1811]=17,[1812]=17,[1813]=18,[1814]=19,
  [1815]=17,[1816]=19,[1817]=19,[1818]=24,[1819]=22,[1820]=22,[1821]=24,[1822]=23,[1823]=22,[1824]=23,[1825]=28,
  [1826]=27,[1827]=27,[1828]=27,[1829]=29,[1830]=28,[1831]=28,[1832]=17,[1835]=5,[1836]=5,[1839]=10,[1840]=10,
  [1843]=17,[1844]=17,[1845]=17,[1846]=17,[1849]=22,[1850]=22,[1852]=22,[1853]=22,[1893]=20,[1913]=10,[1917]=10,
  [1925]=16,[1926]=15,[1927]=15,[1928]=16,[1929]=18,[1930]=18,[1933]=15,[1934]=20,[1935]=24,[1936]=18,[1937]=21,
  [1938]=22,[1943]=19,[1944]=18,[1945]=18,[1951]=19,[1955]=27,[1958]=17,[1959]=17,[1965]=10,[1973]=59,[1974]=22,
  [1975]=28,[1976]=29,[1978]=27,[1979]=50,[1980]=43,[1981]=44,[1982]=44,[1986]=41,[1988]=38,[1990]=36,[1991]=34,
  [1992]=38,[1993]=36,[1994]=46,[1996]=37,[1997]=34,[1998]=33,[2000]=35,[2011]=26,[2013]=26,[2014]=29,[2015]=28,
  [2017]=28,[2018]=27,[2020]=18,[2021]=21,[2024]=21,[2025]=20,[2026]=21,[2027]=19,[2028]=21,[2029]=20,[2030]=20,
  [2032]=36,[2033]=25,[2034]=25,[2035]=24,[2036]=18,[2037]=18,[2039]=29,[2040]=48,[2041]=24,[2042]=24,[2043]=35,
  [2044]=35,[2046]=24,[2047]=5,[2048]=5,[2054]=4,[2055]=4,[2057]=4,[2058]=27,[2059]=24,[2064]=11,[2065]=9,
  [2066]=8,[2067]=10,[2069]=12,[2072]=27,[2073]=15,[2074]=18,[2075]=12,[2077]=29,[2078]=18,[2079]=17,[2080]=34,
  [2082]=5,[2084]=30,[2087]=13,[2088]=15,[2089]=18,[2092]=2,[2098]=27,[2099]=58,[2100]=48,[2101]=1,[2102]=1,
  [2108]=4,[2109]=5,[2110]=4,[2112]=9,[2114]=8,[2117]=5,[2119]=5,[2120]=5,[2121]=5,[2122]=5,[2123]=5,
  [2124]=5,[2125]=5,[2126]=5,[2127]=5,[2129]=5,[2130]=3,[2131]=3,[2132]=4,[2133]=5,[2134]=4,[2137]=5,
  [2138]=7,[2139]=3,[2140]=11,[2141]=27,[2142]=27,[2143]=27,[2144]=27,[2145]=27,[2146]=27,[2148]=27,[2149]=27,
  [2150]=27,[2151]=27,[2152]=27,[2153]=27,[2156]=27,[2158]=27,[2159]=27,[2160]=27,[2163]=53,[2164]=45,[2165]=10,
  [2166]=20,[2167]=20,[2168]=21,[2169]=21,[2172]=5,[2173]=5,[2175]=23,[2186]=5,[2194]=25,[2195]=5,[2203]=19,
  [2204]=17,[2205]=25,[2207]=16,[2208]=19,[2209]=24,[2210]=2,[2211]=4,[2212]=6,[2213]=7,[2214]=15,[2215]=11,
  [2216]=16,[2217]=17,[2218]=13,[2219]=22,[2220]=23,[2221]=28,[2222]=29,[2224]=5,[2225]=11,[2226]=27,[2227]=27,
  [2230]=24,[2231]=40,[2232]=25,[2233]=27,[2234]=30,[2235]=19,[2236]=25,[2237]=10,[2238]=10,[2240]=15,[2241]=20,
  [2243]=62,[2244]=56,[2245]=59,[2246]=58,[2249]=10,[2254]=12,[2256]=24,[2257]=10,[2258]=8,[2259]=8,[2260]=9,
  [2262]=36,[2263]=25,[2264]=30,[2265]=13,[2266]=13,[2267]=15,[2268]=10,[2271]=23,[2274]=17,[2276]=37,[2277]=35,
  [2278]=31,[2280]=27,[2281]=11,[2282]=10,[2283]=15,[2284]=15,[2291]=49,[2292]=25,[2299]=33,[2300]=12,[2302]=8,
  [2303]=10,[2307]=18,[2308]=15,[2309]=15,[2310]=13,[2311]=13,[2312]=15,[2314]=24,[2315]=20,[2316]=22,[2317]=20,
  [2326]=10,[2327]=10,[2361]=2,[2362]=1,[2364]=10,[2366]=10,[2367]=10,[2369]=10,[2370]=10,[2371]=10,[2372]=10,
  [2373]=10,[2374]=10,[2375]=10,[2376]=10,[2377]=10,[2379]=5,[2380]=5,[2381]=5,[2383]=5,[2384]=5,[2385]=5,
  [2386]=5,[2387]=5,[2388]=5,[2389]=5,[2390]=5,[2391]=5,[2392]=10,[2393]=10,[2394]=10,[2395]=10,[2396]=10,
  [2397]=10,[2398]=10,[2399]=10,[2400]=10,[2401]=10,[2402]=10,[2403]=10,[2417]=37,[2418]=37,[2419]=37,[2420]=37,
  [2421]=37,[2422]=37,[2423]=50,[2424]=50,[2425]=50,[2426]=50,[2427]=50,[2428]=50,[2429]=37,[2431]=37,[2432]=37,
  [2434]=37,[2435]=50,[2437]=50,[2438]=50,[2440]=50,[2441]=22,[2442]=27,[2443]=37,[2444]=50,[2445]=22,[2446]=27,
  [2448]=37,[2451]=50,[2463]=37,[2464]=37,[2465]=37,[2467]=37,[2468]=37,[2469]=37,[2470]=50,[2471]=50,[2472]=50,
  [2473]=50,[2474]=50,[2475]=50,[2479]=4,[2480]=3,[2488]=9,[2489]=7,[2490]=9,[2491]=8,[2492]=7,[2493]=9,
  [2494]=8,[2495]=8,[2499]=9,[2504]=2,[2505]=4,[2506]=8,[2507]=16,[2508]=2,[2509]=9,[2510]=3,[2511]=14,
  [2512]=5,[2515]=15,[2516]=5,[2519]=15,[2520]=36,[2521]=36,[2522]=35,[2523]=35,[2524]=34,[2525]=35,[2526]=34,
  [2527]=36,[2528]=46,[2529]=46,[2530]=46,[2531]=44,[2532]=46,[2533]=45,[2534]=44,[2535]=45,[2545]=26,[2546]=11,
  [2547]=5,[2549]=27,[2562]=23,[2564]=50,[2565]=35,[2566]=27,[2567]=23,[2568]=8,[2569]=13,[2570]=6,[2571]=7,
  [2572]=10,[2578]=14,[2580]=12,[2582]=17,[2583]=19,[2584]=16,[2585]=21,[2586]=1,[2612]=8,[2613]=13,[2614]=17,
  [2615]=29,[2616]=23,[2617]=37,[2618]=50,[2620]=39,[2621]=36,[2622]=37,[2623]=41,[2624]=42,[2632]=14,[2635]=8,
  [2642]=9,[2643]=10,[2644]=6,[2645]=7,[2646]=8,[2648]=10,[2649]=2,[2650]=3,[2651]=4,[2652]=5,[2653]=4,
  [2654]=2,[2656]=5,[2657]=15,[2662]=55,[2663]=55,[2690]=5,[2691]=5,[2694]=17,[2715]=1,[2721]=32,[2754]=3,
  [2763]=14,[2764]=18,[2765]=23,[2766]=29,[2773]=8,[2774]=7,[2777]=13,[2778]=13,[2780]=19,[2781]=18,[2782]=24,
  [2783]=22,[2785]=28,[2786]=29,[2787]=3,[2800]=26,[2801]=64,[2802]=43,[2805]=34,[2807]=23,[2815]=45,[2816]=33,
  [2817]=12,[2818]=15,[2819]=28,[2820]=50,[2821]=18,[2822]=18,[2823]=19,[2824]=53,[2825]=42,[2844]=9,[2845]=9,
  [2847]=9,[2848]=22,[2849]=23,[2850]=24,[2851]=11,[2852]=9,[2853]=7,[2854]=19,[2857]=18,[2864]=18,[2865]=21,
  [2866]=23,[2868]=25,[2869]=26,[2870]=29,[2877]=33,[2878]=30,[2879]=22,[2898]=7,[2899]=15,[2900]=10,[2901]=4,
  [2902]=30,[2903]=15,[2904]=16,[2905]=10,[2906]=26,[2907]=20,[2908]=20,[2910]=25,[2911]=23,[2912]=32,[2913]=28,
  [2915]=52,[2916]=34,[2917]=33,[2933]=31,[2941]=26,[2942]=26,[2943]=31,[2944]=31,[2946]=8,[2947]=3,[2949]=25,
  [2950]=25,[2951]=36,[2953]=33,[2954]=33,[2955]=40,[2957]=11,[2958]=10,[2959]=9,[2960]=9,[2961]=11,[2962]=10,
  [2963]=9,[2964]=10,[2965]=11,[2966]=10,[2967]=10,[2968]=9,[2969]=17,[2970]=16,[2971]=14,[2972]=14,[2973]=17,
  [2974]=16,[2975]=14,[2976]=15,[2977]=16,[2978]=15,[2979]=14,[2980]=15,[2981]=21,[2982]=20,[2983]=17,[2984]=18,
  [2985]=21,[2986]=20,[2987]=18,[2988]=19,[2989]=21,[2990]=21,[2991]=21,[2992]=20,[3000]=10,[3008]=9,[3011]=36,
  [3018]=23,[3019]=18,[3020]=33,[3021]=25,[3022]=23,[3023]=21,[3024]=26,[3025]=36,[3026]=21,[3027]=25,[3030]=30,
  [3033]=30,[3034]=41,[3036]=15,[3037]=34,[3039]=23,[3040]=19,[3041]=31,[3042]=33,[3045]=27,[3047]=27,[3048]=26,
  [3049]=27,[3053]=28,[3055]=26,[3056]=26,[3057]=24,[3058]=25,[3065]=23,[3066]=24,[3067]=26,[3069]=27,[3070]=5,
  [3071]=12,[3072]=26,[3073]=26,[3074]=24,[3075]=55,[3076]=23,[3078]=26,[3079]=12,[3103]=12,[3107]=16,[3108]=27,
  [3111]=3,[3131]=8,[3135]=16,[3137]=27,[3151]=10,[3152]=9,[3153]=9,[3154]=18,[3158]=12,[3160]=15,[3161]=15,
  [3166]=15,[3184]=20,[3185]=34,[3186]=30,[3187]=44,[3188]=15,[3189]=8,[3190]=8,[3191]=26,[3192]=12,[3193]=21,
  [3194]=21,[3195]=18,[3196]=18,[3197]=35,[3198]=23,[3199]=22,[3200]=8,[3201]=28,[3202]=24,[3203]=28,[3204]=26,
  [3205]=17,[3206]=28,[3207]=14,[3208]=48,[3209]=32,[3210]=30,[3211]=19,[3212]=26,[3213]=13,[3214]=9,[3216]=10,
  [3217]=15,[3223]=11,[3224]=10,[3225]=9,[3227]=23,[3228]=26,[3229]=23,[3230]=26,[3231]=25,[3233]=15,[3235]=20,
  [3260]=4,[3261]=5,[3262]=3,[3263]=3,[3267]=5,[3268]=5,[3269]=5,[3270]=5,[3272]=5,[3273]=5,[3274]=5,
  [3275]=5,[3276]=5,[3277]=5,[3279]=12,[3280]=9,[3281]=11,[3282]=12,[3283]=13,[3284]=12,[3285]=10,[3286]=12,
  [3287]=12,[3288]=13,[3289]=11,[3290]=12,[3291]=13,[3292]=13,[3293]=3,[3294]=3,[3295]=3,[3296]=3,[3302]=15,
  [3303]=12,[3304]=14,[3305]=16,[3306]=18,[3307]=15,[3308]=15,[3309]=16,[3310]=18,[3311]=15,[3312]=13,[3313]=18,
  [3314]=15,[3315]=17,[3319]=9,[3321]=9,[3322]=6,[3323]=8,[3324]=28,[3325]=9,[3327]=9,[3328]=9,[3329]=11,
  [3330]=13,[3331]=12,[3332]=9,[3334]=7,[3335]=6,[3336]=29,[3341]=32,[3343]=15,[3344]=15,[3345]=37,[3352]=25,
  [3360]=30,[3363]=3,[3365]=5,[3370]=8,[3373]=9,[3374]=14,[3375]=12,[3376]=18,[3377]=19,[3378]=21,[3379]=22,
  [3380]=30,[3381]=28,[3392]=30,[3400]=25,[3413]=25,[3414]=27,[3415]=24,[3416]=26,[3417]=26,[3419]=20,[3420]=40,
  [3421]=10,[3422]=30,[3423]=50,[3424]=60,[3429]=24,[3430]=44,[3431]=25,[3435]=8,[3437]=8,[3439]=8,[3440]=13,
  [3442]=12,[3443]=10,[3444]=11,[3445]=12,[3446]=13,[3447]=8,[3449]=15,[3450]=15,[3451]=18,[3452]=22,[3453]=12,
  [3454]=14,[3455]=11,[3457]=18,[3458]=18,[3461]=24,[3462]=24,[3463]=37,[3464]=35,[3465]=36,[3469]=9,[3471]=10,
  [3472]=12,[3473]=13,[3474]=15,[3475]=65,[3480]=22,[3481]=25,[3482]=26,[3483]=27,[3484]=29,[3485]=30,[3487]=19,
  [3488]=13,[3489]=17,[3490]=25,[3491]=25,[3492]=30,[3493]=30,[3511]=15,[3555]=25,[3556]=30,[3558]=25,[3559]=21,
  [3560]=35,[3561]=26,[3562]=27,[3563]=20,[3565]=20,[3566]=29,[3567]=19,[3569]=26,[3570]=16,[3571]=21,[3572]=17,
  [3573]=15,[3574]=15,[3578]=15,[3581]=18,[3582]=18,[3583]=12,[3585]=22,[3586]=16,[3587]=50,[3588]=50,[3589]=17,
  [3590]=17,[3591]=27,[3592]=27,[3593]=37,[3594]=37,[3595]=5,[3596]=5,[3597]=22,[3598]=22,[3599]=5,[3600]=5,
  [3602]=10,[3603]=10,[3604]=25,[3605]=25,[3606]=10,[3607]=10,[3641]=8,[3642]=9,[3643]=14,[3644]=12,[3645]=17,
  [3647]=23,[3649]=11,[3650]=9,[3651]=15,[3652]=14,[3653]=15,[3654]=14,[3655]=21,[3656]=27,[3661]=2,[3719]=30,
  [3732]=30,[3733]=23,[3739]=25,[3740]=24,[3741]=24,[3742]=28,[3743]=28,[3747]=30,[3748]=28,[3749]=30,[3750]=30,
  [3751]=30,[3752]=22,[3753]=34,[3754]=33,[3755]=32,[3758]=33,[3759]=33,[3760]=32,[3761]=32,[3763]=40,[3764]=40,
  [3765]=40,[3778]=31,[3779]=32,[3780]=33,[3781]=34,[3782]=35,[3783]=36,[3784]=37,[3785]=38,[3786]=39,[3787]=40,
  [3792]=34,[3793]=32,[3794]=38,[3795]=36,[3796]=33,[3797]=39,[3798]=35,[3799]=37,[3800]=39,[3801]=35,[3802]=34,
  [3803]=38,[3804]=36,[3805]=32,[3806]=37,[3807]=33,[3808]=34,[3809]=32,[3810]=38,[3811]=37,[3812]=36,[3813]=35,
  [3814]=39,[3815]=33,[3816]=36,[3817]=33,[3822]=32,[3833]=8,[3834]=8,[3835]=33,[3836]=34,[3837]=38,[3840]=32,
  [3841]=35,[3842]=31,[3843]=34,[3844]=36,[3845]=40,[3846]=37,[3847]=40,[3848]=20,[3849]=32,[3850]=35,[3851]=31,
  [3852]=34,[3853]=36,[3854]=40,[3855]=37,[3856]=40,[3889]=37,[3890]=37,[3891]=37,[3892]=50,[3893]=50,[3894]=50,
  [3902]=18,[3914]=45,[3935]=25,[3936]=42,[3937]=46,[3938]=44,[3939]=47,[3940]=48,[3941]=45,[3942]=49,[3943]=43,
  [3944]=53,[3945]=55,[3946]=54,[3947]=52,[3948]=58,[3949]=59,[3950]=56,[3951]=57,[3961]=44,[3962]=48,[3963]=43,
  [3964]=46,[3965]=49,[3966]=42,[3967]=47,[3968]=45,[3969]=55,[3970]=54,[3971]=59,[3972]=56,[3973]=58,[3974]=53,
  [3975]=52,[3976]=57,[3985]=40,[3986]=48,[3987]=53,[3989]=42,[3990]=56,[3992]=52,[3993]=53,[3994]=58,[3995]=57,
  [3996]=59,[3997]=56,[3998]=55,[3999]=54,[4000]=44,[4001]=46,[4002]=48,[4003]=49,[4004]=47,[4005]=43,[4006]=42,
  [4007]=45,[4017]=46,[4018]=42,[4019]=48,[4020]=49,[4021]=46,[4022]=50,[4023]=44,[4024]=47,[4025]=45,[4026]=43,
  [4035]=31,[4036]=27,[4037]=30,[4038]=37,[4039]=35,[4040]=34,[4041]=39,[4042]=39,[4043]=38,[4044]=40,[4045]=42,
  [4046]=45,[4047]=43,[4048]=31,[4049]=28,[4050]=31,[4051]=30,[4052]=35,[4054]=35,[4055]=34,[4057]=36,[4058]=41,
  [4059]=37,[4060]=40,[4061]=42,[4062]=45,[4063]=43,[4064]=30,[4065]=36,[4066]=35,[4067]=39,[4068]=40,[4069]=47,
  [4070]=41,[4071]=31,[4072]=30,[4073]=31,[4074]=36,[4075]=34,[4076]=35,[4077]=35,[4078]=39,[4079]=40,[4080]=45,
  [4082]=47,[4083]=44,[4084]=46,[4086]=37,[4087]=41,[4088]=47,[4089]=48,[4090]=46,[4091]=47,[4107]=37,[4108]=40,
  [4109]=41,[4110]=45,[4111]=45,[4112]=44,[4113]=45,[4114]=42,[4115]=37,[4116]=41,[4117]=44,[4118]=50,[4119]=43,
  [4120]=40,[4121]=35,[4122]=37,[4123]=37,[4124]=40,[4125]=43,[4126]=34,[4127]=40,[4128]=41,[4129]=44,[4130]=50,
  [4131]=44,[4132]=37,[4133]=37,[4134]=46,[4135]=35,[4136]=42,[4137]=42,[4138]=45,[4139]=37,[4140]=34,[4197]=36,
  [4237]=10,[4238]=5,[4239]=13,[4240]=15,[4241]=15,[4242]=15,[4243]=17,[4244]=20,[4245]=25,[4246]=16,[4247]=29,
  [4248]=26,[4249]=25,[4250]=25,[4251]=26,[4252]=28,[4253]=27,[4254]=30,[4255]=31,[4256]=35,[4257]=32,[4258]=34,
  [4259]=36,[4260]=39,[4261]=8,[4262]=37,[4263]=10,[4264]=40,[4290]=18,[4302]=10,[4303]=12,[4307]=10,[4308]=12,
  [4309]=14,[4310]=17,[4311]=21,[4312]=16,[4313]=20,[4314]=22,[4315]=24,[4316]=22,[4317]=25,[4318]=26,[4319]=29,
  [4320]=25,[4321]=28,[4322]=33,[4323]=34,[4324]=30,[4325]=35,[4326]=37,[4327]=40,[4328]=36,[4329]=40,[4331]=25,
  [4343]=10,[4362]=10,[4368]=20,[4369]=21,[4372]=24,[4373]=24,[4379]=26,[4381]=28,[4383]=29,[4385]=30,[4393]=37,
  [4396]=40,[4397]=40,[4430]=43,[4434]=20,[4436]=21,[4437]=20,[4438]=30,[4439]=22,[4443]=36,[4444]=24,[4445]=23,
  [4446]=26,[4447]=26,[4448]=27,[4449]=27,[4454]=26,[4455]=33,[4456]=33,[4462]=31,[4463]=31,[4464]=32,[4465]=32,
  [4474]=32,[4476]=34,[4477]=34,[4478]=45,[4491]=1,[4496]=5,[4497]=25,[4498]=15,[4499]=35,[4500]=55,[4504]=31,
  [4505]=31,[4507]=42,[4508]=42,[4509]=40,[4511]=40,[4534]=29,[4535]=31,[4543]=40,[4545]=40,[4547]=40,[4548]=41,
  [4549]=46,[4550]=46,[4560]=6,[4561]=11,[4562]=10,[4563]=9,[4564]=13,[4565]=6,[4566]=13,[4567]=16,[4568]=21,
  [4569]=14,[4570]=15,[4571]=17,[4575]=19,[4576]=21,[4577]=13,[4614]=35,[4616]=1,[4643]=33,[4652]=45,[4653]=45,
  [4658]=8,[4659]=8,[4660]=18,[4661]=26,[4662]=8,[4663]=9,[4665]=8,[4666]=9,[4668]=9,[4669]=10,[4671]=9,
  [4672]=10,[4674]=9,[4675]=10,[4676]=17,[4677]=12,[4678]=14,[4680]=13,[4681]=14,[4683]=13,[4684]=13,[4686]=12,
  [4687]=14,[4689]=13,[4690]=13,[4692]=12,[4693]=14,[4694]=22,[4695]=18,[4696]=59,[4697]=20,[4698]=21,[4699]=18,
  [4700]=21,[4701]=16,[4705]=27,[4706]=24,[4707]=26,[4708]=24,[4709]=25,[4710]=22,[4711]=28,[4712]=29,[4713]=26,
  [4714]=27,[4715]=27,[4716]=32,[4717]=34,[4718]=35,[4719]=32,[4720]=33,[4721]=35,[4722]=32,[4723]=29,[4724]=30,
  [4725]=40,[4726]=36,[4727]=38,[4729]=39,[4731]=39,[4732]=37,[4733]=46,[4734]=43,[4735]=41,[4736]=42,[4737]=44,
  [4738]=42,[4741]=37,[4743]=50,[4744]=39,[4745]=40,[4746]=40,[4765]=14,[4766]=13,[4767]=15,[4768]=15,[4771]=15,
  [4772]=11,[4777]=18,[4778]=19,[4781]=20,[4782]=18,[4785]=24,[4786]=20,[4788]=20,[4789]=18,[4790]=25,[4792]=23,
  [4793]=24,[4794]=25,[4795]=25,[4796]=25,[4797]=25,[4798]=25,[4799]=23,[4800]=23,[4810]=37,[4816]=24,[4817]=22,
  [4818]=24,[4820]=25,[4821]=23,[4822]=23,[4824]=27,[4825]=29,[4826]=26,[4827]=28,[4828]=27,[4829]=29,[4830]=28,
  [4831]=26,[4832]=29,[4833]=28,[4835]=30,[4836]=28,[4837]=30,[4838]=26,[4840]=10,[4854]=11,[4861]=10,[4906]=7,
  [4907]=5,[4908]=5,[4909]=15,[4910]=5,[4911]=5,[4913]=5,[4914]=5,[4915]=5,[4916]=5,[4917]=5,[4919]=5,
  [4920]=5,[4921]=5,[4922]=5,[4923]=5,[4924]=5,[4925]=5,[4928]=8,[4929]=9,[4931]=11,[4932]=11,[4933]=9,
  [4935]=8,[4936]=8,[4937]=9,[4938]=11,[4939]=11,[4940]=10,[4942]=12,[4944]=12,[4946]=10,[4947]=11,[4948]=11,
  [4949]=21,[4951]=7,[4954]=5,[4957]=5,[4958]=8,[4960]=7,[4961]=10,[4962]=8,[4963]=8,[4964]=12,[4967]=11,
  [4968]=11,[4969]=10,[4970]=9,[4971]=12,[4972]=10,[4973]=10,[4974]=12,[4975]=39,[4976]=40,[4977]=41,[4978]=36,
  [4979]=42,[4980]=37,[4982]=38,[4983]=42,[4984]=41,[4987]=45,[4998]=24,[4999]=27,[5001]=27,[5002]=30,[5003]=31,
  [5005]=35,[5007]=31,[5009]=36,[5011]=40,[5016]=35,[5028]=47,[5029]=47,[5040]=32,[5069]=12,[5071]=14,[5079]=40,
  [5081]=5,[5092]=23,[5093]=21,[5094]=24,[5109]=17,[5110]=18,[5111]=15,[5112]=15,[5180]=34,[5181]=33,[5182]=20,
  [5183]=20,[5187]=20,[5191]=24,[5192]=22,[5193]=25,[5194]=23,[5195]=22,[5196]=22,[5197]=21,[5198]=22,[5199]=21,
  [5200]=22,[5201]=23,[5202]=24,[5207]=20,[5208]=20,[5209]=21,[5210]=25,[5211]=25,[5212]=17,[5213]=35,[5214]=32,
  [5215]=41,[5216]=45,[5236]=34,[5238]=45,[5239]=46,[5240]=21,[5241]=18,[5242]=16,[5243]=20,[5244]=30,[5245]=34,
  [5246]=30,[5247]=39,[5248]=37,[5249]=40,[5250]=28,[5252]=21,[5253]=40,[5254]=20,[5256]=35,[5257]=37,[5266]=53,
  [5267]=63,[5274]=27,[5275]=15,[5279]=20,[5299]=20,[5302]=20,[5306]=20,[5309]=20,[5310]=20,[5311]=21,[5312]=20,
  [5313]=25,[5314]=20,[5315]=18,[5316]=25,[5317]=25,[5318]=20,[5319]=20,[5320]=16,[5321]=20,[5322]=26,[5323]=25,
  [5324]=16,[5325]=16,[5326]=18,[5327]=18,[5328]=15,[5337]=16,[5340]=15,[5341]=15,[5343]=18,[5344]=14,[5345]=14,
  [5346]=14,[5347]=35,[5351]=20,[5355]=28,[5356]=27,[5357]=27,[5379]=8,[5387]=20,[5392]=5,[5393]=5,[5394]=5,
  [5395]=5,[5398]=5,[5399]=5,[5404]=23,[5405]=5,[5419]=7,[5420]=14,[5422]=20,[5423]=20,[5425]=20,[5426]=20,
  [5439]=5,[5441]=5,[5443]=20,[5444]=19,[5458]=10,[5459]=13,[5516]=16,[5522]=36,[5540]=23,[5541]=28,[5542]=19,
  [5568]=18,[5571]=5,[5572]=5,[5573]=15,[5574]=15,[5575]=25,[5576]=25,[5579]=5,[5580]=5,[5581]=5,[5586]=5,
  [5587]=13,[5589]=10,[5590]=11,[5591]=11,[5592]=11,[5593]=11,[5595]=11,[5596]=11,[5604]=13,[5605]=10,[5606]=9,
  [5608]=40,[5609]=22,[5610]=15,[5611]=16,[5612]=13,[5613]=23,[5614]=31,[5615]=20,[5616]=47,[5617]=13,[5618]=11,
  [5622]=22,[5624]=38,[5626]=20,[5627]=20,[5629]=20,[5630]=20,[5739]=38,[5744]=12,[5749]=23,[5750]=23,[5751]=25,
  [5752]=26,[5753]=31,[5754]=31,[5755]=35,[5756]=37,[5757]=20,[5761]=5,[5762]=5,[5763]=15,[5764]=25,[5765]=25,
  [5766]=27,[5767]=9,[5770]=30,[5776]=5,[5777]=5,[5778]=5,[5779]=5,[5780]=18,[5781]=19,[5782]=34,[5783]=38,
  [5812]=25,[5813]=32,[5814]=30,[5815]=31,[5817]=30,[5818]=30,[5819]=33,[5820]=32,[5936]=8,[5939]=8,[5940]=12,
  [5941]=11,[5943]=25,[5944]=15,[5956]=1,[5957]=8,[5958]=21,[5961]=23,[5962]=32,[5963]=34,[5964]=35,[5965]=37,
  [5966]=38,[5967]=18,[5969]=23,[5970]=23,[5971]=26,[5975]=23,[6040]=37,[6058]=5,[6059]=5,[6060]=5,[6061]=8,
  [6062]=10,[6063]=8,[6070]=5,[6076]=5,[6078]=5,[6084]=13,[6085]=13,[6087]=24,[6092]=18,[6093]=27,[6094]=18,
  [6095]=24,[6098]=1,[6116]=1,[6118]=1,[6119]=1,[6121]=1,[6122]=1,[6123]=1,[6124]=1,[6126]=1,[6127]=1,
  [6129]=1,[6135]=1,[6137]=1,[6138]=1,[6139]=1,[6140]=1,[6144]=1,[6147]=10,[6148]=10,[6171]=5,[6173]=5,
  [6176]=5,[6177]=12,[6179]=19,[6180]=15,[6182]=10,[6185]=5,[6186]=18,[6187]=17,[6188]=15,[6189]=24,[6191]=23,
  [6194]=32,[6195]=15,[6196]=34,[6197]=22,[6198]=30,[6199]=24,[6200]=29,[6201]=10,[6202]=11,[6203]=11,[6204]=32,
  [6205]=15,[6206]=15,[6214]=16,[6215]=13,[6219]=10,[6220]=29,[6223]=35,[6226]=23,[6238]=10,[6239]=12,[6240]=12,
  [6241]=10,[6242]=14,[6256]=1,[6263]=20,[6264]=23,[6266]=13,[6267]=12,[6268]=13,[6269]=12,[6282]=32,[6292]=15,
  [6294]=15,[6295]=15,[6309]=15,[6310]=15,[6311]=15,[6314]=27,[6315]=27,[6318]=26,[6319]=26,[6320]=28,[6321]=26,
  [6323]=25,[6324]=29,[6327]=37,[6331]=36,[6332]=22,[6333]=22,[6335]=29,[6336]=13,[6337]=12,[6340]=26,[6341]=19,
  [6350]=18,[6360]=25,[6363]=25,[6364]=25,[6365]=10,[6366]=20,[6367]=30,[6378]=17,[6379]=17,[6380]=18,[6381]=23,
  [6382]=23,[6383]=24,[6386]=30,[6387]=29,[6388]=30,[6389]=31,[6392]=29,[6393]=28,[6394]=27,[6395]=29,[6396]=32,
  [6397]=29,[6398]=29,[6399]=30,[6400]=31,[6402]=36,[6403]=33,[6404]=35,[6405]=36,[6406]=34,[6407]=33,[6408]=34,
  [6409]=34,[6410]=33,[6411]=41,[6412]=39,[6413]=37,[6414]=29,[6415]=41,[6416]=38,[6417]=37,[6418]=37,[6419]=38,
  [6420]=39,[6421]=38,[6422]=39,[6423]=45,[6424]=42,[6425]=44,[6426]=43,[6427]=46,[6428]=43,[6429]=44,[6430]=46,
  [6431]=43,[6432]=41,[6433]=43,[6440]=48,[6446]=25,[6447]=20,[6448]=22,[6449]=22,[6459]=23,[6460]=24,[6461]=27,
  [6463]=26,[6465]=22,[6466]=18,[6467]=21,[6468]=23,[6469]=24,[6472]=24,[6473]=23,[6477]=20,[6480]=20,[6481]=23,
  [6482]=24,[6502]=22,[6503]=22,[6504]=24,[6505]=24,[6506]=11,[6507]=10,[6508]=9,[6509]=10,[6510]=11,[6511]=11,
  [6512]=13,[6513]=10,[6514]=10,[6515]=11,[6517]=10,[6518]=11,[6519]=10,[6520]=9,[6521]=11,[6523]=17,[6524]=22,
  [6525]=27,[6526]=37,[6527]=13,[6528]=17,[6531]=18,[6536]=19,[6537]=15,[6538]=19,[6539]=16,[6540]=18,[6541]=16,
  [6542]=15,[6543]=15,[6545]=18,[6546]=17,[6547]=17,[6548]=16,[6549]=14,[6550]=15,[6551]=17,[6552]=19,[6553]=18,
  [6554]=17,[6555]=14,[6556]=15,[6557]=16,[6558]=15,[6559]=16,[6560]=17,[6561]=21,[6562]=21,[6563]=20,[6564]=21,
  [6565]=22,[6566]=24,[6567]=25,[6568]=24,[6569]=25,[6570]=22,[6571]=22,[6572]=23,[6573]=23,[6574]=22,[6575]=20,
  [6576]=22,[6577]=23,[6578]=23,[6579]=24,[6580]=23,[6581]=21,[6582]=22,[6583]=21,[6584]=25,[6585]=20,[6586]=23,
  [6587]=24,[6588]=23,[6590]=29,[6591]=27,[6592]=29,[6593]=26,[6594]=28,[6595]=28,[6596]=28,[6597]=28,[6598]=28,
  [6599]=29,[6600]=27,[6601]=28,[6602]=27,[6603]=30,[6604]=26,[6605]=28,[6607]=30,[6608]=27,[6609]=32,[6610]=32,
  [6611]=29,[6612]=28,[6613]=28,[6614]=28,[6615]=29,[6616]=32,[6617]=30,[6622]=63,[6627]=28,[6628]=22,[6629]=23,
  [6630]=25,[6631]=25,[6632]=20,[6633]=23,[6641]=26,[6642]=25,[6651]=12,[6653]=1,[6654]=1,[6659]=20,[6660]=55,
  [6664]=26,[6665]=26,[6666]=22,[6667]=27,[6668]=27,[6669]=25,[6670]=27,[6671]=27,[6675]=27,[6676]=27,[6677]=26,
  [6678]=28,[6679]=29,[6681]=32,[6682]=31,[6685]=30,[6686]=33,[6687]=34,[6688]=32,[6689]=32,[6690]=34,[6691]=35,
  [6692]=36,[6693]=36,[6694]=36,[6695]=32,[6696]=32,[6697]=32,[6709]=18,[6713]=5,[6719]=30,[6720]=37,[6721]=24,
  [6722]=30,[6723]=45,[6725]=36,[6726]=41,[6727]=41,[6729]=38,[6731]=20,[6732]=38,[6737]=35,[6738]=35,[6739]=29,
  [6740]=29,[6741]=29,[6742]=36,[6743]=25,[6744]=33,[6745]=33,[6746]=40,[6747]=40,[6748]=31,[6749]=31,[6750]=31,
  [6751]=30,[6752]=30,[6756]=5,[6757]=38,[6773]=42,[6774]=42,[6780]=36,[6784]=36,[6786]=10,[6787]=22,[6788]=42,
  [6789]=42,[6790]=32,[6791]=40,[6792]=40,[6793]=40,[6794]=40,[6797]=37,[6798]=37,[6801]=40,[6802]=44,[6803]=44,
  [6804]=40,[6806]=40,[6828]=38,[6829]=44,[6830]=44,[6831]=44,[6832]=42,[6834]=1,[6835]=23,[6836]=1,[6898]=25,
  [6900]=38,[6901]=29,[6902]=27,[6903]=28,[6904]=28,[6905]=27,[6906]=28,[6907]=25,[6908]=25,[6909]=31,[6910]=31,
  [6911]=31,[6953]=31,[6966]=15,[6967]=15,[6968]=15,[6969]=15,[6970]=20,[6971]=31,[6972]=30,[6973]=29,[6974]=31,
  [6975]=40,[6976]=40,[6977]=40,[6978]=15,[6979]=15,[6980]=15,[6981]=15,[6982]=15,[6983]=15,[6984]=15,[6985]=15,
  [6998]=25,[7000]=25,[7001]=29,[7002]=29,[7003]=27,[7004]=27,[7005]=4,[7026]=9,[7027]=28,[7046]=28,[7047]=29,
  [7048]=29,[7049]=30,[7050]=32,[7051]=34,[7052]=35,[7053]=35,[7054]=38,[7055]=35,[7056]=36,[7057]=36,[7058]=37,
  [7059]=38,[7060]=38,[7061]=39,[7062]=39,[7063]=41,[7064]=42,[7065]=33,[7094]=10,[7095]=9,[7106]=33,[7107]=33,
  [7108]=11,[7109]=9,[7110]=31,[7111]=37,[7112]=41,[7113]=46,[7115]=15,[7116]=15,[7117]=15,[7118]=15,[7120]=20,
  [7129]=31,[7130]=31,[7132]=29,[7133]=30,[7148]=33,[7166]=11,[7189]=45,[7229]=13,[7230]=23,[7276]=9,[7277]=9,
  [7278]=5,[7279]=5,[7280]=11,[7281]=14,[7282]=19,[7283]=20,[7284]=24,[7285]=24,[7297]=33,[7298]=13,[7326]=15,
  [7327]=15,[7328]=15,[7329]=15,[7330]=33,[7331]=34,[7332]=45,[7334]=28,[7335]=28,[7336]=24,[7337]=60,[7338]=10,
  [7339]=40,[7340]=50,[7341]=20,[7342]=30,[7344]=33,[7348]=25,[7349]=27,[7350]=10,[7351]=11,[7352]=27,[7353]=35,
  [7354]=33,[7355]=31,[7356]=30,[7357]=34,[7358]=28,[7359]=29,[7366]=32,[7367]=33,[7368]=34,[7369]=35,[7370]=31,
  [7371]=35,[7372]=35,[7373]=33,[7374]=35,[7375]=35,[7377]=36,[7378]=37,[7386]=38,[7387]=39,[7390]=40,[7391]=40,
  [7406]=32,[7407]=35,[7408]=33,[7409]=33,[7410]=31,[7411]=31,[7412]=32,[7413]=33,[7414]=34,[7415]=29,[7416]=31,
  [7417]=34,[7418]=35,[7419]=30,[7420]=33,[7421]=33,[7422]=32,[7423]=34,[7424]=33,[7429]=40,[7430]=40,[7431]=39,
  [7432]=38,[7433]=37,[7434]=37,[7435]=38,[7436]=35,[7437]=36,[7438]=36,[7439]=40,[7440]=39,[7441]=38,[7443]=37,
  [7444]=37,[7445]=38,[7446]=36,[7447]=36,[7448]=36,[7454]=39,[7455]=39,[7456]=38,[7457]=37,[7458]=37,[7459]=38,
  [7460]=34,[7461]=36,[7462]=37,[7463]=38,[7465]=39,[7468]=45,[7469]=44,[7470]=42,[7471]=42,[7472]=41,[7473]=42,
  [7474]=40,[7475]=41,[7476]=40,[7477]=45,[7478]=43,[7479]=42,[7480]=41,[7481]=42,[7482]=42,[7483]=40,[7484]=41,
  [7485]=41,[7486]=44,[7487]=43,[7488]=42,[7489]=41,[7490]=42,[7491]=43,[7492]=39,[7493]=40,[7494]=41,[7495]=44,
  [7496]=43,[7506]=25,[7507]=10,[7508]=10,[7509]=20,[7510]=20,[7511]=31,[7512]=31,[7513]=40,[7514]=40,[7515]=40,
  [7517]=50,[7518]=50,[7519]=47,[7520]=47,[7521]=46,[7522]=45,[7523]=46,[7524]=44,[7525]=45,[7526]=46,[7527]=50,
  [7528]=48,[7529]=47,[7530]=46,[7531]=46,[7532]=47,[7533]=44,[7534]=45,[7535]=46,[7536]=48,[7537]=49,[7538]=48,
  [7539]=48,[7540]=47,[7541]=46,[7542]=46,[7543]=47,[7544]=44,[7545]=45,[7546]=46,[7549]=47,[7551]=47,[7552]=44,
  [7553]=48,[7554]=19,[7555]=45,[7556]=40,[7557]=50,[7558]=25,[7559]=17,[7606]=22,[7607]=22,[7608]=21,[7609]=35,
  [7610]=41,[7611]=46,[7673]=47,[7682]=34,[7683]=34,[7684]=35,[7685]=38,[7686]=35,[7687]=35,[7688]=35,[7689]=35,
  [7690]=35,[7691]=35,[7708]=35,[7709]=35,[7710]=36,[7711]=38,[7712]=38,[7713]=39,[7714]=39,[7717]=42,[7718]=42,
  [7719]=42,[7720]=44,[7721]=44,[7722]=44,[7723]=44,[7724]=44,[7726]=44,[7727]=32,[7728]=34,[7729]=33,[7730]=34,
  [7731]=35,[7734]=51,[7736]=39,[7738]=18,[7739]=18,[7746]=41,[7747]=41,[7748]=45,[7749]=41,[7750]=33,[7751]=30,
  [7752]=33,[7753]=32,[7754]=30,[7755]=38,[7756]=34,[7757]=37,[7758]=39,[7759]=38,[7760]=39,[7761]=38,[7786]=30,
  [7787]=31,[7809]=30,[7888]=47,[7913]=32,[7914]=32,[7915]=35,[7916]=36,[7917]=37,[7918]=41,[7919]=41,[7920]=42,
  [7921]=42,[7922]=43,[7924]=43,[7926]=44,[7927]=44,[7928]=45,[7929]=42,[7930]=46,[7931]=46,[7932]=47,[7933]=47,
  [7934]=47,[7935]=48,[7936]=49,[7937]=49,[7938]=45,[7939]=49,[7941]=42,[7942]=44,[7943]=45,[7944]=48,[7945]=46,
  [7946]=49,[7947]=51,[7954]=47,[7955]=11,[7956]=25,[7957]=26,[7958]=27,[7959]=50,[7960]=52,[7961]=49,[7963]=40,
  [7996]=20,[7997]=15,[8006]=39,[8067]=10,[8068]=20,[8069]=35,[8071]=23,[8080]=58,[8081]=57,[8082]=52,[8083]=53,
  [8084]=56,[8085]=55,[8086]=54,[8088]=50,[8089]=50,[8090]=50,[8091]=50,[8092]=50,[8093]=50,[8094]=50,[8106]=51,
  [8107]=47,[8108]=47,[8109]=46,[8110]=47,[8111]=48,[8112]=49,[8113]=51,[8114]=47,[8115]=48,[8116]=47,[8117]=47,
  [8118]=46,[8119]=51,[8120]=45,[8121]=47,[8122]=48,[8123]=49,[8124]=48,[8125]=48,[8126]=51,[8127]=47,[8128]=49,
  [8129]=49,[8130]=49,[8131]=50,[8132]=51,[8133]=50,[8134]=51,[8135]=46,[8137]=43,[8138]=47,[8139]=44,[8140]=43,
  [8141]=44,[8142]=44,[8143]=46,[8144]=45,[8156]=40,[8157]=42,[8158]=40,[8159]=40,[8160]=40,[8161]=40,[8162]=41,
  [8163]=41,[8174]=40,[8175]=41,[8176]=41,[8177]=7,[8178]=10,[8179]=6,[8180]=11,[8181]=9,[8182]=7,[8183]=27,
  [8184]=29,[8185]=47,[8186]=26,[8187]=41,[8188]=37,[8189]=42,[8190]=55,[8191]=46,[8192]=42,[8193]=46,[8194]=43,
  [8196]=43,[8197]=47,[8198]=42,[8199]=47,[8200]=43,[8201]=44,[8202]=47,[8203]=44,[8204]=45,[8205]=44,[8206]=49,
  [8207]=48,[8208]=50,[8209]=47,[8210]=44,[8211]=45,[8212]=50,[8213]=49,[8214]=45,[8215]=50,[8216]=48,[8217]=45,
  [8218]=45,[8223]=37,[8224]=36,[8225]=36,[8226]=31,[8245]=56,[8246]=52,[8247]=51,[8248]=50,[8249]=52,[8250]=52,
  [8251]=54,[8252]=56,[8253]=51,[8254]=53,[8255]=50,[8256]=52,[8257]=50,[8258]=56,[8259]=50,[8260]=52,[8261]=54,
  [8262]=54,[8263]=53,[8264]=52,[8265]=56,[8266]=51,[8267]=54,[8268]=54,[8269]=55,[8270]=55,[8271]=56,[8272]=54,
  [8273]=46,[8274]=51,[8275]=56,[8276]=47,[8277]=46,[8278]=47,[8279]=48,[8280]=49,[8281]=48,[8282]=51,[8283]=61,
  [8284]=57,[8285]=56,[8286]=55,[8287]=57,[8288]=59,[8289]=60,[8290]=61,[8291]=56,[8292]=58,[8293]=56,[8294]=57,
  [8295]=56,[8296]=61,[8297]=55,[8298]=57,[8299]=59,[8300]=60,[8301]=59,[8302]=58,[8303]=62,[8304]=57,[8305]=59,
  [8306]=59,[8307]=60,[8308]=60,[8309]=61,[8310]=60,[8311]=53,[8312]=57,[8313]=62,[8314]=53,[8315]=52,[8316]=53,
  [8317]=54,[8318]=56,[8319]=55,[8320]=57,[8345]=45,[8346]=46,[8347]=45,[8348]=50,[8349]=50,[8350]=15,[8367]=51,
  [8624]=10,[8625]=10,[8626]=10,[8663]=40,[8703]=45,[8708]=50,[8746]=33,[8747]=35,[8748]=30,[8749]=43,[8750]=42,
  [8751]=44,[8752]=54,[8753]=57,[8754]=56,[8755]=55,[9243]=45,[9285]=41,[9286]=44,[9287]=41,[9288]=41,[9289]=41,
  [9290]=42,[9291]=43,[9292]=42,[9333]=1,[9359]=45,[9362]=31,[9366]=41,[9372]=55,[9375]=38,[9378]=38,[9379]=49,
  [9381]=38,[9382]=38,[9383]=40,[9384]=36,[9385]=36,[9386]=36,[9387]=41,[9388]=40,[9389]=41,[9390]=40,[9391]=37,
  [9392]=40,[9393]=38,[9394]=42,[9395]=34,[9396]=39,[9397]=39,[9398]=40,[9399]=40,[9400]=41,[9401]=43,[9402]=60,
  [9403]=40,[9404]=42,[9405]=33,[9406]=35,[9407]=40,[9408]=42,[9409]=42,[9410]=45,[9411]=45,[9412]=47,[9413]=49,
  [9414]=46,[9415]=47,[9416]=47,[9418]=49,[9419]=46,[9420]=37,[9422]=43,[9423]=45,[9424]=41,[9425]=44,[9426]=41,
  [9427]=42,[9428]=35,[9429]=44,[9430]=45,[9431]=43,[9432]=42,[9433]=46,[9434]=41,[9435]=36,[9444]=26,[9445]=34,
  [9446]=34,[9447]=34,[9448]=33,[9449]=34,[9450]=33,[9452]=32,[9453]=32,[9454]=32,[9455]=33,[9456]=35,[9457]=35,
  [9458]=37,[9459]=37,[9461]=37,[9465]=45,[9467]=47,[9469]=48,[9470]=49,[9473]=49,[9474]=49,[9475]=49,[9476]=50,
  [9477]=50,[9478]=50,[9479]=50,[9480]=48,[9481]=49,[9482]=47,[9483]=49,[9484]=50,[9485]=30,[9486]=28,[9487]=29,
  [9488]=28,[9489]=31,[9490]=29,[9491]=32,[9492]=37,[9508]=31,[9509]=30,[9510]=32,[9511]=46,[9512]=46,[9513]=10,
  [9514]=10,[9515]=31,[9516]=31,[9517]=40,[9518]=36,[9519]=36,[9520]=41,[9521]=41,[9522]=36,[9527]=46,[9531]=46,
  [9533]=47,[9534]=47,[9535]=30,[9536]=30,[9538]=35,[9587]=45,[9588]=35,[9598]=10,[9599]=10,[9600]=12,[9601]=12,
  [9602]=10,[9603]=10,[9604]=30,[9605]=30,[9607]=25,[9608]=31,[9609]=31,[9622]=35,[9623]=37,[9624]=37,[9625]=37,
  [9626]=42,[9627]=42,[9630]=45,[9631]=45,[9632]=45,[9633]=45,[9634]=46,[9635]=45,[9636]=45,[9637]=45,[9638]=50,
  [9639]=48,[9640]=48,[9641]=48,[9642]=50,[9643]=51,[9644]=51,[9645]=49,[9646]=49,[9647]=48,[9648]=48,[9649]=55,
  [9650]=55,[9651]=53,[9652]=53,[9653]=50,[9654]=50,[9655]=50,[9656]=49,[9657]=49,[9658]=43,[9660]=43,[9661]=43,
  [9662]=43,[9663]=45,[9664]=45,[9665]=50,[9666]=50,[9678]=43,[9679]=43,[9680]=43,[9682]=44,[9683]=50,[9684]=51,
  [9686]=51,[9687]=33,[9698]=33,[9699]=33,[9703]=43,[9704]=43,[9705]=43,[9706]=43,[9718]=38,[9742]=12,[9743]=12,
  [9744]=12,[9745]=11,[9746]=13,[9747]=14,[9748]=15,[9749]=15,[9750]=12,[9751]=12,[9752]=12,[9753]=12,[9754]=11,
  [9755]=13,[9756]=14,[9757]=15,[9758]=12,[9759]=13,[9760]=12,[9761]=11,[9762]=13,[9763]=14,[9764]=13,[9765]=15,
  [9766]=22,[9767]=23,[9768]=21,[9769]=27,[9770]=20,[9771]=25,[9772]=27,[9773]=27,[9774]=27,[9775]=19,[9776]=20,
  [9777]=19,[9778]=20,[9779]=18,[9780]=20,[9781]=22,[9782]=23,[9783]=20,[9784]=19,[9785]=17,[9786]=16,[9787]=19,
  [9788]=18,[9789]=19,[9790]=19,[9791]=29,[9792]=25,[9793]=25,[9794]=25,[9795]=26,[9796]=27,[9797]=28,[9798]=29,
  [9799]=26,[9800]=29,[9801]=25,[9802]=26,[9803]=26,[9804]=26,[9805]=24,[9806]=27,[9807]=27,[9808]=28,[9809]=28,
  [9810]=25,[9811]=24,[9812]=22,[9813]=25,[9814]=24,[9815]=25,[9816]=25,[9817]=26,[9818]=25,[9819]=34,[9820]=31,
  [9821]=30,[9822]=29,[9823]=31,[9824]=32,[9825]=33,[9826]=34,[9827]=30,[9828]=31,[9829]=29,[9830]=32,[9831]=29,
  [9832]=31,[9833]=33,[9834]=32,[9835]=33,[9836]=33,[9837]=30,[9838]=29,[9839]=31,[9840]=31,[9841]=32,[9842]=32,
  [9843]=33,[9844]=38,[9845]=35,[9846]=35,[9847]=33,[9848]=36,[9849]=36,[9850]=36,[9851]=37,[9852]=38,[9853]=34,
  [9854]=38,[9855]=35,[9856]=36,[9857]=34,[9858]=36,[9859]=36,[9860]=34,[9861]=35,[9862]=37,[9863]=37,[9864]=36,
  [9865]=34,[9866]=38,[9867]=33,[9868]=35,[9869]=35,[9870]=36,[9871]=37,[9872]=37,[9873]=37,[9874]=43,[9875]=39,
  [9876]=40,[9877]=38,[9878]=41,[9879]=39,[9880]=40,[9881]=41,[9882]=43,[9883]=42,[9884]=43,[9885]=40,[9886]=39,
  [9887]=43,[9889]=40,[9890]=38,[9891]=39,[9892]=40,[9893]=42,[9894]=41,[9895]=40,[9896]=39,[9897]=42,[9898]=38,
  [9899]=42,[9900]=40,[9901]=40,[9902]=41,[9903]=42,[9904]=41,[9905]=48,[9906]=44,[9907]=44,[9908]=43,[9909]=43,
  [9910]=44,[9911]=46,[9912]=45,[9913]=48,[9914]=48,[9915]=45,[9916]=44,[9917]=44,[9918]=45,[9919]=43,[9920]=44,
  [9921]=45,[9922]=46,[9923]=45,[9924]=48,[9925]=44,[9926]=43,[9927]=42,[9928]=45,[9929]=41,[9930]=43,[9931]=43,
  [9932]=44,[9933]=45,[9934]=44,[9935]=45,[9936]=49,[9937]=48,[9938]=48,[9939]=49,[9940]=50,[9941]=49,[9942]=50,
  [9943]=53,[9944]=53,[9945]=48,[9946]=53,[9947]=48,[9948]=49,[9949]=48,[9950]=53,[9951]=47,[9952]=49,[9953]=50,
  [9954]=51,[9955]=50,[9956]=46,[9957]=50,[9958]=50,[9959]=45,[9960]=47,[9961]=47,[9962]=48,[9963]=48,[9964]=49,
  [9965]=49,[9966]=45,[9967]=43,[9968]=42,[9969]=43,[9970]=44,[9971]=43,[9972]=42,[9973]=42,[9974]=52,[9978]=1,
  [9998]=41,[9999]=41,[10001]=42,[10002]=42,[10003]=43,[10004]=43,[10007]=43,[10008]=43,[10009]=43,[10018]=45,[10019]=45,
  [10021]=45,[10023]=45,[10024]=46,[10025]=49,[10026]=46,[10027]=46,[10028]=47,[10029]=47,[10030]=48,[10031]=48,[10033]=48,
  [10035]=35,[10036]=35,[10040]=35,[10041]=50,[10042]=45,[10043]=31,[10044]=49,[10045]=7,[10046]=9,[10047]=15,[10048]=24,
  [10050]=35,[10051]=35,[10053]=47,[10057]=55,[10058]=50,[10059]=50,[10060]=49,[10061]=51,[10062]=51,[10063]=51,[10064]=53,
  [10065]=55,[10066]=49,[10067]=49,[10068]=51,[10069]=49,[10070]=55,[10071]=49,[10072]=51,[10073]=52,[10074]=53,[10075]=51,
  [10076]=49,[10077]=53,[10078]=53,[10079]=48,[10080]=50,[10081]=50,[10082]=51,[10083]=51,[10084]=52,[10085]=52,[10086]=49,
  [10087]=46,[10088]=45,[10089]=45,[10090]=46,[10091]=47,[10092]=47,[10093]=54,[10094]=45,[10095]=56,[10096]=54,[10097]=57,
  [10098]=53,[10099]=55,[10100]=57,[10101]=58,[10102]=59,[10103]=54,[10104]=59,[10105]=60,[10106]=56,[10107]=54,[10108]=53,
  [10109]=54,[10110]=55,[10111]=57,[10112]=58,[10113]=57,[10118]=58,[10119]=57,[10120]=53,[10121]=56,[10122]=55,[10123]=57,
  [10124]=57,[10125]=56,[10126]=54,[10127]=49,[10128]=54,[10129]=50,[10130]=50,[10131]=50,[10132]=51,[10133]=52,[10134]=51,
  [10135]=64,[10136]=60,[10137]=61,[10138]=59,[10139]=62,[10140]=61,[10141]=63,[10142]=62,[10143]=64,[10144]=60,[10145]=59,
  [10146]=61,[10147]=60,[10148]=58,[10149]=61,[10150]=62,[10151]=64,[10152]=63,[10153]=62,[10154]=61,[10155]=61,[10156]=60,
  [10157]=64,[10158]=64,[10159]=59,[10160]=62,[10161]=61,[10162]=63,[10163]=62,[10164]=58,[10165]=55,[10166]=54,[10167]=55,
  [10168]=56,[10169]=57,[10170]=56,[10171]=54,[10172]=55,[10173]=53,[10174]=52,[10175]=55,[10176]=54,[10177]=56,[10178]=58,
  [10179]=54,[10180]=52,[10181]=58,[10182]=58,[10183]=54,[10184]=52,[10185]=51,[10186]=53,[10187]=55,[10188]=56,[10189]=55,
  [10190]=52,[10191]=51,[10192]=53,[10193]=55,[10194]=50,[10195]=55,[10196]=52,[10197]=52,[10198]=53,[10199]=54,[10200]=53,
  [10201]=48,[10202]=48,[10203]=52,[10204]=55,[10205]=49,[10206]=48,[10207]=49,[10208]=50,[10209]=50,[10210]=60,[10211]=59,
  [10212]=57,[10213]=58,[10214]=59,[10215]=62,[10216]=58,[10217]=61,[10218]=62,[10219]=60,[10220]=63,[10221]=58,[10222]=59,
  [10223]=58,[10224]=57,[10225]=59,[10226]=61,[10227]=62,[10228]=60,[10229]=56,[10230]=60,[10231]=55,[10232]=58,[10233]=57,
  [10234]=58,[10235]=59,[10236]=59,[10237]=58,[10238]=52,[10239]=51,[10240]=55,[10241]=53,[10242]=52,[10243]=51,[10244]=54,
  [10245]=53,[10246]=65,[10247]=63,[10248]=62,[10249]=61,[10250]=63,[10251]=63,[10252]=64,[10253]=63,[10254]=65,[10255]=62,
  [10256]=61,[10257]=62,[10258]=60,[10259]=62,[10260]=63,[10261]=63,[10262]=64,[10263]=63,[10264]=65,[10265]=62,[10266]=65,
  [10267]=61,[10268]=63,[10269]=62,[10270]=63,[10271]=65,[10272]=63,[10273]=64,[10274]=63,[10275]=60,[10276]=56,[10277]=57,
  [10278]=55,[10279]=58,[10280]=59,[10281]=58,[10282]=56,[10287]=26,[10288]=31,[10289]=32,[10298]=30,[10299]=31,[10328]=39,
  [10329]=37,[10330]=43,[10331]=38,[10332]=35,[10333]=36,[10358]=36,[10359]=36,[10362]=58,[10363]=60,[10364]=58,[10365]=59,
  [10366]=63,[10367]=65,[10368]=62,[10369]=58,[10370]=57,[10371]=58,[10372]=59,[10373]=61,[10374]=59,[10375]=57,[10376]=60,
  [10377]=59,[10378]=63,[10379]=61,[10380]=60,[10381]=59,[10382]=62,[10383]=61,[10384]=65,[10385]=62,[10386]=62,[10387]=61,
  [10388]=63,[10389]=64,[10390]=63,[10391]=60,[10399]=24,[10400]=18,[10401]=18,[10402]=18,[10403]=22,[10404]=30,[10405]=22,
  [10406]=32,[10407]=21,[10408]=32,[10409]=32,[10410]=23,[10411]=23,[10412]=21,[10413]=19,[10418]=50,[10421]=7,[10423]=31,
  [10455]=60,[10461]=45,[10462]=47,[10499]=35,[10500]=41,[10501]=44,[10502]=43,[10503]=46,[10504]=49,[10506]=46,[10508]=41,
  [10510]=44,[10512]=42,[10513]=49,[10515]=1,[10518]=45,[10542]=41,[10543]=41,[10544]=5,[10545]=42,[10547]=8,[10549]=12,
  [10550]=12,[10553]=11,[10554]=11,[10567]=38,[10570]=39,[10571]=37,[10572]=39,[10573]=37,[10574]=40,[10576]=50,[10577]=41,
  [10578]=38,[10581]=40,[10582]=36,[10583]=39,[10584]=36,[10587]=46,[10588]=47,[10623]=48,[10624]=47,[10625]=49,[10626]=50,
  [10627]=47,[10628]=48,[10629]=50,[10630]=51,[10631]=46,[10632]=49,[10633]=51,[10634]=46,[10635]=5,[10636]=5,[10637]=15,
  [10638]=15,[10645]=48,[10652]=51,[10653]=30,[10654]=31,[10655]=5,[10656]=5,[10657]=26,[10658]=25,[10659]=57,[10686]=55,
  [10696]=60,[10697]=60,[10698]=60,[10700]=45,[10701]=45,[10702]=43,[10703]=45,[10704]=46,[10705]=47,[10706]=47,[10707]=52,
  [10708]=52,[10709]=55,[10710]=38,[10711]=44,[10716]=41,[10720]=42,[10721]=43,[10724]=45,[10725]=46,[10726]=47,[10727]=48,
  [10739]=53,[10740]=53,[10741]=53,[10742]=51,[10743]=51,[10744]=51,[10745]=50,[10746]=50,[10747]=41,[10748]=41,[10749]=54,
  [10750]=54,[10751]=54,[10758]=42,[10760]=39,[10761]=44,[10762]=44,[10763]=44,[10764]=44,[10765]=43,[10766]=40,[10767]=42,
  [10768]=42,[10769]=41,[10770]=41,[10771]=41,[10772]=41,[10774]=42,[10775]=42,[10776]=42,[10777]=42,[10778]=60,[10779]=60,
  [10780]=55,[10781]=55,[10782]=55,[10783]=52,[10784]=52,[10785]=52,[10786]=52,[10787]=52,[10788]=52,[10795]=54,[10796]=54,
  [10797]=53,[10798]=51,[10799]=51,[10800]=52,[10801]=52,[10802]=52,[10803]=54,[10804]=54,[10805]=54,[10806]=55,[10807]=55,
  [10808]=55,[10820]=15,[10821]=15,[10823]=44,[10824]=44,[10826]=48,[10827]=48,[10828]=56,[10829]=56,[10833]=56,[10835]=56,
  [10836]=56,[10837]=56,[10838]=54,[10842]=54,[10843]=54,[10844]=54,[10845]=54,[10846]=54,[10847]=57,[10919]=18,[10959]=55,
  [11086]=50,[11118]=47,[11120]=55,[11121]=26,[11122]=50,[11123]=55,[11124]=55,[11187]=5,[11189]=5,[11190]=5,[11191]=10,
  [11192]=5,[11193]=57,[11194]=57,[11195]=57,[11196]=57,[11229]=32,[11262]=44,[11263]=40,[11265]=42,[11284]=45,[11285]=45,
  [11287]=15,[11288]=23,[11289]=31,[11290]=35,[11302]=52,[11303]=16,[11304]=19,[11305]=35,[11306]=32,[11307]=47,[11308]=49,
  [11310]=47,[11311]=46,[11324]=45,[11362]=15,[11363]=15,[11411]=28,[11469]=46,[11475]=5,[11502]=46,[11508]=1,[11603]=51,
  [11604]=59,[11605]=58,[11606]=56,[11607]=57,[11608]=55,[11623]=52,[11624]=52,[11625]=53,[11626]=53,[11627]=53,[11628]=53,
  [11629]=53,[11630]=52,[11631]=52,[11632]=52,[11633]=54,[11634]=54,[11635]=54,[11662]=54,[11665]=54,[11669]=59,[11675]=55,
  [11677]=55,[11678]=55,[11679]=55,[11684]=60,[11685]=55,[11686]=55,[11702]=55,[11703]=55,[11722]=55,[11726]=57,[11728]=57,
  [11729]=57,[11730]=57,[11731]=57,[11735]=57,[11742]=55,[11743]=55,[11744]=56,[11745]=56,[11746]=56,[11747]=53,[11748]=53,
  [11749]=53,[11750]=53,[11755]=56,[11764]=57,[11765]=57,[11766]=57,[11767]=57,[11768]=57,[11782]=57,[11783]=57,[11784]=53,
  [11785]=58,[11786]=56,[11787]=58,[11802]=58,[11803]=56,[11805]=56,[11807]=58,[11808]=59,[11809]=56,[11810]=60,[11811]=55,
  [11812]=58,[11814]=58,[11815]=58,[11816]=56,[11817]=56,[11819]=59,[11820]=58,[11821]=58,[11822]=59,[11823]=59,[11824]=54,
  [11832]=58,[11839]=55,[11841]=55,[11842]=55,[11845]=1,[11847]=5,[11848]=5,[11849]=5,[11850]=5,[11851]=5,[11852]=5,
  [11853]=18,[11854]=19,[11855]=19,[11856]=45,[11857]=46,[11858]=45,[11859]=45,[11860]=46,[11861]=46,[11862]=52,[11863]=52,
  [11864]=52,[11865]=53,[11866]=55,[11867]=53,[11868]=53,[11869]=53,[11870]=54,[11871]=54,[11872]=54,[11873]=56,[11874]=56,
  [11875]=54,[11876]=56,[11882]=56,[11884]=33,[11888]=50,[11889]=50,[11902]=56,[11904]=56,[11905]=56,[11906]=55,[11907]=55,
  [11908]=55,[11909]=55,[11910]=55,[11911]=55,[11913]=55,[11915]=55,[11916]=55,[11917]=55,[11918]=55,[11919]=55,[11920]=56,
  [11921]=57,[11922]=57,[11923]=57,[11924]=60,[11925]=57,[11926]=57,[11927]=57,[11928]=60,[11929]=57,[11930]=60,[11931]=59,
  [11932]=59,[11933]=60,[11934]=61,[11935]=58,[11936]=20,[11945]=53,[11946]=52,[11962]=55,[11963]=53,[11964]=55,[11965]=20,
  [11967]=23,[11968]=26,[11969]=29,[11970]=34,[11971]=37,[11972]=40,[11973]=43,[11974]=46,[11975]=49,[11976]=52,[11977]=55,
  [11978]=58,[11979]=61,[11980]=64,[11981]=20,[11982]=23,[11983]=26,[11984]=29,[11985]=35,[11986]=39,[11987]=43,[11988]=47,
  [11989]=51,[11990]=55,[11991]=59,[11992]=63,[11993]=22,[11994]=25,[11995]=28,[11996]=34,[11997]=38,[11998]=42,[11999]=46,
  [12000]=55,[12001]=50,[12002]=54,[12004]=58,[12005]=62,[12006]=22,[12007]=25,[12008]=28,[12009]=33,[12010]=37,[12011]=41,
  [12012]=45,[12013]=49,[12014]=53,[12015]=57,[12016]=61,[12017]=65,[12018]=54,[12019]=32,[12020]=36,[12021]=54,[12022]=41,
  [12023]=45,[12024]=50,[12025]=54,[12026]=59,[12027]=63,[12028]=32,[12029]=35,[12030]=39,[12031]=44,[12032]=48,[12034]=53,
  [12035]=57,[12036]=62,[12038]=54,[12039]=33,[12040]=38,[12041]=54,[12042]=42,[12043]=47,[12044]=51,[12045]=56,[12046]=60,
  [12047]=30,[12048]=65,[12049]=53,[12050]=54,[12051]=54,[12052]=21,[12053]=21,[12054]=24,[12055]=52,[12056]=56,[12057]=60,
  [12058]=64,[12059]=58,[12061]=60,[12062]=60,[12064]=1,[12065]=60,[12066]=58,[12082]=58,[12083]=58,[12102]=54,[12103]=63,
  [12108]=58,[12109]=58,[12110]=58,[12111]=58,[12112]=56,[12113]=56,[12114]=56,[12115]=56,[12185]=60,[12225]=10,[12243]=54,
  [12247]=32,[12248]=34,[12249]=31,[12250]=34,[12251]=37,[12252]=39,[12253]=41,[12254]=44,[12255]=46,[12256]=49,[12257]=42,
  [12259]=36,[12260]=39,[12282]=2,[12295]=15,[12296]=17,[12299]=8,[12344]=61,[12400]=52,[12405]=50,[12406]=50,[12408]=51,
  [12409]=56,[12410]=56,[12414]=60,[12415]=54,[12416]=52,[12417]=59,[12418]=57,[12419]=58,[12420]=61,[12422]=60,[12424]=53,
  [12425]=54,[12426]=59,[12427]=59,[12428]=53,[12429]=61,[12446]=5,[12447]=5,[12448]=5,[12449]=5,[12462]=55,[12463]=53,
  [12464]=53,[12465]=53,[12466]=53,[12470]=47,[12471]=47,[12522]=15,[12527]=53,[12528]=52,[12531]=51,[12532]=56,[12535]=54,
  [12542]=51,[12543]=60,[12544]=60,[12545]=60,[12546]=54,[12547]=56,[12548]=60,[12549]=52,[12550]=53,[12551]=56,[12552]=55,
  [12553]=59,[12554]=59,[12555]=55,[12556]=59,[12557]=59,[12582]=60,[12583]=63,[12584]=78,[12587]=63,[12588]=63,[12589]=61,
  [12590]=63,[12592]=63,[12602]=63,[12603]=61,[12604]=60,[12605]=56,[12606]=61,[12608]=58,[12609]=61,[12610]=60,[12611]=60,
  [12612]=61,[12613]=62,[12614]=62,[12618]=63,[12619]=63,[12620]=62,[12621]=59,[12624]=54,[12625]=58,[12626]=59,[12628]=57,
  [12631]=58,[12632]=59,[12633]=60,[12634]=60,[12636]=61,[12637]=60,[12639]=62,[12640]=61,[12641]=63,[12651]=59,[12653]=59,
  [12654]=59,[12709]=63,[12752]=62,[12756]=62,[12757]=62,[12772]=54,[12773]=55,[12774]=55,[12775]=56,[12776]=56,[12777]=56,
  [12781]=57,[12782]=58,[12783]=63,[12784]=63,[12790]=63,[12791]=55,[12792]=58,[12793]=55,[12794]=63,[12796]=63,[12797]=63,
  [12798]=63,[12846]=1,[12895]=62,[12903]=62,[12905]=61,[12926]=61,[12927]=61,[12929]=61,[12930]=60,[12935]=63,[12936]=63,
  [12939]=63,[12940]=63,[12945]=62,[12947]=60,[12952]=60,[12953]=60,[12960]=60,[12963]=63,[12964]=63,[12965]=63,[12966]=63,
  [12967]=63,[12968]=63,[12969]=63,[12974]=31,[12975]=20,[12976]=20,[12977]=20,[12978]=20,[12979]=21,[12982]=21,[12983]=21,
  [12984]=21,[12985]=22,[12987]=22,[12988]=22,[12989]=22,[12990]=23,[12992]=23,[12994]=23,[12996]=23,[12997]=24,[12998]=25,
  [12999]=25,[13000]=62,[13001]=61,[13002]=59,[13003]=56,[13004]=58,[13005]=28,[13006]=62,[13007]=58,[13008]=52,[13009]=51,
  [13010]=26,[13011]=27,[13012]=27,[13013]=56,[13014]=53,[13015]=61,[13016]=26,[13017]=40,[13018]=48,[13019]=32,[13020]=39,
  [13021]=47,[13022]=55,[13023]=63,[13024]=29,[13025]=37,[13026]=45,[13027]=53,[13028]=61,[13029]=43,[13030]=51,[13031]=28,
  [13032]=27,[13033]=34,[13034]=41,[13035]=49,[13036]=57,[13037]=32,[13038]=40,[13039]=48,[13040]=56,[13041]=26,[13042]=41,
  [13043]=49,[13044]=57,[13045]=35,[13046]=50,[13047]=58,[13048]=31,[13049]=29,[13051]=44,[13052]=52,[13053]=60,[13054]=40,
  [13055]=48,[13056]=56,[13057]=28,[13058]=44,[13059]=52,[13060]=60,[13062]=27,[13063]=34,[13064]=42,[13065]=50,[13066]=51,
  [13067]=54,[13068]=42,[13070]=58,[13071]=45,[13072]=60,[13073]=52,[13074]=46,[13075]=63,[13076]=48,[13077]=57,[13079]=30,
  [13081]=38,[13082]=46,[13083]=62,[13084]=35,[13085]=51,[13087]=33,[13088]=41,[13089]=49,[13091]=57,[13093]=37,[13094]=30,
  [13095]=44,[13096]=60,[13097]=29,[13098]=63,[13099]=29,[13100]=44,[13101]=59,[13102]=47,[13103]=38,[13105]=37,[13106]=31,
  [13107]=62,[13108]=34,[13109]=49,[13110]=36,[13111]=54,[13112]=48,[13113]=63,[13114]=30,[13115]=45,[13116]=61,[13117]=42,
  [13118]=57,[13119]=39,[13120]=55,[13121]=38,[13122]=55,[13123]=62,[13124]=35,[13125]=50,[13126]=53,[13127]=32,[13128]=47,
  [13129]=39,[13130]=56,[13131]=29,[13132]=43,[13133]=61,[13134]=49,[13135]=59,[13136]=21,[13137]=34,[13138]=42,[13139]=50,
  [13141]=63,[13142]=63,[13143]=61,[13144]=53,[13145]=40,[13146]=58,[13148]=61,[13161]=61,[13162]=61,[13163]=62,[13164]=61,
  [13166]=60,[13167]=60,[13168]=60,[13169]=60,[13170]=60,[13171]=61,[13173]=60,[13175]=60,[13177]=60,[13178]=60,[13179]=60,
  [13181]=57,[13182]=57,[13183]=60,[13184]=61,[13185]=61,[13198]=60,[13199]=41,[13203]=60,[13204]=60,[13205]=61,[13206]=61,
  [13208]=61,[13209]=61,[13210]=60,[13211]=60,[13212]=60,[13213]=60,[13216]=61,[13217]=61,[13218]=61,[13243]=62,[13244]=60,
  [13245]=20,[13246]=62,[13248]=56,[13249]=62,[13252]=60,[13253]=60,[13254]=56,[13255]=59,[13257]=59,[13258]=61,[13259]=61,
  [13260]=61,[13261]=59,[13262]=76,[13282]=59,[13283]=59,[13284]=58,[13285]=58,[13286]=58,[13289]=1,[13314]=62,[13315]=61,
  [13340]=63,[13344]=63,[13345]=63,[13346]=63,[13347]=1,[13348]=63,[13349]=63,[13353]=63,[13358]=63,[13359]=63,[13360]=63,
  [13361]=63,[13368]=62,[13369]=63,[13371]=58,[13372]=60,[13373]=60,[13374]=60,[13375]=60,[13376]=59,[13377]=61,[13378]=58,
  [13379]=58,[13380]=61,[13381]=61,[13382]=61,[13383]=58,[13384]=58,[13385]=61,[13386]=61,[13387]=61,[13388]=61,[13389]=61,
  [13390]=61,[13391]=61,[13392]=61,[13393]=61,[13394]=59,[13395]=59,[13396]=57,[13397]=61,[13398]=62,[13399]=59,[13400]=59,
  [13401]=61,[13402]=59,[13403]=59,[13404]=57,[13405]=57,[13408]=57,[13409]=57,[13473]=54,[13474]=56,[13475]=55,[13498]=60,
  [13502]=63,[13505]=63,[13515]=60,[13524]=62,[13525]=62,[13526]=62,[13527]=62,[13528]=62,[13529]=61,[13530]=61,[13531]=61,
  [13532]=61,[13533]=61,[13534]=60,[13535]=60,[13537]=60,[13538]=60,[13539]=60,[13544]=60,[13602]=48,[13603]=60,[13699]=36,
  [13700]=46,[13701]=56,[13816]=52,[13817]=58,[13818]=56,[13819]=59,[13820]=54,[13821]=57,[13822]=53,[13823]=51,[13824]=55,
  [13825]=57,[13856]=51,[13857]=52,[13858]=52,[13860]=53,[13863]=55,[13864]=56,[13865]=57,[13866]=59,[13867]=61,[13868]=51,
  [13869]=51,[13870]=53,[13871]=56,[13882]=45,[13883]=45,[13884]=45,[13885]=45,[13886]=45,[13887]=45,[13895]=60,[13896]=30,
  [13897]=10,[13898]=50,[13899]=20,[13900]=40,[13901]=55,[13902]=55,[13903]=55,[13904]=55,[13905]=55,[13906]=55,[13914]=55,
  [13915]=55,[13916]=55,[13917]=55,[13937]=62,[13938]=62,[13944]=62,[13950]=62,[13951]=62,[13952]=62,[13953]=62,[13954]=61,
  [13955]=61,[13956]=61,[13957]=61,[13958]=60,[13959]=60,[13960]=61,[13961]=60,[13962]=60,[13963]=60,[13964]=62,[13965]=63,
  [13966]=63,[13967]=61,[13968]=63,[13969]=61,[13982]=63,[13983]=62,[13984]=63,[13986]=63,[14002]=63,[14022]=62,[14023]=62,
  [14024]=61,[14025]=17,[14042]=52,[14043]=54,[14044]=55,[14045]=56,[14046]=52,[14086]=10,[14087]=8,[14088]=8,[14089]=10,
  [14090]=11,[14091]=11,[14093]=9,[14094]=11,[14095]=11,[14096]=16,[14097]=14,[14098]=10,[14099]=12,[14100]=54,[14101]=54,
  [14102]=13,[14103]=55,[14104]=58,[14106]=61,[14107]=55,[14108]=57,[14109]=16,[14110]=13,[14111]=58,[14112]=62,[14113]=15,
  [14114]=16,[14115]=14,[14116]=14,[14117]=16,[14119]=17,[14120]=20,[14121]=20,[14122]=18,[14123]=17,[14124]=20,[14125]=21,
  [14126]=23,[14127]=24,[14128]=60,[14129]=20,[14130]=61,[14131]=19,[14132]=55,[14133]=24,[14134]=55,[14136]=57,[14137]=58,
  [14138]=60,[14139]=61,[14140]=62,[14141]=55,[14142]=54,[14143]=53,[14144]=58,[14145]=18,[14146]=62,[14147]=18,[14148]=18,
  [14149]=18,[14150]=18,[14151]=18,[14152]=62,[14153]=62,[14154]=62,[14155]=60,[14156]=62,[14157]=24,[14158]=26,[14159]=22,
  [14160]=19,[14161]=18,[14162]=23,[14163]=26,[14164]=21,[14165]=25,[14166]=19,[14167]=19,[14168]=20,[14169]=21,[14170]=22,
  [14171]=22,[14172]=23,[14173]=20,[14174]=19,[14175]=23,[14176]=26,[14177]=26,[14178]=31,[14179]=24,[14180]=30,[14181]=28,
  [14182]=28,[14183]=30,[14184]=30,[14185]=27,[14186]=29,[14187]=28,[14188]=27,[14189]=32,[14190]=31,[14191]=30,[14192]=31,
  [14193]=31,[14194]=28,[14195]=29,[14196]=32,[14197]=30,[14198]=31,[14199]=33,[14200]=35,[14201]=34,[14202]=36,[14203]=35,
  [14204]=36,[14205]=32,[14206]=32,[14207]=36,[14208]=36,[14209]=33,[14210]=32,[14211]=34,[14212]=35,[14213]=37,[14214]=34,
  [14215]=37,[14216]=41,[14217]=36,[14218]=37,[14219]=34,[14220]=40,[14221]=35,[14222]=37,[14223]=38,[14224]=39,[14225]=41,
  [14226]=37,[14228]=41,[14229]=36,[14230]=42,[14231]=38,[14232]=39,[14233]=40,[14234]=42,[14235]=37,[14236]=38,[14237]=46,
  [14238]=41,[14239]=39,[14240]=40,[14241]=41,[14242]=43,[14243]=43,[14244]=46,[14245]=41,[14246]=44,[14247]=44,[14248]=41,
  [14249]=47,[14250]=42,[14251]=40,[14252]=45,[14253]=43,[14254]=47,[14255]=42,[14257]=45,[14258]=45,[14259]=46,[14260]=44,
  [14261]=43,[14262]=45,[14263]=48,[14264]=48,[14265]=51,[14266]=47,[14267]=51,[14268]=46,[14269]=47,[14270]=45,[14271]=49,
  [14272]=47,[14273]=48,[14274]=51,[14275]=52,[14276]=47,[14277]=52,[14278]=50,[14279]=49,[14280]=48,[14281]=53,[14282]=50,
  [14283]=54,[14284]=56,[14285]=50,[14286]=50,[14287]=56,[14288]=57,[14289]=51,[14290]=51,[14291]=50,[14292]=49,[14293]=55,
  [14294]=51,[14295]=55,[14296]=52,[14297]=57,[14298]=56,[14299]=54,[14300]=52,[14301]=53,[14302]=56,[14303]=60,[14304]=55,
  [14305]=57,[14306]=60,[14307]=59,[14308]=61,[14309]=56,[14310]=58,[14311]=55,[14312]=61,[14313]=54,[14314]=58,[14315]=59,
  [14316]=59,[14317]=61,[14318]=63,[14319]=59,[14320]=57,[14321]=55,[14322]=62,[14323]=60,[14324]=60,[14325]=61,[14326]=63,
  [14327]=58,[14328]=65,[14329]=62,[14330]=61,[14331]=58,[14332]=64,[14333]=63,[14334]=63,[14335]=63,[14336]=65,[14337]=61,
  [14340]=62,[14364]=18,[14365]=15,[14366]=17,[14367]=19,[14368]=22,[14369]=23,[14370]=19,[14371]=23,[14372]=28,[14373]=25,
  [14374]=24,[14375]=25,[14376]=22,[14377]=26,[14378]=27,[14379]=29,[14380]=28,[14397]=32,[14398]=33,[14399]=31,[14400]=29,
  [14401]=33,[14402]=29,[14403]=31,[14404]=33,[14405]=33,[14406]=30,[14407]=39,[14408]=35,[14409]=33,[14410]=38,[14411]=35,
  [14412]=36,[14413]=39,[14414]=34,[14415]=37,[14416]=34,[14417]=44,[14418]=39,[14419]=38,[14420]=38,[14421]=42,[14422]=40,
  [14423]=40,[14424]=42,[14425]=44,[14426]=39,[14427]=49,[14428]=44,[14429]=43,[14430]=42,[14431]=44,[14432]=45,[14433]=46,
  [14434]=49,[14435]=43,[14436]=46,[14437]=54,[14438]=48,[14439]=47,[14440]=46,[14441]=50,[14442]=49,[14443]=49,[14444]=52,
  [14445]=54,[14446]=48,[14447]=53,[14448]=52,[14449]=57,[14450]=51,[14451]=53,[14452]=54,[14453]=59,[14454]=53,[14455]=59,
  [14456]=64,[14457]=58,[14458]=60,[14459]=57,[14460]=63,[14461]=62,[14462]=62,[14463]=62,[14464]=64,[14465]=60,[14487]=62,
  [14502]=62,[14503]=62,[14522]=62,[14525]=62,[14528]=62,[14531]=59,[14536]=61,[14537]=62,[14538]=62,[14539]=62,[14541]=61,
  [14543]=62,[14545]=62,[14548]=62,[14549]=45,[14551]=49,[14552]=55,[14553]=61,[14554]=62,[14555]=63,[14557]=63,[14558]=64,
  [14559]=18,[14560]=19,[14561]=17,[14562]=23,[14563]=17,[14564]=19,[14565]=21,[14566]=25,[14567]=23,[14568]=23,[14569]=22,
  [14570]=28,[14571]=21,[14572]=24,[14573]=27,[14574]=26,[14576]=59,[14577]=61,[14578]=29,[14579]=31,[14580]=27,[14581]=33,
  [14582]=28,[14583]=32,[14584]=35,[14585]=32,[14587]=32,[14588]=36,[14589]=37,[14590]=35,[14591]=40,[14592]=40,[14593]=35,
  [14594]=37,[14595]=38,[14596]=38,[14598]=40,[14599]=42,[14600]=40,[14601]=44,[14602]=39,[14603]=41,[14604]=45,[14605]=43,
  [14606]=41,[14607]=37,[14608]=31,[14611]=61,[14612]=61,[14614]=61,[14615]=61,[14616]=61,[14620]=61,[14621]=61,[14622]=61,
  [14623]=61,[14624]=61,[14626]=61,[14629]=61,[14631]=61,[14632]=61,[14633]=61,[14636]=61,[14637]=61,[14638]=61,[14640]=61,
  [14641]=61,[14652]=45,[14653]=46,[14654]=44,[14655]=49,[14656]=44,[14657]=46,[14658]=49,[14659]=47,[14660]=47,[14661]=49,
  [14662]=51,[14663]=48,[14664]=54,[14665]=48,[14666]=51,[14667]=53,[14668]=52,[14669]=51,[14670]=59,[14671]=56,[14672]=53,
  [14673]=52,[14674]=55,[14675]=56,[14676]=58,[14677]=58,[14678]=57,[14680]=64,[14681]=62,[14682]=59,[14683]=59,[14684]=60,
  [14685]=62,[14686]=63,[14687]=62,[14688]=61,[14722]=17,[14723]=17,[14724]=16,[14725]=17,[14726]=18,[14727]=19,[14728]=22,
  [14729]=20,[14730]=23,[14742]=24,[14743]=22,[14744]=28,[14745]=20,[14746]=22,[14747]=23,[14748]=25,[14749]=26,[14750]=28,
  [14751]=33,[14752]=27,[14753]=33,[14754]=29,[14755]=28,[14756]=29,[14757]=32,[14758]=31,[14759]=34,[14760]=39,[14761]=34,
  [14762]=37,[14763]=32,[14764]=35,[14765]=38,[14766]=37,[14767]=38,[14768]=44,[14769]=42,[14770]=40,[14771]=39,[14772]=40,
  [14773]=39,[14774]=43,[14775]=43,[14776]=43,[14777]=44,[14778]=45,[14779]=49,[14780]=49,[14781]=44,[14782]=45,[14783]=46,
  [14784]=46,[14785]=48,[14786]=47,[14787]=47,[14788]=49,[14789]=54,[14790]=54,[14791]=48,[14792]=50,[14793]=50,[14794]=50,
  [14795]=53,[14796]=53,[14797]=51,[14798]=59,[14799]=58,[14800]=59,[14801]=52,[14802]=55,[14803]=55,[14804]=58,[14805]=57,
  [14806]=57,[14807]=53,[14808]=59,[14809]=62,[14810]=59,[14811]=64,[14812]=64,[14813]=57,[14814]=63,[14815]=62,[14816]=62,
  [14817]=62,[14821]=43,[14825]=43,[14826]=41,[14827]=41,[14828]=42,[14829]=42,[14830]=42,[14831]=43,[14832]=41,[14833]=44,
  [14834]=43,[14835]=48,[14838]=43,[14839]=44,[14840]=47,[14841]=44,[14842]=48,[14843]=46,[14844]=54,[14846]=50,[14847]=49,
  [14848]=50,[14849]=53,[14850]=52,[14851]=51,[14852]=54,[14853]=48,[14854]=59,[14855]=55,[14856]=54,[14857]=54,[14858]=58,
  [14859]=57,[14860]=56,[14861]=52,[14862]=63,[14863]=60,[14864]=59,[14865]=60,[14866]=62,[14867]=62,[14868]=61,[14869]=58,
  [14895]=41,[14896]=40,[14897]=40,[14898]=40,[14899]=41,[14900]=40,[14901]=41,[14902]=41,[14903]=40,[14904]=50,[14905]=45,
  [14906]=44,[14907]=48,[14908]=48,[14909]=45,[14910]=44,[14911]=46,[14912]=50,[14913]=49,[14914]=46,[14915]=53,[14916]=53,
  [14917]=48,[14918]=47,[14919]=52,[14920]=51,[14921]=49,[14922]=53,[14923]=50,[14924]=57,[14925]=57,[14926]=53,[14927]=52,
  [14928]=55,[14929]=54,[14930]=57,[14931]=62,[14932]=58,[14933]=58,[14934]=57,[14935]=60,[14936]=61,[14937]=59,[14938]=56,
  [14939]=46,[14940]=43,[14941]=42,[14942]=42,[14943]=42,[14944]=45,[14945]=45,[14946]=43,[14947]=46,[14948]=51,[14949]=47,
  [14950]=46,[14951]=47,[14952]=50,[14953]=49,[14954]=51,[14955]=47,[14956]=45,[14957]=51,[14958]=56,[14959]=52,[14960]=51,
  [14961]=55,[14962]=54,[14963]=53,[14964]=56,[14965]=49,[14966]=61,[14967]=56,[14968]=55,[14969]=59,[14970]=58,[14971]=57,
  [14972]=56,[14973]=60,[14974]=55,[14975]=65,[14976]=61,[14977]=60,[14978]=63,[14979]=64,[14980]=63,[14981]=62,[14982]=65,
  [14983]=59,[15003]=8,[15004]=9,[15005]=9,[15006]=9,[15007]=8,[15008]=10,[15009]=11,[15010]=11,[15011]=15,[15012]=16,
  [15013]=14,[15014]=17,[15015]=13,[15016]=16,[15017]=19,[15018]=20,[15019]=21,[15045]=52,[15046]=54,[15047]=61,[15048]=57,
  [15049]=59,[15050]=58,[15051]=60,[15052]=62,[15053]=57,[15054]=54,[15055]=61,[15056]=57,[15057]=55,[15058]=59,[15059]=60,
  [15060]=57,[15061]=54,[15062]=60,[15063]=58,[15064]=55,[15065]=57,[15066]=58,[15067]=54,[15068]=62,[15069]=57,[15070]=59,
  [15071]=55,[15072]=56,[15073]=55,[15074]=53,[15075]=58,[15076]=53,[15077]=51,[15078]=55,[15079]=57,[15080]=59,[15081]=61,
  [15082]=56,[15083]=52,[15084]=53,[15085]=61,[15086]=56,[15087]=58,[15088]=60,[15090]=62,[15091]=54,[15092]=55,[15093]=56,
  [15094]=58,[15095]=60,[15096]=62,[15104]=39,[15105]=40,[15106]=40,[15107]=40,[15108]=40,[15109]=25,[15110]=20,[15111]=21,
  [15112]=20,[15113]=23,[15114]=19,[15115]=22,[15116]=26,[15117]=24,[15118]=26,[15119]=56,[15120]=26,[15121]=28,[15122]=25,
  [15123]=28,[15124]=25,[15125]=29,[15126]=29,[15127]=30,[15128]=31,[15129]=31,[15130]=34,[15131]=32,[15132]=29,[15133]=33,
  [15134]=37,[15135]=30,[15136]=31,[15137]=33,[15138]=60,[15139]=33,[15140]=34,[15142]=35,[15143]=33,[15144]=37,[15145]=36,
  [15146]=39,[15147]=33,[15148]=34,[15149]=36,[15150]=36,[15151]=36,[15152]=41,[15153]=37,[15154]=38,[15155]=39,[15156]=43,
  [15157]=41,[15158]=40,[15159]=42,[15160]=39,[15161]=43,[15162]=45,[15163]=43,[15164]=47,[15165]=42,[15166]=45,[15167]=48,
  [15168]=45,[15169]=44,[15170]=52,[15171]=50,[15172]=47,[15173]=46,[15174]=50,[15175]=51,[15176]=50,[15177]=49,[15178]=47,
  [15179]=57,[15180]=53,[15181]=55,[15182]=51,[15183]=50,[15184]=54,[15185]=57,[15186]=55,[15187]=54,[15188]=57,[15189]=60,
  [15190]=55,[15191]=57,[15192]=60,[15193]=62,[15194]=61,[15195]=62,[15200]=35,[15202]=18,[15203]=18,[15204]=18,[15205]=20,
  [15206]=20,[15207]=20,[15210]=16,[15211]=22,[15212]=27,[15213]=36,[15214]=40,[15215]=45,[15216]=51,[15217]=54,[15218]=57,
  [15219]=59,[15220]=62,[15221]=65,[15222]=19,[15223]=24,[15224]=25,[15225]=33,[15226]=37,[15227]=49,[15228]=53,[15229]=55,
  [15230]=25,[15231]=31,[15232]=33,[15233]=39,[15234]=40,[15235]=48,[15236]=52,[15237]=55,[15238]=58,[15239]=61,[15240]=64,
  [15241]=26,[15242]=30,[15243]=36,[15244]=42,[15245]=50,[15246]=62,[15247]=64,[15248]=20,[15249]=26,[15250]=32,[15251]=43,
  [15252]=49,[15253]=52,[15254]=54,[15255]=57,[15256]=59,[15257]=62,[15258]=65,[15259]=25,[15260]=38,[15261]=40,[15262]=46,
  [15263]=50,[15264]=56,[15265]=58,[15266]=61,[15267]=63,[15268]=16,[15269]=24,[15270]=46,[15271]=56,[15272]=59,[15273]=63,
  [15274]=52,[15275]=54,[15276]=58,[15278]=60,[15279]=51,[15280]=53,[15281]=57,[15282]=60,[15283]=64,[15284]=29,[15285]=32,
  [15286]=35,[15287]=45,[15288]=61,[15289]=65,[15291]=51,[15294]=53,[15295]=55,[15296]=63,[15297]=11,[15298]=13,[15299]=10,
  [15300]=14,[15301]=13,[15302]=11,[15303]=14,[15304]=16,[15305]=18,[15306]=16,[15307]=19,[15308]=17,[15309]=15,[15310]=18,
  [15311]=22,[15312]=20,[15313]=24,[15322]=39,[15323]=50,[15324]=56,[15325]=60,[15326]=40,[15327]=40,[15329]=24,[15330]=25,
  [15331]=23,[15332]=27,[15333]=22,[15334]=27,[15335]=14,[15336]=27,[15337]=29,[15338]=28,[15339]=34,[15340]=27,[15341]=30,
  [15342]=30,[15343]=30,[15344]=31,[15345]=31,[15346]=32,[15347]=28,[15348]=26,[15349]=33,[15350]=34,[15351]=30,[15352]=34,
  [15353]=38,[15354]=32,[15355]=34,[15356]=36,[15357]=35,[15358]=35,[15359]=41,[15360]=38,[15361]=37,[15362]=39,[15363]=42,
  [15364]=36,[15365]=38,[15366]=40,[15367]=39,[15368]=39,[15369]=42,[15370]=44,[15371]=41,[15372]=43,[15373]=47,[15374]=44,
  [15375]=43,[15376]=46,[15377]=42,[15378]=46,[15379]=48,[15380]=46,[15381]=51,[15382]=45,[15383]=48,[15384]=50,[15385]=49,
  [15386]=48,[15387]=50,[15388]=52,[15389]=53,[15390]=56,[15391]=56,[15392]=49,[15393]=52,[15394]=54,[15395]=53,[15396]=14,
  [15397]=14,[15398]=14,[15399]=14,[15400]=14,[15401]=14,[15402]=14,[15403]=18,[15404]=18,[15405]=17,[15406]=17,[15411]=63,
  [15413]=63,[15418]=63,[15421]=63,[15424]=18,[15425]=55,[15426]=58,[15427]=54,[15428]=56,[15429]=58,[15430]=60,[15431]=59,
  [15432]=58,[15433]=61,[15434]=61,[15435]=63,[15436]=60,[15437]=61,[15438]=63,[15439]=64,[15440]=63,[15441]=63,[15442]=65,
  [15443]=18,[15444]=18,[15445]=18,[15449]=18,[15450]=18,[15451]=18,[15452]=18,[15453]=18,[15455]=37,[15456]=37,[15457]=28,
  [15458]=28,[15459]=28,[15461]=25,[15462]=25,[15463]=25,[15464]=28,[15465]=28,[15466]=28,[15467]=31,[15468]=29,[15469]=29,
  [15470]=29,[15471]=29,[15472]=9,[15473]=10,[15474]=8,[15475]=8,[15476]=10,[15477]=11,[15478]=8,[15479]=11,[15480]=13,
  [15481]=13,[15482]=11,[15483]=10,[15484]=12,[15485]=14,[15486]=12,[15487]=16,[15488]=21,[15489]=16,[15490]=14,[15491]=15,
  [15492]=15,[15493]=18,[15494]=18,[15495]=15,[15496]=21,[15497]=19,[15498]=20,[15499]=18,[15500]=24,[15501]=17,[15502]=20,
  [15503]=22,[15504]=22,[15505]=23,[15506]=21,[15507]=19,[15508]=19,[15509]=21,[15510]=20,[15511]=24,[15512]=24,[15513]=25,
  [15514]=26,[15515]=25,[15516]=27,[15517]=25,[15518]=30,[15519]=23,[15520]=26,[15521]=27,[15522]=29,[15523]=27,[15524]=31,
  [15525]=28,[15526]=24,[15527]=27,[15528]=26,[15529]=29,[15530]=31,[15531]=30,[15532]=26,[15533]=31,[15534]=31,[15535]=29,
  [15536]=34,[15537]=28,[15538]=30,[15539]=30,[15540]=34,[15541]=33,[15542]=32,[15543]=34,[15544]=32,[15545]=30,[15546]=36,
  [15547]=29,[15548]=32,[15549]=31,[15550]=35,[15551]=35,[15552]=36,[15553]=34,[15554]=33,[15555]=33,[15556]=32,[15557]=37,
  [15558]=37,[15559]=31,[15560]=34,[15561]=36,[15562]=36,[15563]=37,[15565]=38,[15566]=35,[15567]=40,[15568]=33,[15569]=40,
  [15570]=36,[15571]=35,[15572]=39,[15573]=38,[15574]=40,[15575]=36,[15576]=39,[15577]=36,[15578]=41,[15579]=35,[15580]=40,
  [15581]=38,[15582]=40,[15583]=41,[15584]=41,[15585]=35,[15587]=35,[15588]=35,[15589]=41,[15590]=37,[15591]=43,[15592]=43,
  [15593]=42,[15594]=37,[15595]=39,[15596]=41,[15597]=42,[15598]=38,[15599]=44,[15600]=42,[15601]=46,[15602]=45,[15603]=41,
  [15604]=46,[15605]=42,[15606]=41,[15607]=44,[15608]=44,[15609]=47,[15610]=43,[15611]=43,[15612]=44,[15613]=42,[15614]=45,
  [15615]=46,[15616]=46,[15617]=45,[15618]=47,[15619]=48,[15620]=47,[15621]=51,[15622]=51,[15623]=50,[15624]=45,[15625]=47,
  [15626]=47,[15627]=50,[15628]=48,[15629]=48,[15630]=49,[15631]=52,[15632]=46,[15633]=52,[15634]=52,[15635]=48,[15636]=49,
  [15637]=51,[15638]=49,[15639]=50,[15640]=56,[15641]=51,[15642]=52,[15643]=49,[15644]=52,[15645]=55,[15646]=55,[15647]=53,
  [15648]=56,[15649]=51,[15650]=57,[15651]=56,[15652]=51,[15653]=53,[15654]=54,[15655]=56,[15656]=54,[15657]=57,[15658]=59,
  [15659]=55,[15660]=61,[15661]=54,[15662]=57,[15663]=56,[15664]=60,[15665]=60,[15666]=59,[15667]=61,[15668]=58,[15669]=62,
  [15670]=61,[15671]=56,[15672]=60,[15673]=58,[15674]=60,[15675]=62,[15676]=61,[15677]=61,[15678]=63,[15679]=61,[15680]=65,
  [15681]=58,[15682]=63,[15683]=60,[15684]=64,[15685]=63,[15686]=63,[15687]=65,[15689]=35,[15690]=41,[15691]=38,[15692]=38,
  [15693]=59,[15694]=54,[15695]=38,[15697]=38,[15698]=38,[15702]=55,[15703]=55,[15704]=60,[15705]=57,[15706]=57,[15707]=58,
  [15708]=58,[15709]=58,[15782]=60,[15783]=60,[15784]=59,[15786]=59,[15787]=59,[15789]=56,[15791]=58,[15792]=58,[15794]=10,
  [15795]=58,[15796]=59,[15797]=59,[15799]=58,[15800]=58,[15801]=58,[15802]=56,[15804]=56,[15805]=61,[15806]=61,[15807]=8,
  [15808]=21,[15809]=34,[15810]=25,[15811]=35,[15812]=56,[15813]=56,[15814]=60,[15815]=60,[15822]=55,[15823]=55,[15824]=59,
  [15825]=59,[15827]=59,[15853]=60,[15854]=60,[15855]=60,[15856]=60,[15857]=60,[15858]=59,[15859]=59,[15860]=60,[15861]=60,
  [15862]=54,[15863]=54,[15864]=39,[15865]=39,[15866]=15,[15867]=60,[15873]=60,[15887]=62,[15890]=59,[15891]=26,[15892]=32,
  [15893]=21,[15894]=25,[15895]=8,[15903]=25,[15904]=35,[15905]=15,[15906]=15,[15907]=25,[15909]=35,[15912]=23,[15918]=38,
  [15925]=10,[15926]=17,[15927]=27,[15928]=31,[15929]=37,[15930]=56,[15931]=61,[15932]=12,[15933]=15,[15934]=32,[15935]=34,
  [15936]=55,[15937]=51,[15938]=58,[15939]=59,[15940]=62,[15941]=64,[15942]=65,[15943]=61,[15944]=12,[15945]=18,[15946]=23,
  [15947]=28,[15962]=33,[15963]=39,[15964]=44,[15965]=49,[15966]=54,[15967]=59,[15968]=64,[15969]=10,[15970]=15,[15971]=20,
  [15972]=24,[15973]=30,[15974]=26,[15975]=31,[15976]=36,[15977]=37,[15978]=41,[15979]=42,[15980]=46,[15981]=47,[15982]=51,
  [15983]=52,[15984]=56,[15985]=57,[15986]=60,[15987]=61,[15988]=63,[15989]=65,[15990]=39,[15991]=63,[15995]=52,[15997]=57,
  [15999]=54,[16004]=55,[16007]=61,[16008]=58,[16009]=58,[16022]=60,[16039]=57,[16057]=35,[16058]=63,[16165]=35,[16309]=63,
  [16335]=63,[16341]=50,[16342]=63,[16345]=78,[16369]=63,[16391]=63,[16392]=63,[16393]=63,[16396]=63,[16397]=63,[16401]=63,
  [16403]=63,[16405]=63,[16406]=63,[16409]=63,[16410]=63,[16413]=63,[16414]=63,[16415]=63,[16416]=63,[16417]=63,[16418]=63,
  [16419]=63,[16420]=63,[16421]=63,[16422]=63,[16423]=63,[16424]=63,[16425]=63,[16426]=63,[16427]=63,[16428]=63,[16429]=63,
  [16430]=63,[16431]=63,[16432]=63,[16433]=63,[16434]=63,[16435]=63,[16436]=63,[16437]=71,[16440]=71,[16441]=74,[16442]=71,
  [16443]=74,[16444]=74,[16446]=71,[16448]=71,[16449]=74,[16450]=71,[16451]=74,[16452]=74,[16453]=74,[16454]=71,[16455]=74,
  [16456]=71,[16457]=74,[16459]=71,[16462]=71,[16463]=71,[16465]=74,[16466]=74,[16467]=71,[16468]=74,[16471]=71,[16472]=71,
  [16473]=74,[16474]=74,[16475]=71,[16476]=74,[16477]=74,[16478]=74,[16479]=71,[16480]=74,[16483]=71,[16484]=71,[16485]=63,
  [16486]=63,[16487]=63,[16489]=63,[16490]=63,[16491]=63,[16492]=63,[16494]=63,[16496]=63,[16497]=63,[16498]=63,[16499]=63,
  [16501]=63,[16502]=63,[16503]=63,[16504]=63,[16505]=63,[16506]=63,[16507]=63,[16508]=63,[16509]=63,[16510]=63,[16513]=63,
  [16514]=63,[16515]=63,[16516]=63,[16518]=63,[16519]=63,[16521]=63,[16522]=63,[16523]=63,[16524]=63,[16525]=63,[16526]=63,
  [16527]=63,[16528]=63,[16530]=63,[16531]=63,[16532]=63,[16533]=74,[16534]=71,[16535]=74,[16536]=74,[16539]=71,[16540]=71,
  [16541]=74,[16542]=74,[16543]=71,[16544]=74,[16545]=71,[16548]=71,[16549]=74,[16550]=74,[16551]=74,[16552]=71,[16554]=71,
  [16555]=71,[16558]=71,[16560]=71,[16561]=74,[16562]=74,[16563]=74,[16564]=71,[16565]=74,[16566]=74,[16567]=71,[16568]=74,
  [16569]=71,[16571]=71,[16573]=71,[16574]=71,[16577]=74,[16578]=74,[16579]=71,[16580]=74,[16604]=5,[16605]=5,[16606]=5,
  [16607]=5,[16608]=16,[16622]=57,[16623]=57,[16658]=32,[16659]=27,[16660]=27,[16661]=27,[16666]=63,[16667]=62,[16668]=61,
  [16669]=60,[16670]=59,[16671]=57,[16672]=59,[16673]=58,[16674]=63,[16675]=59,[16676]=59,[16677]=62,[16678]=61,[16679]=60,
  [16680]=58,[16681]=57,[16682]=59,[16683]=57,[16684]=59,[16685]=58,[16686]=62,[16687]=61,[16688]=63,[16689]=60,[16690]=63,
  [16691]=59,[16692]=59,[16693]=62,[16694]=61,[16695]=60,[16696]=58,[16697]=57,[16698]=62,[16699]=61,[16700]=63,[16701]=60,
  [16702]=58,[16703]=57,[16704]=59,[16705]=59,[16706]=63,[16707]=62,[16708]=60,[16709]=61,[16710]=57,[16711]=59,[16712]=59,
  [16713]=58,[16714]=57,[16715]=59,[16716]=58,[16717]=59,[16718]=60,[16719]=61,[16720]=62,[16721]=63,[16722]=57,[16723]=58,
  [16724]=59,[16725]=59,[16726]=63,[16727]=62,[16728]=61,[16729]=60,[16730]=63,[16731]=62,[16732]=61,[16733]=60,[16734]=59,
  [16735]=57,[16736]=58,[16737]=59,[16738]=48,[16739]=48,[16740]=31,[16741]=31,[16768]=52,[16769]=52,[16787]=1,[16788]=36,
  [16789]=36,[16791]=38,[16793]=38,[16794]=38,[16795]=66,[16796]=66,[16797]=66,[16798]=66,[16799]=66,[16800]=66,[16801]=66,
  [16802]=66,[16803]=66,[16804]=66,[16805]=66,[16806]=66,[16807]=66,[16808]=66,[16809]=66,[16810]=66,[16811]=66,[16812]=66,
  [16813]=66,[16814]=66,[16815]=66,[16816]=66,[16817]=66,[16818]=76,[16819]=66,[16820]=66,[16821]=66,[16822]=66,[16823]=66,
  [16824]=66,[16825]=66,[16826]=66,[16827]=66,[16828]=66,[16829]=66,[16830]=66,[16831]=66,[16832]=76,[16833]=66,[16834]=66,
  [16835]=66,[16836]=66,[16837]=66,[16838]=66,[16839]=66,[16840]=66,[16841]=66,[16842]=66,[16843]=66,[16844]=66,[16845]=66,
  [16846]=66,[16847]=66,[16848]=66,[16849]=66,[16850]=66,[16851]=66,[16852]=66,[16853]=66,[16854]=66,[16855]=66,[16856]=66,
  [16857]=66,[16858]=66,[16859]=66,[16860]=66,[16861]=66,[16862]=66,[16863]=66,[16864]=66,[16865]=66,[16866]=66,[16867]=66,
  [16868]=66,[16873]=38,[16886]=30,[16887]=30,[16889]=24,[16890]=24,[16891]=21,[16894]=21,[16897]=76,[16898]=76,[16899]=76,
  [16900]=76,[16901]=76,[16902]=76,[16903]=76,[16904]=76,[16905]=76,[16906]=76,[16907]=76,[16908]=76,[16909]=76,[16910]=76,
  [16911]=76,[16912]=76,[16913]=76,[16914]=76,[16915]=76,[16916]=76,[16917]=76,[16918]=76,[16919]=76,[16920]=76,[16921]=76,
  [16922]=76,[16923]=76,[16924]=76,[16925]=76,[16926]=76,[16927]=76,[16928]=76,[16929]=76,[16930]=76,[16931]=76,[16932]=76,
  [16933]=76,[16934]=76,[16935]=76,[16936]=76,[16937]=76,[16938]=76,[16939]=76,[16940]=76,[16941]=76,[16942]=76,[16943]=76,
  [16944]=76,[16945]=76,[16946]=76,[16947]=76,[16948]=76,[16949]=76,[16950]=76,[16951]=76,[16952]=76,[16953]=76,[16954]=76,
  [16955]=76,[16956]=76,[16957]=76,[16958]=76,[16959]=76,[16960]=76,[16961]=76,[16962]=76,[16963]=76,[16964]=76,[16965]=76,
  [16966]=76,[16967]=40,[16975]=27,[16977]=27,[16978]=27,[16979]=62,[16980]=61,[16981]=20,[16982]=59,[16983]=60,[16984]=61,
  [16985]=25,[16986]=25,[16987]=27,[16988]=62,[16989]=59,[16990]=27,[16992]=60,[16993]=60,[16994]=60,[16995]=60,[16996]=62,
  [16997]=62,[16998]=62,[16999]=59,[17001]=62,[17002]=61,[17003]=61,[17004]=61,[17005]=27,[17006]=27,[17007]=51,[17013]=60,
  [17014]=59,[17015]=65,[17016]=65,[17039]=36,[17042]=36,[17043]=36,[17044]=61,[17045]=61,[17046]=31,[17047]=30,[17050]=52,
  [17054]=50,[17055]=50,[17061]=58,[17063]=78,[17064]=71,[17065]=68,[17066]=67,[17067]=76,[17068]=75,[17069]=69,[17070]=70,
  [17071]=69,[17072]=70,[17073]=66,[17074]=63,[17075]=74,[17076]=77,[17077]=63,[17078]=72,[17082]=74,[17102]=74,[17103]=71,
  [17104]=76,[17105]=69,[17106]=75,[17107]=73,[17109]=65,[17110]=70,[17111]=68,[17112]=66,[17113]=67,[17182]=80,[17183]=3,
  [17184]=3,[17185]=8,[17186]=8,[17187]=14,[17188]=19,[17189]=34,[17190]=47,[17192]=24,[17193]=67,[17223]=63,[17508]=41,
  [17523]=58,[17562]=63,[17564]=63,[17566]=63,[17567]=63,[17568]=63,[17569]=63,[17570]=63,[17571]=63,[17572]=63,[17573]=63,
  [17576]=63,[17577]=63,[17578]=74,[17579]=71,[17580]=74,[17581]=74,[17583]=71,[17584]=71,[17586]=71,[17588]=71,[17590]=74,
  [17591]=74,[17592]=74,[17593]=71,[17594]=63,[17596]=63,[17598]=63,[17599]=63,[17600]=63,[17601]=63,[17602]=74,[17603]=71,
  [17604]=74,[17605]=74,[17607]=71,[17608]=71,[17610]=63,[17611]=63,[17612]=63,[17613]=63,[17616]=63,[17617]=63,[17618]=71,
  [17620]=71,[17622]=74,[17623]=74,[17624]=74,[17625]=71,[17686]=43,[17687]=43,[17688]=40,[17690]=60,[17691]=60,[17692]=23,
  [17694]=25,[17695]=26,[17704]=38,[17705]=53,[17707]=54,[17710]=54,[17711]=54,[17713]=54,[17714]=54,[17715]=54,[17717]=53,
  [17718]=53,[17719]=53,[17721]=38,[17728]=53,[17730]=53,[17732]=53,[17733]=53,[17734]=53,[17736]=53,[17737]=53,[17738]=52,
  [17739]=52,[17740]=52,[17741]=51,[17742]=51,[17743]=53,[17744]=51,[17745]=51,[17746]=51,[17748]=51,[17749]=51,[17750]=51,
  [17751]=51,[17752]=50,[17753]=53,[17754]=50,[17755]=50,[17759]=60,[17766]=54,[17767]=51,[17768]=47,[17770]=47,[17772]=42,
  [17773]=42,[17774]=48,[17775]=47,[17776]=47,[17777]=47,[17778]=47,[17779]=47,[17780]=54,[17782]=80,[17900]=60,[17901]=60,
  [17902]=60,[17903]=60,[17904]=60,[17905]=60,[17906]=60,[17907]=60,[17908]=60,[17909]=60,[17922]=10,[17943]=53,[17966]=55,
  [17982]=65,[18022]=62,[18042]=57,[18043]=57,[18044]=57,[18047]=62,[18048]=60,[18082]=47,[18083]=47,[18102]=63,[18103]=63,
  [18104]=63,[18168]=65,[18202]=66,[18203]=66,[18204]=66,[18205]=71,[18208]=67,[18238]=40,[18263]=64,[18282]=65,[18289]=56,
  [18295]=55,[18296]=56,[18298]=56,[18301]=58,[18302]=58,[18305]=58,[18306]=58,[18307]=58,[18308]=58,[18309]=59,[18310]=59,
  [18311]=58,[18312]=59,[18313]=58,[18314]=59,[18315]=59,[18317]=58,[18318]=59,[18319]=58,[18321]=59,[18322]=58,[18323]=58,
  [18324]=58,[18325]=58,[18326]=59,[18327]=59,[18328]=59,[18337]=59,[18338]=59,[18339]=59,[18340]=59,[18343]=59,[18344]=59,
  [18345]=60,[18346]=60,[18347]=61,[18348]=71,[18349]=61,[18350]=61,[18351]=61,[18352]=61,[18353]=61,[18354]=60,[18366]=60,
  [18367]=60,[18368]=60,[18369]=60,[18370]=62,[18371]=61,[18372]=62,[18373]=62,[18374]=62,[18375]=62,[18376]=62,[18377]=62,
  [18378]=62,[18379]=62,[18380]=62,[18381]=62,[18382]=62,[18383]=61,[18384]=62,[18385]=62,[18386]=61,[18387]=60,[18388]=62,
  [18389]=62,[18390]=61,[18391]=62,[18392]=62,[18393]=61,[18394]=62,[18395]=62,[18396]=62,[18397]=61,[18398]=63,[18399]=63,
  [18400]=57,[18402]=57,[18403]=74,[18404]=74,[18405]=62,[18406]=74,[18407]=62,[18408]=62,[18409]=62,[18410]=57,[18411]=57,
  [18413]=62,[18420]=63,[18421]=63,[18424]=63,[18425]=60,[18427]=35,[18428]=50,[18429]=63,[18430]=50,[18432]=50,[18434]=63,
  [18435]=50,[18436]=50,[18437]=50,[18440]=35,[18441]=50,[18442]=35,[18443]=63,[18444]=50,[18445]=63,[18447]=50,[18448]=63,
  [18449]=50,[18450]=60,[18451]=60,[18452]=63,[18453]=50,[18454]=63,[18455]=50,[18456]=63,[18457]=50,[18458]=60,[18459]=60,
  [18460]=60,[18461]=63,[18462]=60,[18463]=60,[18464]=60,[18465]=62,[18466]=62,[18467]=62,[18468]=62,[18469]=62,[18470]=62,
  [18471]=62,[18472]=62,[18473]=62,[18475]=60,[18476]=60,[18477]=60,[18478]=60,[18479]=60,[18480]=60,[18481]=60,[18482]=60,
  [18483]=61,[18484]=61,[18485]=61,[18486]=61,[18490]=61,[18491]=57,[18493]=60,[18494]=60,[18495]=63,[18496]=60,[18497]=60,
  [18498]=60,[18499]=62,[18500]=61,[18502]=62,[18503]=62,[18504]=62,[18505]=62,[18506]=62,[18507]=62,[18508]=62,[18509]=62,
  [18510]=62,[18511]=62,[18520]=63,[18521]=63,[18522]=63,[18523]=63,[18524]=63,[18525]=63,[18526]=63,[18527]=63,[18528]=61,
  [18529]=61,[18530]=62,[18531]=62,[18532]=62,[18533]=63,[18534]=63,[18535]=59,[18536]=59,[18537]=63,[18538]=63,[18541]=70,
  [18542]=68,[18543]=66,[18544]=71,[18545]=69,[18546]=69,[18547]=71,[18582]=100,[18583]=100,[18584]=100,[18585]=35,[18586]=35,
  [18587]=53,[18602]=60,[18608]=75,[18609]=75,[18610]=6,[18611]=7,[18612]=8,[18634]=52,[18637]=55,[18638]=58,[18639]=60,
  [18646]=71,[18665]=71,[18671]=59,[18672]=59,[18673]=59,[18674]=59,[18676]=61,[18677]=61,[18678]=61,[18679]=61,[18680]=61,
  [18681]=61,[18682]=61,[18683]=61,[18684]=61,[18686]=62,[18689]=62,[18690]=62,[18691]=61,[18692]=59,[18693]=62,[18694]=62,
  [18695]=62,[18696]=62,[18697]=55,[18698]=56,[18699]=57,[18700]=58,[18701]=59,[18702]=60,[18706]=40,[18709]=50,[18710]=50,
  [18711]=50,[18712]=50,[18713]=75,[18714]=75,[18715]=75,[18716]=61,[18717]=63,[18718]=63,[18720]=63,[18721]=61,[18722]=62,
  [18723]=62,[18725]=59,[18726]=59,[18727]=59,[18728]=60,[18729]=60,[18730]=60,[18734]=62,[18735]=62,[18736]=62,[18737]=62,
  [18738]=61,[18739]=61,[18740]=61,[18741]=61,[18742]=60,[18743]=59,[18744]=58,[18745]=57,[18754]=62,[18755]=62,[18756]=62,
  [18757]=62,[18758]=62,[18759]=62,[18760]=62,[18761]=62,[18762]=54,[18803]=70,[18805]=70,[18806]=70,[18807]=62,[18808]=70,
  [18809]=71,[18810]=71,[18811]=71,[18812]=71,[18813]=73,[18814]=78,[18815]=75,[18816]=77,[18817]=76,[18820]=66,[18821]=67,
  [18822]=68,[18823]=69,[18824]=70,[18825]=78,[18826]=78,[18827]=78,[18828]=78,[18829]=71,[18830]=78,[18831]=78,[18832]=70,
  [18833]=78,[18835]=78,[18836]=78,[18837]=78,[18838]=78,[18840]=78,[18842]=70,[18843]=78,[18844]=78,[18847]=78,[18848]=78,
  [18855]=78,[18860]=78,[18861]=61,[18865]=78,[18866]=78,[18867]=78,[18868]=78,[18869]=78,[18870]=62,[18871]=78,[18872]=63,
  [18873]=78,[18874]=78,[18875]=64,[18876]=78,[18877]=78,[18878]=65,[18879]=66,[18948]=32,[18951]=50,[18957]=10,[18970]=60,
  [18984]=55,[18986]=52,[19019]=80,[19022]=50,[19024]=55,[19028]=30,[19037]=48,[19038]=48,[19039]=48,[19040]=48,[19041]=48,
  [19042]=48,[19043]=58,[19044]=58,[19047]=58,[19048]=64,[19049]=64,[19050]=64,[19051]=58,[19052]=58,[19056]=58,[19057]=64,
  [19058]=64,[19059]=64,[19083]=60,[19084]=60,[19085]=60,[19086]=60,[19087]=60,[19088]=60,[19089]=60,[19090]=60,[19091]=60,
  [19092]=60,[19093]=60,[19094]=60,[19095]=60,[19096]=60,[19097]=60,[19098]=60,[19099]=65,[19100]=65,[19101]=65,[19102]=65,
  [19103]=65,[19104]=65,[19105]=63,[19106]=63,[19107]=63,[19108]=63,[19109]=63,[19110]=63,[19111]=63,[19112]=63,[19113]=63,
  [19114]=51,[19115]=51,[19116]=50,[19117]=50,[19118]=50,[19119]=50,[19120]=51,[19121]=51,[19123]=48,[19124]=48,[19125]=49,
  [19126]=49,[19127]=50,[19128]=50,[19130]=70,[19131]=69,[19132]=68,[19133]=71,[19134]=68,[19135]=66,[19136]=71,[19137]=78,
  [19138]=78,[19139]=71,[19140]=71,[19141]=50,[19142]=70,[19143]=69,[19144]=68,[19145]=66,[19146]=65,[19147]=66,[19148]=66,
  [19149]=66,[19156]=66,[19157]=70,[19159]=51,[19162]=70,[19163]=70,[19164]=70,[19165]=70,[19166]=66,[19167]=66,[19168]=70,
  [19169]=70,[19170]=70,[19287]=66,[19288]=66,[19289]=66,[19290]=66,[19291]=45,[19292]=34,[19293]=55,[19295]=20,[19302]=55,
  [19303]=55,[19308]=65,[19309]=65,[19310]=65,[19311]=65,[19312]=65,[19315]=65,[19316]=54,[19317]=54,[19319]=60,[19320]=60,
  [19321]=65,[19323]=65,[19324]=65,[19325]=65,[19334]=73,[19335]=73,[19336]=76,[19337]=76,[19339]=76,[19340]=76,[19341]=76,
  [19342]=76,[19343]=76,[19344]=76,[19345]=76,[19346]=74,[19347]=77,[19348]=74,[19349]=77,[19350]=75,[19351]=75,[19352]=77,
  [19353]=75,[19354]=71,[19355]=75,[19356]=81,[19357]=75,[19358]=70,[19360]=81,[19361]=77,[19362]=70,[19363]=81,[19364]=81,
  [19365]=75,[19366]=83,[19367]=75,[19368]=75,[19369]=73,[19370]=73,[19371]=74,[19372]=74,[19373]=75,[19374]=75,[19375]=83,
  [19376]=83,[19377]=83,[19378]=83,[19379]=83,[19380]=83,[19381]=83,[19382]=83,[19383]=83,[19384]=83,[19385]=77,[19386]=77,
  [19387]=77,[19388]=77,[19389]=77,[19390]=77,[19391]=77,[19392]=77,[19393]=77,[19394]=75,[19395]=75,[19396]=75,[19397]=75,
  [19398]=75,[19399]=75,[19400]=75,[19401]=75,[19402]=75,[19403]=75,[19405]=75,[19406]=75,[19407]=75,[19426]=65,[19430]=75,
  [19431]=75,[19432]=75,[19433]=75,[19434]=70,[19435]=70,[19436]=70,[19437]=70,[19438]=71,[19439]=71,[19491]=65,[19507]=41,
  [19508]=41,[19509]=41,[19510]=63,[19511]=53,[19512]=43,[19513]=33,[19514]=63,[19515]=43,[19516]=53,[19517]=33,[19518]=63,
  [19519]=53,[19520]=43,[19521]=33,[19522]=63,[19523]=53,[19524]=43,[19525]=33,[19526]=63,[19527]=53,[19528]=43,[19529]=33,
  [19530]=63,[19531]=53,[19532]=43,[19533]=33,[19534]=63,[19535]=53,[19536]=43,[19537]=33,[19538]=63,[19539]=53,[19540]=43,
  [19541]=33,[19542]=63,[19543]=53,[19544]=43,[19545]=33,[19546]=63,[19547]=53,[19548]=43,[19549]=33,[19550]=63,[19551]=53,
  [19552]=43,[19553]=33,[19554]=63,[19555]=53,[19556]=43,[19557]=33,[19558]=63,[19559]=53,[19560]=43,[19561]=33,[19562]=63,
  [19563]=53,[19564]=43,[19565]=33,[19566]=63,[19567]=53,[19568]=43,[19569]=33,[19570]=63,[19571]=53,[19572]=43,[19573]=33,
  [19574]=60,[19575]=60,[19576]=68,[19577]=65,[19578]=65,[19579]=60,[19580]=55,[19581]=45,[19582]=65,[19583]=55,[19584]=45,
  [19585]=60,[19586]=68,[19587]=65,[19588]=65,[19589]=55,[19590]=45,[19591]=60,[19592]=60,[19593]=68,[19594]=65,[19595]=65,
  [19596]=55,[19597]=45,[19598]=60,[19599]=60,[19600]=68,[19601]=65,[19602]=60,[19603]=60,[19604]=68,[19605]=65,[19606]=60,
  [19607]=60,[19608]=68,[19609]=65,[19610]=60,[19611]=60,[19612]=68,[19613]=65,[19614]=60,[19615]=60,[19616]=68,[19617]=65,
  [19618]=60,[19619]=60,[19620]=68,[19621]=65,[19682]=65,[19683]=65,[19684]=65,[19685]=65,[19686]=65,[19687]=65,[19688]=65,
  [19689]=65,[19690]=65,[19691]=65,[19692]=65,[19693]=65,[19694]=65,[19695]=65,[19760]=71,[19808]=45,[19812]=61,[19822]=65,
  [19823]=61,[19824]=61,[19825]=65,[19826]=61,[19827]=61,[19828]=65,[19829]=61,[19830]=61,[19831]=68,[19832]=61,[19833]=61,
  [19834]=65,[19835]=61,[19836]=61,[19838]=65,[19839]=61,[19840]=61,[19841]=68,[19842]=61,[19843]=61,[19845]=61,[19846]=61,
  [19848]=61,[19849]=61,[19852]=68,[19853]=68,[19854]=68,[19855]=68,[19856]=68,[19857]=68,[19859]=68,[19861]=68,[19862]=68,
  [19863]=71,[19864]=68,[19865]=68,[19866]=66,[19867]=66,[19869]=71,[19870]=71,[19871]=68,[19873]=71,[19874]=66,[19875]=71,
  [19876]=68,[19877]=71,[19878]=71,[19879]=70,[19884]=66,[19885]=66,[19886]=71,[19887]=71,[19888]=71,[19889]=71,[19890]=66,
  [19891]=66,[19892]=71,[19893]=71,[19894]=71,[19895]=71,[19896]=65,[19897]=65,[19898]=68,[19899]=68,[19900]=68,[19901]=68,
  [19903]=65,[19904]=65,[19905]=68,[19906]=68,[19907]=68,[19908]=65,[19909]=65,[19910]=65,[19912]=68,[19913]=68,[19914]=55,
  [19915]=68,[19918]=65,[19919]=68,[19920]=68,[19921]=65,[19922]=68,[19923]=68,[19925]=68,[19927]=65,[19928]=68,[19929]=71,
  [19930]=68,[19944]=65,[19945]=65,[19946]=68,[19947]=68,[19948]=68,[19949]=68,[19950]=68,[19951]=65,[19952]=65,[19953]=65,
  [19954]=65,[19955]=65,[19956]=65,[19957]=65,[19958]=65,[19959]=65,[19961]=68,[19962]=68,[19963]=68,[19964]=68,[19965]=68,
  [19967]=68,[19968]=68,[19969]=40,[19970]=20,[19972]=40,[19979]=65,[19982]=52,[19984]=52,[19990]=52,[19991]=52,[19992]=52,
  [19993]=68,[19998]=65,[19999]=65,[20006]=52,[20032]=65,[20033]=65,[20034]=65,[20035]=52,[20036]=52,[20037]=52,[20038]=66,
  [20039]=70,[20041]=63,[20042]=63,[20043]=63,[20044]=63,[20045]=63,[20046]=63,[20047]=63,[20048]=63,[20049]=63,[20050]=63,
  [20051]=63,[20052]=63,[20053]=63,[20054]=63,[20055]=65,[20056]=65,[20057]=65,[20058]=65,[20059]=65,[20060]=65,[20061]=65,
  [20068]=65,[20069]=65,[20070]=65,[20071]=63,[20072]=63,[20073]=65,[20082]=52,[20083]=52,[20086]=52,[20088]=53,[20089]=43,
  [20090]=33,[20091]=53,[20092]=43,[20093]=33,[20094]=53,[20095]=43,[20096]=33,[20097]=53,[20098]=43,[20099]=33,[20100]=53,
  [20101]=43,[20102]=33,[20103]=53,[20104]=43,[20105]=33,[20106]=53,[20107]=43,[20108]=33,[20109]=53,[20110]=43,[20111]=33,
  [20112]=53,[20113]=43,[20114]=33,[20115]=53,[20116]=43,[20117]=33,[20124]=53,[20125]=43,[20126]=33,[20127]=53,[20128]=43,
  [20129]=33,[20130]=52,[20134]=62,[20150]=63,[20151]=53,[20152]=33,[20153]=43,[20154]=63,[20155]=53,[20156]=43,[20157]=33,
  [20158]=65,[20159]=63,[20160]=53,[20161]=43,[20162]=33,[20163]=63,[20164]=33,[20165]=53,[20166]=43,[20167]=63,[20168]=43,
  [20169]=33,[20170]=53,[20171]=63,[20172]=33,[20173]=43,[20174]=53,[20175]=65,[20176]=65,[20177]=63,[20181]=63,[20184]=65,
  [20186]=63,[20187]=43,[20188]=33,[20189]=53,[20190]=63,[20191]=33,[20192]=43,[20193]=53,[20194]=65,[20195]=63,[20196]=53,
  [20197]=33,[20198]=43,[20199]=63,[20200]=43,[20201]=33,[20202]=53,[20203]=65,[20204]=63,[20205]=53,[20206]=43,[20207]=33,
  [20208]=63,[20209]=43,[20210]=33,[20211]=53,[20212]=65,[20213]=70,[20214]=65,[20215]=70,[20216]=70,[20217]=70,[20218]=59,
  [20219]=59,[20220]=65,[20255]=52,[20257]=68,[20258]=65,[20259]=65,[20260]=68,[20261]=65,[20262]=68,[20263]=65,[20264]=68,
  [20265]=68,[20266]=68,[20295]=60,[20296]=56,[20369]=52,[20380]=68,[20391]=1,[20392]=1,[20400]=1,[20406]=60,[20407]=60,
  [20408]=60,[20422]=1,[20425]=23,[20426]=23,[20427]=23,[20428]=23,[20429]=23,[20430]=23,[20431]=23,[20434]=23,[20437]=23,
  [20438]=23,[20439]=23,[20440]=23,[20441]=23,[20442]=23,[20443]=23,[20444]=23,[20451]=60,[20474]=1,[20476]=62,[20477]=62,
  [20478]=62,[20479]=62,[20480]=62,[20481]=62,[20487]=75,[20488]=75,[20503]=52,[20504]=52,[20505]=52,[20512]=52,[20517]=52,
  [20521]=52,[20530]=52,[20534]=52,[20536]=52,[20537]=63,[20538]=63,[20539]=63,[20549]=63,[20550]=63,[20551]=63,[20556]=52,
  [20561]=1,[20562]=1,[20563]=1,[20564]=1,[20565]=1,[20566]=1,[20567]=1,[20568]=1,[20569]=1,[20570]=1,[20571]=1,
  [20572]=1,[20573]=1,[20574]=1,[20575]=20,[20577]=71,[20578]=71,[20579]=71,[20580]=71,[20581]=71,[20582]=71,[20599]=71,
  [20600]=72,[20615]=71,[20616]=71,[20617]=72,[20618]=72,[20619]=72,[20621]=71,[20622]=71,[20623]=72,[20624]=72,[20625]=71,
  [20626]=71,[20627]=71,[20628]=72,[20629]=72,[20630]=72,[20631]=71,[20632]=71,[20633]=72,[20634]=72,[20635]=71,[20636]=71,
  [20637]=72,[20638]=72,[20639]=72,[20640]=45,[20641]=45,[20642]=47,[20643]=47,[20645]=60,[20646]=59,[20647]=59,[20648]=63,
  [20649]=60,[20650]=60,[20652]=60,[20653]=60,[20654]=60,[20655]=60,[20656]=60,[20657]=60,[20658]=60,[20659]=60,[20660]=60,
  [20661]=60,[20662]=60,[20663]=60,[20664]=65,[20665]=62,[20666]=62,[20667]=65,[20668]=62,[20669]=62,[20670]=65,[20671]=62,
  [20672]=62,[20673]=65,[20674]=62,[20675]=62,[20680]=68,[20681]=68,[20682]=65,[20683]=68,[20684]=68,[20685]=65,[20686]=68,
  [20687]=68,[20688]=65,[20689]=68,[20690]=68,[20691]=65,[20692]=60,[20693]=60,[20694]=60,[20695]=63,[20696]=63,[20697]=63,
  [20698]=63,[20699]=63,[20700]=63,[20701]=63,[20702]=63,[20703]=63,[20704]=63,[20705]=63,[20706]=63,[20707]=63,[20710]=63,
  [20711]=63,[20712]=63,[20713]=63,[20714]=63,[20715]=63,[20716]=63,[20717]=63,[20720]=65,[20721]=65,[20722]=65,[20723]=62,
  [20724]=62,[21040]=1,[21115]=53,[21116]=43,[21117]=53,[21118]=43,[21119]=33,[21120]=33,[21126]=84,[21128]=75,[21134]=84,
  [21154]=1,[21157]=1,[21178]=62,[21179]=62,[21180]=66,[21181]=66,[21182]=66,[21183]=66,[21184]=62,[21185]=62,[21186]=62,
  [21187]=62,[21188]=66,[21189]=62,[21190]=66,[21196]=60,[21197]=65,[21198]=70,[21199]=75,[21200]=80,[21201]=60,[21202]=65,
  [21203]=70,[21204]=75,[21205]=80,[21206]=60,[21207]=65,[21208]=70,[21209]=75,[21210]=80,[21242]=79,[21244]=79,[21268]=79,
  [21269]=79,[21272]=79,[21273]=79,[21275]=79,[21278]=62,[21311]=48,[21312]=48,[21316]=55,[21317]=55,[21318]=58,[21319]=58,
  [21320]=58,[21322]=58,[21326]=62,[21329]=81,[21330]=78,[21331]=88,[21332]=81,[21333]=78,[21334]=88,[21335]=78,[21336]=81,
  [21337]=81,[21338]=78,[21340]=52,[21341]=57,[21342]=60,[21343]=88,[21344]=78,[21345]=78,[21346]=81,[21347]=81,[21348]=81,
  [21349]=78,[21350]=78,[21351]=88,[21352]=81,[21353]=81,[21354]=78,[21355]=78,[21356]=81,[21357]=88,[21359]=78,[21360]=81,
  [21361]=78,[21362]=81,[21364]=88,[21365]=78,[21366]=81,[21367]=81,[21368]=81,[21370]=88,[21372]=81,[21373]=78,[21374]=88,
  [21375]=81,[21376]=78,[21387]=81,[21388]=78,[21389]=88,[21390]=81,[21391]=78,[21392]=70,[21393]=65,[21394]=67,[21395]=70,
  [21396]=65,[21397]=67,[21398]=70,[21399]=65,[21400]=67,[21401]=70,[21402]=65,[21403]=67,[21404]=70,[21405]=65,[21406]=67,
  [21407]=70,[21408]=65,[21409]=67,[21410]=70,[21411]=65,[21412]=67,[21413]=70,[21414]=65,[21415]=67,[21416]=70,[21417]=65,
  [21418]=67,[21452]=72,[21453]=72,[21454]=72,[21455]=74,[21456]=72,[21457]=72,[21458]=72,[21459]=72,[21460]=72,[21461]=72,
  [21462]=72,[21463]=72,[21464]=72,[21466]=69,[21467]=69,[21468]=74,[21469]=74,[21470]=74,[21471]=69,[21472]=69,[21473]=74,
  [21474]=74,[21475]=74,[21476]=74,[21477]=74,[21478]=68,[21479]=68,[21480]=73,[21481]=73,[21482]=73,[21483]=73,[21484]=73,
  [21485]=68,[21486]=68,[21487]=68,[21488]=73,[21489]=73,[21490]=73,[21491]=73,[21492]=66,[21493]=66,[21494]=71,[21495]=71,
  [21496]=71,[21497]=71,[21498]=66,[21499]=66,[21500]=71,[21501]=71,[21502]=71,[21503]=71,[21504]=70,[21505]=70,[21506]=70,
  [21507]=70,[21517]=75,[21520]=76,[21521]=76,[21522]=76,[21523]=76,[21524]=1,[21525]=1,[21526]=77,[21527]=77,[21529]=77,
  [21530]=77,[21531]=77,[21532]=77,[21538]=1,[21539]=1,[21541]=1,[21542]=1,[21543]=1,[21544]=1,[21563]=65,[21565]=45,
  [21566]=25,[21567]=45,[21568]=25,[21579]=88,[21581]=88,[21582]=88,[21583]=88,[21585]=88,[21586]=88,[21587]=88,[21596]=88,
  [21597]=81,[21598]=81,[21599]=81,[21600]=81,[21601]=81,[21602]=81,[21603]=78,[21604]=81,[21605]=81,[21606]=81,[21607]=81,
  [21608]=81,[21609]=81,[21610]=81,[21611]=81,[21615]=81,[21616]=78,[21617]=78,[21618]=78,[21619]=78,[21620]=78,[21621]=78,
  [21622]=78,[21623]=78,[21624]=78,[21625]=78,[21626]=78,[21627]=77,[21635]=77,[21639]=77,[21645]=77,[21647]=77,[21648]=76,
  [21650]=77,[21651]=77,[21652]=77,[21663]=77,[21664]=77,[21665]=77,[21666]=76,[21667]=76,[21668]=76,[21669]=76,[21670]=76,
  [21671]=76,[21672]=76,[21673]=76,[21674]=76,[21675]=76,[21676]=76,[21677]=78,[21678]=76,[21679]=81,[21680]=78,[21681]=78,
  [21682]=78,[21683]=76,[21684]=76,[21685]=76,[21686]=76,[21687]=76,[21688]=75,[21689]=75,[21690]=75,[21691]=75,[21692]=75,
  [21693]=75,[21694]=75,[21695]=75,[21696]=75,[21697]=75,[21698]=73,[21699]=73,[21700]=73,[21701]=73,[21702]=73,[21703]=73,
  [21704]=73,[21705]=73,[21706]=73,[21707]=73,[21708]=73,[21709]=88,[21710]=88,[21712]=88,[21715]=72,[21800]=68,[21801]=68,
  [21802]=68,[21803]=68,[21804]=68,[21805]=68,[21806]=71,[21809]=71,[21810]=71,[21814]=73,[21836]=71,[21837]=71,[21838]=71,
  [21839]=84,[21856]=71,[21888]=71,[21889]=75,[21891]=75,[21994]=65,[21995]=60,[21996]=65,[21997]=60,[21998]=55,[21999]=60,
  [22000]=66,[22001]=65,[22002]=65,[22003]=60,[22004]=65,[22005]=60,[22006]=55,[22007]=66,[22008]=65,[22009]=60,[22010]=65,
  [22011]=65,[22013]=60,[22015]=55,[22016]=65,[22017]=66,[22060]=60,[22061]=60,[22062]=65,[22063]=65,[22064]=60,[22065]=60,
  [22066]=55,[22067]=66,[22068]=65,[22069]=60,[22070]=65,[22071]=65,[22072]=66,[22073]=65,[22074]=60,[22075]=60,[22076]=60,
  [22077]=55,[22078]=65,[22079]=65,[22080]=60,[22081]=55,[22082]=65,[22083]=60,[22084]=60,[22085]=66,[22086]=65,[22087]=60,
  [22088]=65,[22089]=60,[22090]=55,[22091]=60,[22092]=66,[22093]=65,[22095]=65,[22096]=60,[22097]=60,[22098]=65,[22099]=55,
  [22100]=66,[22101]=65,[22102]=60,[22106]=65,[22107]=60,[22108]=65,[22109]=60,[22110]=55,[22111]=66,[22112]=65,[22113]=60,
  [22149]=63,[22150]=63,[22191]=72,[22194]=70,[22195]=68,[22196]=72,[22197]=68,[22198]=70,[22204]=60,[22205]=57,[22206]=1,
  [22207]=60,[22208]=58,[22212]=56,[22223]=55,[22225]=60,[22231]=61,[22232]=61,[22234]=53,[22240]=53,[22241]=57,[22242]=56,
  [22243]=20,[22244]=30,[22245]=56,[22246]=45,[22247]=63,[22248]=55,[22249]=65,[22250]=20,[22251]=55,[22252]=65,[22253]=63,
  [22254]=57,[22255]=57,[22256]=57,[22257]=57,[22266]=57,[22267]=63,[22268]=63,[22269]=63,[22270]=55,[22271]=57,[22272]=52,
  [22274]=52,[22275]=57,[22276]=1,[22277]=1,[22278]=1,[22279]=1,[22280]=1,[22281]=1,[22282]=1,[22301]=63,[22302]=63,
  [22303]=62,[22304]=61,[22305]=61,[22306]=61,[22311]=61,[22313]=61,[22314]=61,[22315]=61,[22317]=61,[22318]=61,[22319]=61,
  [22321]=61,[22322]=61,[22325]=61,[22326]=63,[22327]=63,[22328]=63,[22329]=63,[22330]=61,[22331]=62,[22332]=62,[22333]=62,
  [22334]=62,[22335]=63,[22336]=63,[22337]=63,[22339]=63,[22340]=63,[22342]=63,[22343]=63,[22345]=62,[22347]=65,[22348]=65,
  [22377]=65,[22378]=65,[22379]=65,[22380]=65,[22383]=64,[22384]=63,[22385]=60,[22394]=62,[22395]=57,[22396]=78,[22397]=57,
  [22398]=62,[22399]=78,[22400]=57,[22401]=62,[22402]=78,[22403]=61,[22404]=61,[22405]=61,[22406]=61,[22407]=61,[22408]=63,
  [22409]=63,[22410]=63,[22411]=63,[22412]=63,[22416]=92,[22417]=88,[22418]=88,[22419]=86,[22420]=86,[22421]=88,[22422]=88,
  [22423]=88,[22424]=88,[22425]=92,[22426]=88,[22427]=88,[22428]=88,[22429]=86,[22430]=86,[22431]=88,[22433]=63,[22436]=92,
  [22437]=88,[22438]=88,[22439]=86,[22440]=86,[22441]=88,[22442]=88,[22443]=88,[22458]=52,[22464]=92,[22465]=88,[22466]=88,
  [22467]=86,[22468]=86,[22469]=88,[22470]=88,[22471]=88,[22472]=61,[22476]=92,[22477]=88,[22478]=88,[22479]=86,[22480]=86,
  [22481]=88,[22482]=88,[22483]=88,[22488]=92,[22489]=88,[22490]=88,[22491]=86,[22492]=86,[22493]=88,[22494]=88,[22495]=88,
  [22496]=92,[22497]=88,[22498]=88,[22499]=86,[22500]=86,[22501]=88,[22502]=88,[22503]=88,[22504]=92,[22505]=88,[22506]=88,
  [22507]=86,[22508]=86,[22509]=88,[22510]=88,[22511]=88,[22512]=92,[22513]=88,[22514]=88,[22515]=86,[22516]=86,[22517]=88,
  [22518]=88,[22519]=88,[22589]=90,[22630]=90,[22631]=90,[22632]=90,[22651]=65,[22652]=80,[22654]=80,[22655]=80,[22656]=60,
  [22657]=60,[22658]=80,[22659]=60,[22660]=70,[22661]=80,[22662]=80,[22663]=80,[22664]=80,[22665]=80,[22666]=80,[22667]=60,
  [22668]=60,[22669]=80,[22670]=80,[22671]=80,[22672]=65,[22673]=65,[22676]=65,[22678]=60,[22679]=60,[22680]=66,[22681]=66,
  [22688]=66,[22689]=66,[22690]=66,[22691]=86,[22699]=80,[22700]=80,[22701]=80,[22702]=80,[22707]=80,[22711]=68,[22712]=68,
  [22713]=68,[22714]=68,[22715]=68,[22716]=68,[22718]=68,[22720]=68,[22721]=65,[22722]=65,[22725]=70,[22730]=88,[22731]=88,
  [22732]=88,[22736]=100,[22740]=65,[22741]=65,[22742]=1,[22743]=1,[22744]=1,[22745]=1,[22747]=65,[22748]=65,[22749]=65,
  [22750]=65,[22752]=65,[22753]=65,[22756]=70,[22757]=70,[22758]=70,[22759]=70,[22760]=70,[22761]=70,[22762]=70,[22763]=70,
  [22764]=70,[22798]=89,[22799]=89,[22800]=83,[22801]=83,[22802]=89,[22803]=81,[22804]=83,[22806]=81,[22807]=83,[22808]=83,
  [22809]=83,[22810]=81,[22811]=83,[22812]=89,[22813]=81,[22815]=81,[22816]=83,[22818]=83,[22819]=92,[22820]=83,[22821]=92,
  [22843]=66,[22852]=66,[22855]=66,[22856]=66,[22857]=66,[22858]=66,[22859]=66,[22860]=66,[22862]=66,[22863]=66,[22864]=66,
  [22865]=66,[22867]=66,[22868]=66,[22869]=66,[22870]=66,[22872]=68,[22873]=68,[22874]=68,[22875]=68,[22876]=68,[22877]=68,
  [22878]=68,[22879]=68,[22880]=68,[22881]=68,[22882]=68,[22883]=68,[22884]=68,[22885]=68,[22886]=68,[22887]=68,[22935]=83,
  [22936]=83,[22937]=83,[22938]=83,[22939]=83,[22940]=83,[22941]=83,[22942]=81,[22943]=83,[22947]=85,[22954]=85,[22960]=83,
  [22961]=83,[22967]=83,[22968]=83,[22981]=83,[22983]=83,[22988]=83,[22994]=83,[23000]=85,[23001]=85,[23004]=83,[23005]=83,
  [23006]=83,[23009]=83,[23014]=81,[23017]=83,[23018]=83,[23019]=83,[23020]=83,[23021]=83,[23023]=83,[23025]=85,[23027]=85,
  [23028]=83,[23029]=83,[23030]=83,[23031]=83,[23032]=83,[23033]=83,[23035]=83,[23036]=83,[23037]=85,[23038]=85,[23039]=83,
  [23040]=90,[23041]=90,[23042]=85,[23043]=90,[23044]=83,[23045]=90,[23046]=90,[23047]=90,[23048]=90,[23049]=90,[23050]=90,
  [23051]=86,[23053]=92,[23054]=89,[23056]=89,[23057]=92,[23059]=92,[23060]=92,[23061]=92,[23062]=92,[23063]=92,[23064]=92,
  [23065]=92,[23066]=92,[23067]=92,[23068]=83,[23069]=85,[23070]=85,[23071]=83,[23073]=83,[23075]=83,[23078]=63,[23081]=63,
  [23082]=63,[23084]=63,[23085]=63,[23087]=63,[23088]=63,[23089]=63,[23090]=63,[23091]=63,[23092]=63,[23093]=63,[23124]=60,
  [23125]=60,[23126]=60,[23127]=63,[23128]=62,[23129]=62,[23132]=62,[23139]=62,[23156]=62,[23168]=35,[23169]=35,[23170]=35,
  [23171]=25,[23173]=25,[23177]=41,[23178]=41,[23197]=65,[23198]=65,[23199]=65,[23200]=65,[23201]=65,[23203]=65,[23206]=90,
  [23207]=90,[23219]=85,[23220]=85,[23221]=83,[23226]=83,[23237]=83,[23238]=83,[23242]=88,[23243]=71,[23244]=71,[23251]=71,
  [23252]=71,[23253]=71,[23254]=71,[23255]=71,[23256]=71,[23257]=71,[23258]=71,[23259]=71,[23260]=71,[23261]=71,[23262]=71,
  [23263]=71,[23264]=71,[23272]=68,[23273]=68,[23274]=66,[23275]=66,[23276]=71,[23277]=71,[23278]=66,[23279]=66,[23280]=66,
  [23281]=66,[23282]=66,[23283]=66,[23284]=66,[23285]=66,[23286]=66,[23287]=66,[23288]=66,[23289]=66,[23290]=66,[23291]=66,
  [23292]=68,[23293]=68,[23294]=68,[23295]=68,[23296]=68,[23297]=68,[23298]=68,[23299]=68,[23300]=68,[23301]=68,[23302]=68,
  [23303]=68,[23304]=68,[23305]=68,[23306]=71,[23307]=71,[23308]=71,[23309]=71,[23310]=71,[23311]=71,[23312]=71,[23313]=71,
  [23314]=71,[23315]=71,[23316]=71,[23317]=71,[23318]=71,[23319]=71,[23323]=1,[23324]=1,[23451]=78,[23452]=78,[23453]=78,
  [23454]=78,[23455]=78,[23456]=78,[23464]=78,[23465]=78,[23466]=78,[23467]=78,[23468]=78,[23469]=78,[23557]=81,[23558]=81,
  [23570]=81,[23577]=89,[23663]=85,[23664]=85,[23665]=85,[23666]=85,[23667]=85,[23668]=85,[24222]=57,[4991]=1,[1908]=1,
  [2179]=1,[5258]=1,[2559]=1,[5300]=1,[1983]=1,[1910]=1,[3346]=1,[11542]=1,[5288]=1,[9659]=1,[5303]=1,
  [5293]=1,[10617]=1,[10612]=1,[5262]=1,[2180]=1,[1984]=1,[5281]=1,[5291]=1,[5278]=1,[2552]=1,[13222]=1,
  [13221]=1,[12934]=1,[12933]=1,[2182]=1,[13219]=1,[3494]=1,[11506]=1,[2177]=1,[5284]=1,[12403]=1,[12868]=1,
  [6618]=1,[3361]=1,[12932]=1,[13312]=1,[3432]=1,[12882]=1,[12950]=1,[11763]=1,[12523]=1,[12742]=1,[12949]=1,
  [1906]=1,[12855]=1,[12751]=1,[5259]=1,[1907]=1,[1905]=1,[2714]=1,[12298]=1,[10616]=1,[12861]=1,[12959]=1,
  [21465]=1,[21794]=1,[21796]=1,[12746]=1,[18122]=1,[13723]=1,[13698]=1,[5746]=1,[10614]=1,[15910]=1,[2176]=1,
  [3433]=1,[5870]=1,[13632]=1,[12063]=1,[1899]=1,[12980]=1,[1903]=1,[3351]=1,[3362]=1,[13605]=1,[12748]=1,
  [12863]=1,[13631]=1,[10619]=1,[1897]=1,[11424]=1,[12993]=1,[14118]=1,[13061]=1,[18293]=1,[10611]=1,[2052]=1,
  [2704]=1,[2183]=1,[17383]=1,[5286]=1,[1985]=1,[14527]=1,[5287]=1,[6224]=1,[13316]=1,[14618]=1,[14837]=1,
  [13705]=1,[18123]=1,[12285]=1,[13150]=1,[13050]=1,[11383]=1,[5597]=1,[2717]=1,[3757]=1,[12889]=1,[19404]=1,
  [6680]=1,[5304]=1,[5277]=1,[12297]=1,[12304]=1,[12788]=1,[10825]=1,[12331]=1,[12755]=1,[12338]=1,[2023]=1,
  [13147]=1,[6227]=1,[5276]=1,[1896]=1,[1909]=1,[1900]=1,[2551]=1,[2184]=1,[1895]=1,[2051]=1,[5285]=1,
  [1904]=1,[2711]=1,[3326]=1,[2197]=1,[3350]=1,[3367]=1,[2557]=1,[2827]=1,[1957]=1,[12937]=1,[1117]=1,
  [5260]=1,[2196]=1,[1901]=1,[2809]=1,[2053]=1,[1911]=1,[5745]=1,[10685]=1,[5289]=1,[3774]=1,[2081]=1,
  [2200]=1,[2550]=1,[1961]=1,[12890]=1,[11087]=1,[12850]=1,[2201]=1,[2703]=1,[2202]=1,[2705]=1,[2198]=1,
  [5305]=1,[23583]=1,[22724]=1,[22738]=1,[23582]=1,[22709]=1,[14873]=1,[13750]=1,[13708]=1,[11322]=1,[5261]=1,
  [2147]=1,[13160]=1,[22199]=1,[13623]=1,[23356]=1,[2181]=1,[21553]=1,[2199]=1,[14642]=1,[12745]=1,[5301]=1,
  [2813]=1,[5280]=1,[2178]=1,[2695]=1,[4993]=1,[11019]=1,[4994]=1,[3697]=1,[3699]=1,[11343]=1,[5532]=1,
  [2810]=1,[2707]=1,[2718]=1,[19485]=1,[6233]=1,[2884]=1,[12786]=1,[12454]=1,[12750]=1,[12322]=1,[13722]=1,
  [13104]=1,[11342]=1,[12883]=1,[13721]=1,[19053]=1,[13611]=1,[12862]=1,[22596]=1,[13406]=1,[10613]=1,[10756]=1,
  [2558]=1,[20417]=1,[14882]=1,[24418]=1,[12893]=1,[18983]=1,[12902]=1,[11586]=1,[5491]=1,[3698]=1,[12332]=1,
  [6232]=1,[13339]=1,[20468]=1,[23328]=1,[11587]=1,[22341]=1,[14105]=1,[5598]=1,[12629]=1,[13720]=1,[14823]=1,
  [13706]=1,[13610]=1,[12860]=1,[3368]=1,[2716]=1,[12452]=1,[12329]=1,[1902]=1,[13854]=1,[3695]=1,[10898]=1,
  [14533]=1,[13925]=1,[12901]=1,[14706]=1,[14836]=1,[14534]=1,[13627]=1,[12995]=1,[18167]=1,[18166]=1,[6254]=1,
  [13319]=1,[15460]=1,[12951]=1,[13924]=1,[18062]=1,[13753]=1,[12328]=1,[13292]=1,[13293]=1,[23369]=1,[12981]=1,
  [18419]=1,[18596]=1,[18644]=1,[14643]=1,[13609]=1,[19916]=1,[19917]=1,[21551]=1,[21573]=1,[11323]=1,[12856]=1,
  [13628]=1,[10591]=1,[21564]=1,[21572]=1,[21554]=1,[21555]=1,[20412]=1,[13337]=1,[14879]=1,[14870]=1,[21549]=1,
  [17283]=1,[12294]=1,[12944]=1,[12787]=1,[12290]=1,[23743]=1,[13069]=1,[22210]=1,[22211]=1,[22215]=1,[22213]=1,
  [12456]=1,[14824]=1,[11369]=1,[13622]=1,[13718]=1,[13707]=1,[21286]=1,[21192]=1,[12869]=1,[21129]=1,[17942]=1,
  [6228]=1,[12754]=1,[21122]=1,[12870]=1,[13709]=1,[14475]=1,[21123]=1,[13078]=1,[21121]=1,[14881]=1,[20738]=1,
  [12851]=1,[12857]=1,[13336]=1,[20718]=1,[20719]=1,[11041]=1,[12453]=1,[14874]=1,[17282]=1,[13861]=1,[19988]=1,
  [19980]=1,[12747]=1,[13607]=1,[19763]=1,[19762]=1,[12854]=1,[12858]=1,[19623]=1,[11314]=1,[18002]=1,[14586]=1,
  [17463]=1,[12801]=1,[12867]=1,[19214]=1,[6229]=1,[3694]=1,[6234]=1,[21580]=1,[19014]=1,[18985]=1,[12859]=1,
  [13859]=1,[13606]=1,[13894]=1,[10618]=1,[17462]=1,[14877]=1,[17382]=1,[12991]=1,[14893]=1,[11589]=1,[13625]=1,
  [11021]=1,[12593]=1,[13630]=1,[11042]=1,[13165]=1,[11317]=1,[17482]=1,[11762]=1,[14535]=1,[12591]=1,[12744]=1,
  [13290]=1,[10878]=1,[16582]=1,[13612]=1,[3364]=1,[17123]=1,[14875]=1,[14880]=1,[14082]=1,[13629]=1,[12421]=1,
  [13719]=1,[14532]=1,[13751]=1,[12941]=1,[12852]=1,[11321]=1,[12749]=1,[13341]=1,[12892]=1,[6434]=1,[10615]=1,
  [13220]=1,[10568]=1,[12866]=1,[12142]=1,[13407]=1,[13604]=1,[6322]=1,[14575]=1,[7612]=1,[11025]=1,[11365]=1,
  [12461]=1,[6334]=1,[11588]=1,[11591]=1,[5600]=1,[12865]=1,[6231]=1,[3696]=1,[14707]=1,[14845]=1,[9701]=1,
  [9700]=1,[9702]=1,[3366]=1,[12502]=1,[12482]=1,[2708]=1,[2709]=1,[6236]=1,[13922]=1,[5747]=1,[11585]=1,
  [12743]=1,[12943]=1,[5292]=1,[5502]=1,[6225]=1,[12864]=1,[5599]=1,[13504]=1,[6230]=1,[5495]=1,[14820]=1,
  [12183]=1,[6237]=1,[25818]=1,[7706]=1,[11264]=1,[12348]=1,[13855]=1,[14084]=1,[13814]=1,[12182]=1,[6235]=1,
  [2710]=1,[14092]=1,[2706]=1,[3756]=1,[143]=1,[19924]=1,[14085]=1,[7826]=1,[19981]=1,[5856]=1,[6088]=1,[6886]=1
}