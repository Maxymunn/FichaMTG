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
    obj.label9:setText("MOD(%)");
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
    obj.edit6:setField("attrFOR_edit");
    obj.edit6:setType("number");
    obj.edit6:setName("edit6");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj);
    obj.label12:setTop(100);
    obj.label12:setLeft(160);
    obj.label12:setWidth(53);
    obj.label12:setHeight(20);
    obj.label12:setField("attrFOR_mod");
    obj.label12:setName("label12");
    obj.label12:setFontColor("lime");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj);
    obj.label13:setTop(100);
    obj.label13:setLeft(212);
    obj.label13:setWidth(53);
    obj.label13:setHeight(20);
    obj.label13:setField("attrFOR_bonus");
    obj.label13:setName("label13");
    obj.label13:setFontColor("lime");

    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj);
    obj.dataLink1:setField("attrFOR_edit");
    obj.dataLink1:setName("dataLink1");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj);
    obj.label14:setTop(120);
    obj.label14:setLeft(0);
    obj.label14:setWidth(106);
    obj.label14:setHeight(20);
    obj.label14:setText("COMP CORP: ");
    obj.label14:setName("label14");
    obj.label14:setFontColor("lime");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj);
    obj.edit7:setTop(120);
    obj.edit7:setLeft(107);
    obj.edit7:setWidth(53);
    obj.edit7:setHeight(20);
    obj.edit7:setField("attrCC_edit");
    obj.edit7:setType("number");
    obj.edit7:setName("edit7");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj);
    obj.label15:setTop(120);
    obj.label15:setLeft(160);
    obj.label15:setWidth(53);
    obj.label15:setHeight(20);
    obj.label15:setField("attrCC_mod");
    obj.label15:setName("label15");
    obj.label15:setFontColor("lime");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj);
    obj.label16:setTop(120);
    obj.label16:setLeft(212);
    obj.label16:setWidth(53);
    obj.label16:setHeight(20);
    obj.label16:setField("attrCC_bonus");
    obj.label16:setName("label16");
    obj.label16:setFontColor("lime");

    obj.dataLink2 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink2:setParent(obj);
    obj.dataLink2:setField("attrCC_edit");
    obj.dataLink2:setName("dataLink2");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj);
    obj.label17:setTop(140);
    obj.label17:setLeft(0);
    obj.label17:setWidth(106);
    obj.label17:setHeight(20);
    obj.label17:setText("COOR MOT: ");
    obj.label17:setName("label17");
    obj.label17:setFontColor("lime");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj);
    obj.edit8:setTop(140);
    obj.edit8:setLeft(107);
    obj.edit8:setWidth(53);
    obj.edit8:setHeight(20);
    obj.edit8:setField("attrCM_edit");
    obj.edit8:setName("edit8");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj);
    obj.label18:setTop(140);
    obj.label18:setLeft(160);
    obj.label18:setWidth(53);
    obj.label18:setHeight(20);
    obj.label18:setField("attrCM_mod");
    obj.label18:setName("label18");
    obj.label18:setFontColor("lime");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj);
    obj.label19:setTop(140);
    obj.label19:setLeft(212);
    obj.label19:setWidth(53);
    obj.label19:setHeight(20);
    obj.label19:setField("attrCM_bonus");
    obj.label19:setName("label19");
    obj.label19:setFontColor("lime");

    obj.dataLink3 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink3:setParent(obj);
    obj.dataLink3:setField("attrCM_edit");
    obj.dataLink3:setName("dataLink3");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj);
    obj.label20:setTop(160);
    obj.label20:setLeft(0);
    obj.label20:setWidth(106);
    obj.label20:setHeight(20);
    obj.label20:setText("AGILIDADE: ");
    obj.label20:setName("label20");
    obj.label20:setFontColor("lime");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj);
    obj.edit9:setTop(160);
    obj.edit9:setLeft(107);
    obj.edit9:setWidth(53);
    obj.edit9:setHeight(20);
    obj.edit9:setField("attrAGI_edit");
    obj.edit9:setName("edit9");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj);
    obj.label21:setTop(160);
    obj.label21:setLeft(160);
    obj.label21:setWidth(53);
    obj.label21:setHeight(20);
    obj.label21:setField("attrAGI_mod");
    obj.label21:setName("label21");
    obj.label21:setFontColor("lime");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj);
    obj.label22:setTop(160);
    obj.label22:setLeft(212);
    obj.label22:setWidth(53);
    obj.label22:setHeight(20);
    obj.label22:setField("attrAGI_bonus");
    obj.label22:setName("label22");
    obj.label22:setFontColor("lime");

    obj.dataLink4 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink4:setParent(obj);
    obj.dataLink4:setField("attrAGI_edit");
    obj.dataLink4:setName("dataLink4");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj);
    obj.label23:setTop(180);
    obj.label23:setLeft(0);
    obj.label23:setWidth(106);
    obj.label23:setHeight(20);
    obj.label23:setText("INTELIGÊNCIA: ");
    obj.label23:setName("label23");
    obj.label23:setFontColor("lime");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj);
    obj.edit10:setTop(180);
    obj.edit10:setLeft(107);
    obj.edit10:setWidth(53);
    obj.edit10:setHeight(20);
    obj.edit10:setField("attrINT_edit");
    obj.edit10:setName("edit10");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj);
    obj.label24:setTop(180);
    obj.label24:setLeft(160);
    obj.label24:setWidth(53);
    obj.label24:setHeight(20);
    obj.label24:setField("attrINT_mod");
    obj.label24:setName("label24");
    obj.label24:setFontColor("lime");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj);
    obj.label25:setTop(180);
    obj.label25:setLeft(212);
    obj.label25:setWidth(53);
    obj.label25:setHeight(20);
    obj.label25:setField("attrINT_bonus");
    obj.label25:setName("label25");
    obj.label25:setFontColor("lime");

    obj.dataLink5 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink5:setParent(obj);
    obj.dataLink5:setField("attrINT_edit");
    obj.dataLink5:setName("dataLink5");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj);
    obj.label26:setTop(200);
    obj.label26:setLeft(0);
    obj.label26:setWidth(106);
    obj.label26:setHeight(20);
    obj.label26:setText("FOR DE VONT: ");
    obj.label26:setName("label26");
    obj.label26:setFontColor("lime");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj);
    obj.edit11:setTop(200);
    obj.edit11:setLeft(107);
    obj.edit11:setWidth(53);
    obj.edit11:setHeight(20);
    obj.edit11:setField("attrFV_edit");
    obj.edit11:setName("edit11");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj);
    obj.label27:setTop(200);
    obj.label27:setLeft(160);
    obj.label27:setWidth(53);
    obj.label27:setHeight(20);
    obj.label27:setField("attrFV_mod");
    obj.label27:setName("label27");
    obj.label27:setFontColor("lime");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj);
    obj.label28:setTop(200);
    obj.label28:setLeft(212);
    obj.label28:setWidth(53);
    obj.label28:setHeight(20);
    obj.label28:setField("attrFV_bonus");
    obj.label28:setName("label28");
    obj.label28:setFontColor("lime");

    obj.dataLink6 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink6:setParent(obj);
    obj.dataLink6:setField("attrFV_edit");
    obj.dataLink6:setName("dataLink6");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj);
    obj.label29:setTop(220);
    obj.label29:setLeft(0);
    obj.label29:setWidth(106);
    obj.label29:setHeight(20);
    obj.label29:setText("SANIDADE: ");
    obj.label29:setName("label29");
    obj.label29:setFontColor("lime");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj);
    obj.edit12:setTop(220);
    obj.edit12:setLeft(107);
    obj.edit12:setWidth(53);
    obj.edit12:setHeight(20);
    obj.edit12:setField("attrSAN_edit");
    obj.edit12:setName("edit12");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj);
    obj.label30:setTop(220);
    obj.label30:setLeft(160);
    obj.label30:setWidth(53);
    obj.label30:setHeight(20);
    obj.label30:setField("attrSAN_mod");
    obj.label30:setName("label30");
    obj.label30:setFontColor("lime");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj);
    obj.label31:setTop(220);
    obj.label31:setLeft(212);
    obj.label31:setWidth(53);
    obj.label31:setHeight(20);
    obj.label31:setField("attrSAN_bonus");
    obj.label31:setName("label31");
    obj.label31:setFontColor("lime");

    obj.dataLink7 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink7:setParent(obj);
    obj.dataLink7:setField("attrSAN_edit");
    obj.dataLink7:setName("dataLink7");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj);
    obj.label32:setTop(240);
    obj.label32:setLeft(0);
    obj.label32:setWidth(106);
    obj.label32:setHeight(20);
    obj.label32:setText("SENTIDOS: ");
    obj.label32:setName("label32");
    obj.label32:setFontColor("lime");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj);
    obj.edit13:setTop(240);
    obj.edit13:setLeft(107);
    obj.edit13:setWidth(53);
    obj.edit13:setHeight(20);
    obj.edit13:setField("attrSEN_edit");
    obj.edit13:setName("edit13");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj);
    obj.label33:setTop(240);
    obj.label33:setLeft(160);
    obj.label33:setWidth(53);
    obj.label33:setHeight(20);
    obj.label33:setField("attrSEN_mod");
    obj.label33:setName("label33");
    obj.label33:setFontColor("lime");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj);
    obj.label34:setTop(240);
    obj.label34:setLeft(212);
    obj.label34:setWidth(53);
    obj.label34:setHeight(20);
    obj.label34:setField("attrSEN_bonus");
    obj.label34:setName("label34");
    obj.label34:setFontColor("lime");

    obj.dataLink8 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink8:setParent(obj);
    obj.dataLink8:setField("attrSEN_edit");
    obj.dataLink8:setName("dataLink8");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj);
    obj.label35:setTop(260);
    obj.label35:setLeft(0);
    obj.label35:setWidth(106);
    obj.label35:setHeight(20);
    obj.label35:setText("SIMPATIA: ");
    obj.label35:setName("label35");
    obj.label35:setFontColor("lime");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj);
    obj.edit14:setTop(260);
    obj.edit14:setLeft(107);
    obj.edit14:setWidth(53);
    obj.edit14:setHeight(20);
    obj.edit14:setField("attrSIM_edit");
    obj.edit14:setName("edit14");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj);
    obj.label36:setTop(260);
    obj.label36:setLeft(160);
    obj.label36:setWidth(53);
    obj.label36:setHeight(20);
    obj.label36:setField("attrSIM_mod");
    obj.label36:setName("label36");
    obj.label36:setFontColor("lime");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj);
    obj.label37:setTop(260);
    obj.label37:setLeft(212);
    obj.label37:setWidth(53);
    obj.label37:setHeight(20);
    obj.label37:setField("attrSIM_bonus");
    obj.label37:setName("label37");
    obj.label37:setFontColor("lime");

    obj.dataLink9 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink9:setParent(obj);
    obj.dataLink9:setField("attrSIM_edit");
    obj.dataLink9:setName("dataLink9");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj);
    obj.label38:setTop(280);
    obj.label38:setLeft(0);
    obj.label38:setWidth(106);
    obj.label38:setHeight(20);
    obj.label38:setText("SORTE: ");
    obj.label38:setName("label38");
    obj.label38:setFontColor("lime");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj);
    obj.edit15:setTop(280);
    obj.edit15:setLeft(107);
    obj.edit15:setWidth(53);
    obj.edit15:setHeight(20);
    obj.edit15:setField("attrSOR_edit");
    obj.edit15:setName("edit15");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj);
    obj.label39:setTop(280);
    obj.label39:setLeft(160);
    obj.label39:setWidth(53);
    obj.label39:setHeight(20);
    obj.label39:setField("attrSOR_mod");
    obj.label39:setName("label39");
    obj.label39:setFontColor("lime");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj);
    obj.label40:setTop(280);
    obj.label40:setLeft(212);
    obj.label40:setWidth(53);
    obj.label40:setHeight(20);
    obj.label40:setField("attrSOR_bonus");
    obj.label40:setName("label40");
    obj.label40:setFontColor("lime");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj);
    obj.label41:setTop(300);
    obj.label41:setLeft(0);
    obj.label41:setWidth(106);
    obj.label41:setHeight(20);
    obj.label41:setText("ACERTO CRÍTICO: ");
    obj.label41:setName("label41");
    obj.label41:setFontColor("lime");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj);
    obj.label42:setTop(300);
    obj.label42:setLeft(107);
    obj.label42:setWidth(53);
    obj.label42:setHeight(20);
    obj.label42:setField("attrAC_value");
    obj.label42:setName("label42");
    obj.label42:setFontColor("lime");

    obj.dataLink10 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink10:setParent(obj);
    obj.dataLink10:setField("attrSOR_edit");
    obj.dataLink10:setName("dataLink10");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj);
    obj.label43:setTop(320);
    obj.label43:setLeft(0);
    obj.label43:setWidth(106);
    obj.label43:setHeight(20);
    obj.label43:setText("INI/DESL: ");
    obj.label43:setName("label43");
    obj.label43:setFontColor("lime");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj);
    obj.edit16:setTop(320);
    obj.edit16:setLeft(107);
    obj.edit16:setWidth(53);
    obj.edit16:setHeight(20);
    obj.edit16:setField("attrINIDESL_edit");
    obj.edit16:setName("edit16");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj);
    obj.label44:setTop(80);
    obj.label44:setLeft(266);
    obj.label44:setWidth(371);
    obj.label44:setHeight(20);
    obj.label44:setText("EQUIPAMENTOS");
    obj.label44:setName("label44");
    obj.label44:setFontColor("lime");

    obj.image1 = GUI.fromHandle(_obj_newObject("image"));
    obj.image1:setParent(obj);
    obj.image1:setTop(100);
    obj.image1:setLeft(276);
    obj.image1:setWidth(399);
    obj.image1:setHeight(349);
    obj.image1:setEditable(false);
    obj.image1:setStyle("autoFit");
    obj.image1:setField("./inventory.JPG");
    obj.image1:setName("image1");

    obj.image2 = GUI.fromHandle(_obj_newObject("image"));
    obj.image2:setParent(obj);
    obj.image2:setTop(171);
    obj.image2:setLeft(317);
    obj.image2:setWidth(69);
    obj.image2:setHeight(131);
    obj.image2:setField("main_hand");
    obj.image2:setEditable(true);
    obj.image2:setStyle("autoFit");
    obj.image2:setName("image2");

    obj.image3 = GUI.fromHandle(_obj_newObject("image"));
    obj.image3:setParent(obj);
    obj.image3:setTop(162);
    obj.image3:setLeft(440);
    obj.image3:setWidth(69);
    obj.image3:setHeight(68);
    obj.image3:setField("helmet");
    obj.image3:setEditable(true);
    obj.image3:setStyle("autoFit");
    obj.image3:setName("image3");

    obj.image4 = GUI.fromHandle(_obj_newObject("image"));
    obj.image4:setParent(obj);
    obj.image4:setTop(305);
    obj.image4:setLeft(363);
    obj.image4:setWidth(69);
    obj.image4:setHeight(68);
    obj.image4:setField("gloves");
    obj.image4:setEditable(true);
    obj.image4:setStyle("autoFit");
    obj.image4:setName("image4");

    obj.image5 = GUI.fromHandle(_obj_newObject("image"));
    obj.image5:setParent(obj);
    obj.image5:setTop(235);
    obj.image5:setLeft(440);
    obj.image5:setWidth(69);
    obj.image5:setHeight(95);
    obj.image5:setField("body_armour");
    obj.image5:setEditable(true);
    obj.image5:setStyle("autoFit");
    obj.image5:setName("image5");

    obj.image6 = GUI.fromHandle(_obj_newObject("image"));
    obj.image6:setParent(obj);
    obj.image6:setTop(337);
    obj.image6:setLeft(440);
    obj.image6:setWidth(69);
    obj.image6:setHeight(35);
    obj.image6:setField("belt");
    obj.image6:setEditable(true);
    obj.image6:setStyle("autoFit");
    obj.image6:setName("image6");

    obj.image7 = GUI.fromHandle(_obj_newObject("image"));
    obj.image7:setParent(obj);
    obj.image7:setTop(305);
    obj.image7:setLeft(519);
    obj.image7:setWidth(69);
    obj.image7:setHeight(68);
    obj.image7:setField("boots");
    obj.image7:setEditable(true);
    obj.image7:setStyle("autoFit");
    obj.image7:setName("image7");

    obj.image8 = GUI.fromHandle(_obj_newObject("image"));
    obj.image8:setParent(obj);
    obj.image8:setTop(171);
    obj.image8:setLeft(565);
    obj.image8:setWidth(69);
    obj.image8:setHeight(131);
    obj.image8:setField("off_hand");
    obj.image8:setEditable(true);
    obj.image8:setStyle("autoFit");
    obj.image8:setName("image8");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj);
    obj.label45:setTop(449);
    obj.label45:setLeft(0);
    obj.label45:setWidth(636);
    obj.label45:setHeight(20);
    obj.label45:setText("APERFEIÇOAMENTOS");
    obj.label45:setName("label45");
    obj.label45:setFontColor("lime");

    obj._e_event0 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.attrFOR_mod = math.floor((sheet.attrFOR_edit or 40) / 10 - 4)* 5;
                        sheet.attrFOR_bonus = math.floor((sheet.attrFOR_edit or 40) / 10 - 4);
        end, obj);

    obj._e_event1 = obj.dataLink2:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.attrCC_mod = math.floor((sheet.attrCC_edit or 40) / 10 - 4)* 5;
                        sheet.attrCC_bonus = math.floor((sheet.attrCC_edit or 40) / 10 - 4);
        end, obj);

    obj._e_event2 = obj.dataLink3:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.attrCM_mod = math.floor((sheet.attrCM_edit or 40) / 10 - 4)* 5;
                        sheet.attrCM_bonus = math.floor((sheet.attrCM_edit or 40) / 10 - 4);
        end, obj);

    obj._e_event3 = obj.dataLink4:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.attrAGI_mod = math.floor((sheet.attrAGI_edit or 40) / 10 - 4)* 5;
                        sheet.attrAGI_bonus = math.floor((sheet.attrAGI_edit or 40) / 10 - 4);
        end, obj);

    obj._e_event4 = obj.dataLink5:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.attrINT_mod = math.floor((sheet.attrINT_edit or 40) / 10 - 4)* 5;
                        sheet.attrINT_bonus = math.floor((sheet.attrINT_edit or 40) / 10 - 4);
        end, obj);

    obj._e_event5 = obj.dataLink6:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.attrFV_mod = math.floor((sheet.attrFV_edit or 40) / 10 - 4)* 5;
                        sheet.attrFV_bonus = math.floor((sheet.attrFV_edit or 40) / 10 - 4);
        end, obj);

    obj._e_event6 = obj.dataLink7:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.attrSAN_mod = math.floor((sheet.attrSAN_edit or 40) / 10 - 4)* 5;
                        sheet.attrSAN_bonus = math.floor((sheet.attrSAN_edit or 40) / 10 - 4);
        end, obj);

    obj._e_event7 = obj.dataLink8:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.attrSEN_mod = math.floor((sheet.attrSEN_edit or 40) / 10 - 4)* 5;
                        sheet.attrSEN_bonus = math.floor((sheet.attrSEN_edit or 40) / 10 - 4);
        end, obj);

    obj._e_event8 = obj.dataLink9:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.attrSIM_mod = math.floor((sheet.attrSIM_edit or 40) / 10 - 4)* 5;
                        sheet.attrSIM_bonus = math.floor((sheet.attrSIM_edit or 40) / 10 - 4);
        end, obj);

    obj._e_event9 = obj.dataLink10:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            sheet.attrSOR_mod = math.floor((sheet.attrSOR_edit or 40) / 10 - 4)* 5;
                        sheet.attrSOR_bonus = math.floor((sheet.attrSOR_edit or 40) / 10 - 4);
                        sheet.attrAC_value = math.floor(sheet.attrSOR_edit / 5)
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event9);
        __o_rrpgObjs.removeEventListenerById(self._e_event8);
        __o_rrpgObjs.removeEventListenerById(self._e_event7);
        __o_rrpgObjs.removeEventListenerById(self._e_event6);
        __o_rrpgObjs.removeEventListenerById(self._e_event5);
        __o_rrpgObjs.removeEventListenerById(self._e_event4);
        __o_rrpgObjs.removeEventListenerById(self._e_event3);
        __o_rrpgObjs.removeEventListenerById(self._e_event2);
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.image3 ~= nil then self.image3:destroy(); self.image3 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.dataLink4 ~= nil then self.dataLink4:destroy(); self.dataLink4 = nil; end;
        if self.image8 ~= nil then self.image8:destroy(); self.image8 = nil; end;
        if self.image5 ~= nil then self.image5:destroy(); self.image5 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.image7 ~= nil then self.image7:destroy(); self.image7 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.dataLink3 ~= nil then self.dataLink3:destroy(); self.dataLink3 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.dataLink7 ~= nil then self.dataLink7:destroy(); self.dataLink7 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.dataLink10 ~= nil then self.dataLink10:destroy(); self.dataLink10 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.dataLink5 ~= nil then self.dataLink5:destroy(); self.dataLink5 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.dataLink2 ~= nil then self.dataLink2:destroy(); self.dataLink2 = nil; end;
        if self.dataLink6 ~= nil then self.dataLink6:destroy(); self.dataLink6 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.image2 ~= nil then self.image2:destroy(); self.image2 = nil; end;
        if self.image6 ~= nil then self.image6:destroy(); self.image6 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.dataLink8 ~= nil then self.dataLink8:destroy(); self.dataLink8 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.image1 ~= nil then self.image1:destroy(); self.image1 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.dataLink9 ~= nil then self.dataLink9:destroy(); self.dataLink9 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.image4 ~= nil then self.image4:destroy(); self.image4 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
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
