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
    obj.label5:setText("NIVEL: ");
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
    obj.label11:setTop(80);
    obj.label11:setLeft(266);
    obj.label11:setWidth(371);
    obj.label11:setHeight(20);
    obj.label11:setText("HABILIDADES DE COMBATE");
    obj.label11:setName("label11");
    obj.label11:setFontColor("lime");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj);
    obj.label12:setTop(100);
    obj.label12:setLeft(0);
    obj.label12:setWidth(106);
    obj.label12:setHeight(20);
    obj.label12:setText("FORÇA: ");
    obj.label12:setName("label12");
    obj.label12:setFontColor("lime");

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

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj);
    obj.label13:setTop(100);
    obj.label13:setLeft(266);
    obj.label13:setWidth(371);
    obj.label13:setHeight(20);
    obj.label13:setText("HABILIDADES DE COMBATE");
    obj.label13:setName("label13");
    obj.label13:setFontColor("lime");

    function obj:_releaseEvents()
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
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
