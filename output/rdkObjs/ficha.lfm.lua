require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_MTG_A()
    local obj = GUI.fromHandle(_obj_newObject("form"));
    local self = obj;
    local sheet = nil;

    rawset(obj, "_oldSetNodeObjectFunction", rawget(obj, "setNodeObject"));

    function obj:setNodeObject(nodeObject)
        sheet = nodeObject;
        self.sheet = nodeObject;
        self:_oldSetNodeObjectFunction(nodeObject);
    end;

    function obj:setNodeDatabase(nodeObject)
        self:setNodeObject(nodeObject);
    end;

    _gui_assignInitialParentForForm(obj.handle);
    obj:beginUpdate();
    obj:setFormType("sheetTemplate");
    obj:setDataType("MTG_Adventure");
    obj:setTitle("MTG Adventure");
    obj:setName("MTG_A");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj);
    obj.label1:setTop(0);
    obj.label1:setLeft(0);
    obj.label1:setWidth(636);
    obj.label1:setHeight(20);
    obj.label1:setHorzTextAlign("center");
    obj.label1:setText("FICHA - RPG MAGIC THE GATHERING - ZENDIKAR");
    obj.label1:setName("label1");
    obj.label1:setFontColor("lime");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj);
    obj.label2:setTop(20);
    obj.label2:setLeft(0);
    obj.label2:setWidth(212);
    obj.label2:setHeight(20);
    obj.label2:setText("RAÇA: ");
    obj.label2:setName("label2");
    obj.label2:setFontColor("lime");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj);
    obj.edit1:setTop(20);
    obj.edit1:setLeft(213);
    obj.edit1:setWidth(159);
    obj.edit1:setHeight(20);
    obj.edit1:setType("text");
    obj.edit1:setTabOrder(1);
    obj.edit1:setName("edit1");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj);
    obj.label3:setTop(20);
    obj.label3:setLeft(372);
    obj.label3:setWidth(265);
    obj.label3:setHeight(20);
    obj.label3:setText("CLASSE: ");
    obj.label3:setName("label3");
    obj.label3:setFontColor("lime");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj);
    obj.edit2:setTop(20);
    obj.edit2:setLeft(478);
    obj.edit2:setWidth(159);
    obj.edit2:setHeight(20);
    obj.edit2:setType("text");
    obj.edit2:setTabOrder(2);
    obj.edit2:setName("edit2");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj);
    obj.label4:setTop(40);
    obj.label4:setLeft(0);
    obj.label4:setWidth(265);
    obj.label4:setHeight(20);
    obj.label4:setText("NOME DO JOGADOR: ");
    obj.label4:setName("label4");
    obj.label4:setFontColor("lime");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj);
    obj.edit3:setTop(40);
    obj.edit3:setLeft(266);
    obj.edit3:setWidth(265);
    obj.edit3:setHeight(20);
    obj.edit3:setType("text");
    obj.edit3:setTabOrder(3);
    obj.edit3:setName("edit3");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj);
    obj.label5:setTop(40);
    obj.label5:setLeft(531);
    obj.label5:setWidth(53);
    obj.label5:setHeight(40);
    obj.label5:setText("NÍVEL: ");
    obj.label5:setName("label5");
    obj.label5:setFontColor("lime");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj);
    obj.edit4:setTop(40);
    obj.edit4:setLeft(583);
    obj.edit4:setWidth(53);
    obj.edit4:setHeight(40);
    obj.edit4:setType("number");
    obj.edit4:setTabOrder(4);
    obj.edit4:setFontSize(26);
    obj.edit4:setName("edit4");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj);
    obj.label6:setTop(60);
    obj.label6:setLeft(0);
    obj.label6:setWidth(265);
    obj.label6:setHeight(20);
    obj.label6:setText("NOME DO PERSONAGEM: ");
    obj.label6:setName("label6");
    obj.label6:setFontColor("lime");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj);
    obj.edit5:setTop(60);
    obj.edit5:setLeft(266);
    obj.edit5:setWidth(265);
    obj.edit5:setHeight(20);
    obj.edit5:setType("text");
    obj.edit5:setTabOrder(5);
    obj.edit5:setName("edit5");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj);
    obj.label7:setTop(80);
    obj.label7:setLeft(0);
    obj.label7:setWidth(106);
    obj.label7:setHeight(20);
    obj.label7:setText("ATRIBUTOS");
    obj.label7:setName("label7");
    obj.label7:setFontColor("lime");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj);
    obj.label8:setTop(80);
    obj.label8:setLeft(107);
    obj.label8:setWidth(53);
    obj.label8:setHeight(20);
    obj.label8:setText("%");
    obj.label8:setName("label8");
    obj.label8:setFontColor("lime");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj);
    obj.label9:setTop(80);
    obj.label9:setLeft(160);
    obj.label9:setWidth(53);
    obj.label9:setHeight(20);
    obj.label9:setText("MOD");
    obj.label9:setName("label9");
    obj.label9:setFontColor("lime");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj);
    obj.label10:setTop(80);
    obj.label10:setLeft(212);
    obj.label10:setWidth(53);
    obj.label10:setHeight(20);
    obj.label10:setText("BONUS");
    obj.label10:setName("label10");
    obj.label10:setFontColor("lime");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj);
    obj.label11:setTop(100);
    obj.label11:setLeft(0);
    obj.label11:setWidth(106);
    obj.label11:setHeight(20);
    obj.label11:setText("FORÇA: ");
    obj.label11:setName("label11");
    obj.label11:setFontColor("lime");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj);
    obj.edit6:setTop(100);
    obj.edit6:setLeft(107);
    obj.edit6:setWidth(53);
    obj.edit6:setHeight(20);
    obj.edit6:setType("number");
    obj.edit6:setName("edit6");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj);
    obj.edit7:setTop(100);
    obj.edit7:setLeft(160);
    obj.edit7:setWidth(53);
    obj.edit7:setHeight(20);
    obj.edit7:setType("number");
    obj.edit7:setName("edit7");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj);
    obj.edit8:setTop(100);
    obj.edit8:setLeft(212);
    obj.edit8:setWidth(53);
    obj.edit8:setHeight(20);
    obj.edit8:setType("number");
    obj.edit8:setName("edit8");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj);
    obj.label12:setTop(120);
    obj.label12:setLeft(0);
    obj.label12:setWidth(106);
    obj.label12:setHeight(20);
    obj.label12:setText("COMP CORP: ");
    obj.label12:setName("label12");
    obj.label12:setFontColor("lime");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj);
    obj.edit9:setTop(120);
    obj.edit9:setLeft(107);
    obj.edit9:setWidth(53);
    obj.edit9:setHeight(20);
    obj.edit9:setType("number");
    obj.edit9:setName("edit9");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj);
    obj.edit10:setTop(120);
    obj.edit10:setLeft(160);
    obj.edit10:setWidth(53);
    obj.edit10:setHeight(20);
    obj.edit10:setType("number");
    obj.edit10:setName("edit10");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj);
    obj.edit11:setTop(120);
    obj.edit11:setLeft(212);
    obj.edit11:setWidth(53);
    obj.edit11:setHeight(20);
    obj.edit11:setType("number");
    obj.edit11:setName("edit11");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj);
    obj.label13:setTop(140);
    obj.label13:setLeft(0);
    obj.label13:setWidth(106);
    obj.label13:setHeight(20);
    obj.label13:setText("COOR MOT: ");
    obj.label13:setName("label13");
    obj.label13:setFontColor("lime");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj);
    obj.edit12:setTop(140);
    obj.edit12:setLeft(107);
    obj.edit12:setWidth(53);
    obj.edit12:setHeight(20);
    obj.edit12:setType("number");
    obj.edit12:setName("edit12");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj);
    obj.edit13:setTop(140);
    obj.edit13:setLeft(160);
    obj.edit13:setWidth(53);
    obj.edit13:setHeight(20);
    obj.edit13:setType("number");
    obj.edit13:setName("edit13");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj);
    obj.edit14:setTop(140);
    obj.edit14:setLeft(212);
    obj.edit14:setWidth(53);
    obj.edit14:setHeight(20);
    obj.edit14:setType("number");
    obj.edit14:setName("edit14");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj);
    obj.label14:setTop(160);
    obj.label14:setLeft(0);
    obj.label14:setWidth(106);
    obj.label14:setHeight(20);
    obj.label14:setText("AGILIDADE: ");
    obj.label14:setName("label14");
    obj.label14:setFontColor("lime");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj);
    obj.edit15:setTop(160);
    obj.edit15:setLeft(107);
    obj.edit15:setWidth(53);
    obj.edit15:setHeight(20);
    obj.edit15:setType("number");
    obj.edit15:setName("edit15");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj);
    obj.edit16:setTop(160);
    obj.edit16:setLeft(160);
    obj.edit16:setWidth(53);
    obj.edit16:setHeight(20);
    obj.edit16:setType("number");
    obj.edit16:setName("edit16");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj);
    obj.edit17:setTop(160);
    obj.edit17:setLeft(212);
    obj.edit17:setWidth(53);
    obj.edit17:setHeight(20);
    obj.edit17:setType("number");
    obj.edit17:setName("edit17");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj);
    obj.label15:setTop(180);
    obj.label15:setLeft(0);
    obj.label15:setWidth(106);
    obj.label15:setHeight(20);
    obj.label15:setText("INTELIGÊNCIA: ");
    obj.label15:setName("label15");
    obj.label15:setFontColor("lime");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj);
    obj.edit18:setTop(180);
    obj.edit18:setLeft(107);
    obj.edit18:setWidth(53);
    obj.edit18:setHeight(20);
    obj.edit18:setType("number");
    obj.edit18:setName("edit18");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj);
    obj.edit19:setTop(180);
    obj.edit19:setLeft(160);
    obj.edit19:setWidth(53);
    obj.edit19:setHeight(20);
    obj.edit19:setType("number");
    obj.edit19:setName("edit19");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj);
    obj.edit20:setTop(180);
    obj.edit20:setLeft(212);
    obj.edit20:setWidth(53);
    obj.edit20:setHeight(20);
    obj.edit20:setType("number");
    obj.edit20:setName("edit20");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj);
    obj.label16:setTop(200);
    obj.label16:setLeft(0);
    obj.label16:setWidth(106);
    obj.label16:setHeight(20);
    obj.label16:setText("FOR DE VONT: ");
    obj.label16:setName("label16");
    obj.label16:setFontColor("lime");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj);
    obj.edit21:setTop(200);
    obj.edit21:setLeft(107);
    obj.edit21:setWidth(53);
    obj.edit21:setHeight(20);
    obj.edit21:setType("number");
    obj.edit21:setName("edit21");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj);
    obj.edit22:setTop(200);
    obj.edit22:setLeft(160);
    obj.edit22:setWidth(53);
    obj.edit22:setHeight(20);
    obj.edit22:setType("number");
    obj.edit22:setName("edit22");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj);
    obj.edit23:setTop(200);
    obj.edit23:setLeft(212);
    obj.edit23:setWidth(53);
    obj.edit23:setHeight(20);
    obj.edit23:setType("number");
    obj.edit23:setName("edit23");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj);
    obj.label17:setTop(220);
    obj.label17:setLeft(0);
    obj.label17:setWidth(106);
    obj.label17:setHeight(20);
    obj.label17:setText("SANIDADE: ");
    obj.label17:setName("label17");
    obj.label17:setFontColor("lime");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj);
    obj.edit24:setTop(220);
    obj.edit24:setLeft(107);
    obj.edit24:setWidth(53);
    obj.edit24:setHeight(20);
    obj.edit24:setType("number");
    obj.edit24:setName("edit24");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj);
    obj.edit25:setTop(220);
    obj.edit25:setLeft(160);
    obj.edit25:setWidth(53);
    obj.edit25:setHeight(20);
    obj.edit25:setType("number");
    obj.edit25:setName("edit25");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj);
    obj.edit26:setTop(220);
    obj.edit26:setLeft(212);
    obj.edit26:setWidth(53);
    obj.edit26:setHeight(20);
    obj.edit26:setType("number");
    obj.edit26:setName("edit26");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj);
    obj.label18:setTop(240);
    obj.label18:setLeft(0);
    obj.label18:setWidth(106);
    obj.label18:setHeight(20);
    obj.label18:setText("SENTIDOS: ");
    obj.label18:setName("label18");
    obj.label18:setFontColor("lime");

    obj.edit27 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit27:setParent(obj);
    obj.edit27:setTop(240);
    obj.edit27:setLeft(107);
    obj.edit27:setWidth(53);
    obj.edit27:setHeight(20);
    obj.edit27:setType("number");
    obj.edit27:setName("edit27");

    obj.edit28 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit28:setParent(obj);
    obj.edit28:setTop(240);
    obj.edit28:setLeft(160);
    obj.edit28:setWidth(53);
    obj.edit28:setHeight(20);
    obj.edit28:setType("number");
    obj.edit28:setName("edit28");

    obj.edit29 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit29:setParent(obj);
    obj.edit29:setTop(240);
    obj.edit29:setLeft(212);
    obj.edit29:setWidth(53);
    obj.edit29:setHeight(20);
    obj.edit29:setType("number");
    obj.edit29:setName("edit29");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj);
    obj.label19:setTop(260);
    obj.label19:setLeft(0);
    obj.label19:setWidth(106);
    obj.label19:setHeight(20);
    obj.label19:setText("SIMPATIA: ");
    obj.label19:setName("label19");
    obj.label19:setFontColor("lime");

    obj.edit30 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit30:setParent(obj);
    obj.edit30:setTop(260);
    obj.edit30:setLeft(107);
    obj.edit30:setWidth(53);
    obj.edit30:setHeight(20);
    obj.edit30:setType("number");
    obj.edit30:setName("edit30");

    obj.edit31 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit31:setParent(obj);
    obj.edit31:setTop(260);
    obj.edit31:setLeft(160);
    obj.edit31:setWidth(53);
    obj.edit31:setHeight(20);
    obj.edit31:setType("number");
    obj.edit31:setName("edit31");

    obj.edit32 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit32:setParent(obj);
    obj.edit32:setTop(260);
    obj.edit32:setLeft(212);
    obj.edit32:setWidth(53);
    obj.edit32:setHeight(20);
    obj.edit32:setType("number");
    obj.edit32:setName("edit32");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj);
    obj.label20:setTop(280);
    obj.label20:setLeft(0);
    obj.label20:setWidth(106);
    obj.label20:setHeight(20);
    obj.label20:setText("SORTE: ");
    obj.label20:setName("label20");
    obj.label20:setFontColor("lime");

    obj.edit33 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit33:setParent(obj);
    obj.edit33:setTop(280);
    obj.edit33:setLeft(107);
    obj.edit33:setWidth(53);
    obj.edit33:setHeight(20);
    obj.edit33:setType("number");
    obj.edit33:setName("edit33");

    obj.edit34 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit34:setParent(obj);
    obj.edit34:setTop(280);
    obj.edit34:setLeft(160);
    obj.edit34:setWidth(53);
    obj.edit34:setHeight(20);
    obj.edit34:setType("number");
    obj.edit34:setName("edit34");

    obj.edit35 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit35:setParent(obj);
    obj.edit35:setTop(280);
    obj.edit35:setLeft(212);
    obj.edit35:setWidth(53);
    obj.edit35:setHeight(20);
    obj.edit35:setType("number");
    obj.edit35:setName("edit35");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj);
    obj.label21:setTop(300);
    obj.label21:setLeft(0);
    obj.label21:setWidth(106);
    obj.label21:setHeight(20);
    obj.label21:setText("ACERTO CRÍTICO: ");
    obj.label21:setName("label21");
    obj.label21:setFontColor("lime");

    obj.edit36 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit36:setParent(obj);
    obj.edit36:setTop(300);
    obj.edit36:setLeft(107);
    obj.edit36:setWidth(53);
    obj.edit36:setHeight(20);
    obj.edit36:setType("number");
    obj.edit36:setName("edit36");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj);
    obj.label22:setTop(80);
    obj.label22:setLeft(266);
    obj.label22:setWidth(371);
    obj.label22:setHeight(20);
    obj.label22:setText("EQUIPAMENTOS");
    obj.label22:setName("label22");
    obj.label22:setFontColor("lime");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit30 ~= nil then self.edit30:destroy(); self.edit30 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit36 ~= nil then self.edit36:destroy(); self.edit36 = nil; end;
        if self.edit33 ~= nil then self.edit33:destroy(); self.edit33 = nil; end;
        if self.edit29 ~= nil then self.edit29:destroy(); self.edit29 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.edit28 ~= nil then self.edit28:destroy(); self.edit28 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.edit35 ~= nil then self.edit35:destroy(); self.edit35 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.edit34 ~= nil then self.edit34:destroy(); self.edit34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit27 ~= nil then self.edit27:destroy(); self.edit27 = nil; end;
        if self.edit32 ~= nil then self.edit32:destroy(); self.edit32 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.edit31 ~= nil then self.edit31:destroy(); self.edit31 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newMTG_A()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_MTG_A();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _MTG_A = {
    newEditor = newMTG_A, 
    new = newMTG_A, 
    name = "MTG_A", 
    dataType = "MTG_Adventure", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "MTG Adventure", 
    description=""};

MTG_A = _MTG_A;
Firecast.registrarForm(_MTG_A);
Firecast.registrarDataType(_MTG_A);

return _MTG_A;
