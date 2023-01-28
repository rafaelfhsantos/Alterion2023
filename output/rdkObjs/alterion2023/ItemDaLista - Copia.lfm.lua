require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmMagias()
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
    obj:setName("frmMagias");
    obj:setHeight(33);
    obj:setTheme("light");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("client");
    obj.layout1:setMargins({left=4, right=4, top=4, bottom=4});
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
    obj.edit1:setField("magia");
    obj.edit1:setWidth(230);
    obj.edit1:setFontSize(14);
    obj.edit1:setTransparent(false);
    obj.edit1:setFontColor("#000000");
    obj.edit1:setName("edit1");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.layout1);
    obj.comboBox1:setAlign("left");
    obj.comboBox1:setVertTextAlign("center");
    obj.comboBox1:setHorzTextAlign("center");
    obj.comboBox1:setField("atributo");
    obj.comboBox1:setItems({'INT'});
    obj.comboBox1:setWidth(70);
    obj.comboBox1:setFontSize(14);
    obj.comboBox1:setName("comboBox1");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setAlign("left");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setField("nivel_magia");
    obj.edit2:setWidth(40);
    obj.edit2:setFontSize(14);
    obj.edit2:setMargins({left = 5});
    obj.edit2:setTransparent(false);
    obj.edit2:setFontColor("#000000");
    obj.edit2:setName("edit2");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout1);
    obj.edit3:setAlign("left");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setField("mod");
    obj.edit3:setWidth(40);
    obj.edit3:setFontSize(14);
    obj.edit3:setMargins({left = 5});
    obj.edit3:setTransparent(false);
    obj.edit3:setFontColor("#000000");
    obj.edit3:setName("edit3");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout1);
    obj.edit4:setAlign("left");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setField("nivel_magia_efetivo");
    obj.edit4:setWidth(100);
    obj.edit4:setFontSize(14);
    obj.edit4:setMargins({left = 5});
    obj.edit4:setTransparent(false);
    obj.edit4:setFontColor("#000000");
    obj.edit4:setName("edit4");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout1);
    obj.edit5:setAlign("left");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setField("mana");
    obj.edit5:setWidth(55);
    obj.edit5:setFontSize(14);
    obj.edit5:setMargins({left = 5});
    obj.edit5:setTransparent(false);
    obj.edit5:setFontColor("#0000FF");
    obj.edit5:setName("edit5");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout1);
    obj.edit6:setAlign("left");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setType("number");
    obj.edit6:setField("magia_pt");
    obj.edit6:setWidth(55);
    obj.edit6:setFontSize(14);
    obj.edit6:setMargins({left = 5});
    obj.edit6:setTransparent(false);
    obj.edit6:setFontColor("#FF0000");
    obj.edit6:setName("edit6");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout1);
    obj.edit7:setAlign("left");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setField("notas");
    obj.edit7:setWidth(400);
    obj.edit7:setFontSize(14);
    obj.edit7:setMargins({left = 5});
    obj.edit7:setTransparent(false);
    obj.edit7:setFontColor("#000000");
    obj.edit7:setName("edit7");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout1);
    obj.edit8:setAlign("left");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setField("pagina");
    obj.edit8:setWidth(55);
    obj.edit8:setFontSize(14);
    obj.edit8:setMargins({left = 5});
    obj.edit8:setTransparent(false);
    obj.edit8:setFontColor("#000000");
    obj.edit8:setName("edit8");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.layout1);
    obj.button2:setAlign("left");
    obj.button2:setWidth(32);
    obj.button2:setText("R");
    obj.button2:setName("button2");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            NDB.deleteNode(sheet);
        end, obj);

    obj._e_event1 = obj.button2:addEventListener("onClick",
        function (_)
            Dialogs.inputQuery("Teste de "..sheet.magia, "Modificadores", "",
            						function (valorPreenchido)
            							if (valorPreenchido == nil) then valorPreenchido = 0 end;									
            							local rolagem = Firecast.interpretarRolagem("1d20+"..sheet.nivel_magia_efetivo.."+"..valorPreenchido);
            							local mesaDoPersonagem = Firecast.getMesaDe(sheet);								
            							mesaDoPersonagem.chat:rolarDados(rolagem, "Teste de "..sheet.magia.." ("..sheet.atributo..")",function(rolado) end);
            							
            						end,nil,true);
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
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmMagias()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmMagias();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmMagias = {
    newEditor = newfrmMagias, 
    new = newfrmMagias, 
    name = "frmMagias", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmMagias = _frmMagias;
Firecast.registrarForm(_frmMagias);

return _frmMagias;
