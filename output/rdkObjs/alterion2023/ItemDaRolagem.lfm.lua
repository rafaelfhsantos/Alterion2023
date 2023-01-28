require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmItemDaRolagem()
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
    obj:setName("frmItemDaRolagem");
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
    obj.edit1:setField("descricao");
    obj.edit1:setWidth(330);
    obj.edit1:setFontSize(14);
    obj.edit1:setTransparent(false);
    obj.edit1:setFontColor("#000000");
    obj.edit1:setName("edit1");

    obj.comboBox1 = GUI.fromHandle(_obj_newObject("comboBox"));
    obj.comboBox1:setParent(obj.layout1);
    obj.comboBox1:setAlign("left");
    obj.comboBox1:setVertTextAlign("center");
    obj.comboBox1:setHorzTextAlign("center");
    obj.comboBox1:setField("tipo");
    obj.comboBox1:setItems({'Dano', 'Teste'});
    obj.comboBox1:setWidth(100);
    obj.comboBox1:setFontSize(14);
    obj.comboBox1:setMargins({left = 5});
    obj.comboBox1:setTransparent(false);
    obj.comboBox1:setFontColor("#000000");
    obj.comboBox1:setName("comboBox1");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setAlign("left");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setField("nh");
    obj.edit2:setWidth(100);
    obj.edit2:setFontSize(14);
    obj.edit2:setMargins({left = 5});
    obj.edit2:setTransparent(false);
    obj.edit2:setFontColor("#000000");
    obj.edit2:setName("edit2");

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
            if (sheet.tipo == "Dano") then						
            						local rolagem = Firecast.interpretarRolagem(sheet.nh); 
            						local mesaDoPersonagem = Firecast.getMesaDe(sheet);	
            						mesaDoPersonagem.chat:rolarDados(rolagem, sheet.descricao);
            					end;
            					
            					if (sheet.tipo == "Teste") then	
            						if (sheet.descricao == nil) then sheet.descricao = "ataque" end;					
                					Dialogs.inputQuery("Teste de "..sheet.descricao, "Modificadores", "",
                					function (valorPreenchido)
                    				if (valorPreenchido == nil) then valorPreenchido = 0 end;									
                    				local rolagem = Firecast.interpretarRolagem("1d20+"..sheet.nh.."+"..valorPreenchido);
                    				local mesaDoPersonagem = Firecast.getMesaDe(sheet);	
                    				mesaDoPersonagem.chat:rolarDados(rolagem, "Teste de "..sheet.descricao,function(rolado) end);
                    				end,nil,true);
            					end;
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

        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.comboBox1 ~= nil then self.comboBox1:destroy(); self.comboBox1 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmItemDaRolagem()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmItemDaRolagem();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmItemDaRolagem = {
    newEditor = newfrmItemDaRolagem, 
    new = newfrmItemDaRolagem, 
    name = "frmItemDaRolagem", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmItemDaRolagem = _frmItemDaRolagem;
Firecast.registrarForm(_frmItemDaRolagem);

return _frmItemDaRolagem;
