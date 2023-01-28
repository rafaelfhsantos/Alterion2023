require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmArmaCaC()
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
    obj:setName("frmArmaCaC");
    obj:setHeight(33);
    obj:setTheme("light");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("client");
    obj.layout1:setMargins({left=4, right=4, top=4, bottom=2});
    obj.layout1:setName("layout1");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout1);
    obj.button1:setAlign("left");
    obj.button1:setWidth(32);
    obj.button1:setText("X");
    obj.button1:setName("button1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout1);
    obj.edit1:setAlign("left");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setField("arma_nome");
    obj.edit1:setWidth(190);
    obj.edit1:setFontSize(14);
    obj.edit1:setMargins({left = 2});
    obj.edit1:setTransparent(false);
    obj.edit1:setFontColor("#000000");
    obj.edit1:setName("edit1");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setAlign("left");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setField("arma_dano");
    obj.edit2:setWidth(170);
    obj.edit2:setFontSize(14);
    obj.edit2:setMargins({left = 2});
    obj.edit2:setTransparent(false);
    obj.edit2:setFontColor("#000000");
    obj.edit2:setName("edit2");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout1);
    obj.edit3:setAlign("left");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setField("arma_alcance");
    obj.edit3:setWidth(70);
    obj.edit3:setFontSize(14);
    obj.edit3:setMargins({left = 2});
    obj.edit3:setTransparent(false);
    obj.edit3:setFontColor("#000000");
    obj.edit3:setName("edit3");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout1);
    obj.edit4:setAlign("left");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setField("arma_aparar");
    obj.edit4:setWidth(60);
    obj.edit4:setFontSize(14);
    obj.edit4:setMargins({left = 2});
    obj.edit4:setTransparent(false);
    obj.edit4:setFontColor("#000000");
    obj.edit4:setName("edit4");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout1);
    obj.edit5:setAlign("left");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setField("arma_custo");
    obj.edit5:setWidth(100);
    obj.edit5:setFontSize(14);
    obj.edit5:setMargins({left = 2});
    obj.edit5:setTransparent(false);
    obj.edit5:setFontColor("#000000");
    obj.edit5:setType("number");
    obj.edit5:setName("edit5");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout1);
    obj.edit6:setAlign("left");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setField("arma_peso");
    obj.edit6:setType("float");
    obj.edit6:setWidth(100);
    obj.edit6:setFontSize(14);
    obj.edit6:setMargins({left = 2});
    obj.edit6:setTransparent(false);
    obj.edit6:setFontColor("#000000");
    obj.edit6:setName("edit6");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout1);
    obj.edit7:setAlign("left");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setField("arma_st");
    obj.edit7:setWidth(70);
    obj.edit7:setFontSize(14);
    obj.edit7:setMargins({left = 2});
    obj.edit7:setTransparent(false);
    obj.edit7:setFontColor("#000000");
    obj.edit7:setName("edit7");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout1);
    obj.edit8:setAlign("left");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setField("arma_observacao");
    obj.edit8:setWidth(245);
    obj.edit8:setFontSize(14);
    obj.edit8:setMargins({left = 2});
    obj.edit8:setTransparent(false);
    obj.edit8:setFontColor("#000000");
    obj.edit8:setName("edit8");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            NDB.deleteNode(sheet);
        end, obj);

    obj._e_event1 = obj.edit5:addEventListener("onChange",
        function (_)
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event1);
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmArmaCaC()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmArmaCaC();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmArmaCaC = {
    newEditor = newfrmArmaCaC, 
    new = newfrmArmaCaC, 
    name = "frmArmaCaC", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmArmaCaC = _frmArmaCaC;
Firecast.registrarForm(_frmArmaCaC);

return _frmArmaCaC;
