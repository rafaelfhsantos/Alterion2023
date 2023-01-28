require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_frmMagias2()
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
    obj:setName("frmMagias2");
    obj:setHeight(33);
    obj:setTheme("light");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj);
    obj.layout1:setAlign("client");
    obj.layout1:setMargins({left=4, right=4, top=4, bottom=4});
    obj.layout1:setHitTest(true);
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

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout1);
    obj.edit2:setHint("Dificuldade");
    obj.edit2:setAlign("left");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setHorzTextAlign("center");
    obj.edit2:setField("dificuldade");
    obj.edit2:setWidth(40);
    obj.edit2:setFontSize(14);
    obj.edit2:setMargins({left = 5});
    obj.edit2:setTransparent(false);
    obj.edit2:setFontColor("#000000");
    obj.edit2:setName("edit2");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout1);
    obj.edit3:setHint("Nível de Habilidade Relativo");
    obj.edit3:setAlign("left");
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setField("nh_relativo");
    obj.edit3:setWidth(75);
    obj.edit3:setFontSize(14);
    obj.edit3:setMargins({left = 5});
    obj.edit3:setTransparent(false);
    obj.edit3:setFontColor("#000000");
    obj.edit3:setName("edit3");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout1);
    obj.edit4:setHint("Nível de Habilidade");
    obj.edit4:setAlign("left");
    obj.edit4:setVertTextAlign("center");
    obj.edit4:setType("number");
    obj.edit4:setHorzTextAlign("center");
    obj.edit4:setField("nh");
    obj.edit4:setWidth(55);
    obj.edit4:setFontSize(14);
    obj.edit4:setMargins({left = 5});
    obj.edit4:setTransparent(false);
    obj.edit4:setFontColor("#000000");
    obj.edit4:setName("edit4");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.layout1);
    obj.edit5:setHint("Tempo de Operação");
    obj.edit5:setAlign("left");
    obj.edit5:setVertTextAlign("center");
    obj.edit5:setHorzTextAlign("center");
    obj.edit5:setField("tempo_operacao");
    obj.edit5:setWidth(55);
    obj.edit5:setFontSize(14);
    obj.edit5:setMargins({left = 5});
    obj.edit5:setTransparent(false);
    obj.edit5:setFontColor("#000000");
    obj.edit5:setName("edit5");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout1);
    obj.edit6:setHint("Custo para Fazer");
    obj.edit6:setAlign("left");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setField("custo_fazer");
    obj.edit6:setWidth(55);
    obj.edit6:setFontSize(14);
    obj.edit6:setMargins({left = 5});
    obj.edit6:setTransparent(false);
    obj.edit6:setFontColor("#000000");
    obj.edit6:setName("edit6");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout1);
    obj.edit7:setHint("Custo para Manter");
    obj.edit7:setAlign("left");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setField("custo_manter");
    obj.edit7:setWidth(55);
    obj.edit7:setFontSize(14);
    obj.edit7:setMargins({left = 5});
    obj.edit7:setTransparent(false);
    obj.edit7:setFontColor("#000000");
    obj.edit7:setName("edit7");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout1);
    obj.edit8:setHint("Pontos");
    obj.edit8:setAlign("left");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setType("number");
    obj.edit8:setField("magia_pt");
    obj.edit8:setWidth(55);
    obj.edit8:setFontSize(14);
    obj.edit8:setMargins({left = 5});
    obj.edit8:setTransparent(false);
    obj.edit8:setFontColor("#FF0000");
    obj.edit8:setName("edit8");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout1);
    obj.edit9:setHint("");
    obj.edit9:setAlign("left");
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setField("notas");
    obj.edit9:setWidth(300);
    obj.edit9:setFontSize(14);
    obj.edit9:setMargins({left = 5});
    obj.edit9:setTransparent(false);
    obj.edit9:setFontColor("#000000");
    obj.edit9:setName("edit9");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout1);
    obj.edit10:setHint("Página do GURPS Magic");
    obj.edit10:setAlign("left");
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setField("pagina");
    obj.edit10:setWidth(55);
    obj.edit10:setFontSize(14);
    obj.edit10:setMargins({left = 5});
    obj.edit10:setTransparent(false);
    obj.edit10:setFontColor("#000000");
    obj.edit10:setName("edit10");

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
            Dialogs.inputQuery("Teste de "..sheet.magia, "Modificador", "",
            							function (valorPreenchido)
            								if (valorPreenchido == nil) then valorPreenchido =0 end; 
            								local rolagem = Firecast.interpretarRolagem("3d6");
            								local mesaDoPersonagem = Firecast.getMesaDe(sheet);							
            								mesaDoPersonagem.chat:rolarDados(rolagem, "Teste de "..sheet.magia.." NH efetivo "..math.floor(sheet.nh+valorPreenchido),	
            									function(rolado)
            									
            									if (rolado.resultado <= math.floor(sheet.nh+valorPreenchido) and rolado.resultado < 17) then
            										mesaDoPersonagem.chat:enviarMensagem("SUCESSO - margem de acerto:[�K3] "..(math.floor(sheet.nh+valorPreenchido)-rolado.resultado).." ");
            									else
            										mesaDoPersonagem.chat:enviarMensagem("FALHA - margem de erro: [�K4] "..(math.floor(sheet.nh+valorPreenchido)-rolado.resultado).." ");
            									end;
            								end);
            										
            							end,       
            	
            							function()
            								showMessage("Ocancelou");
            							end);
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
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newfrmMagias2()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_frmMagias2();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _frmMagias2 = {
    newEditor = newfrmMagias2, 
    new = newfrmMagias2, 
    name = "frmMagias2", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

frmMagias2 = _frmMagias2;
Firecast.registrarForm(_frmMagias2);

return _frmMagias2;
