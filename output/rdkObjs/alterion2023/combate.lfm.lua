require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_alterion_2023_7()
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
    obj:setName("alterion_2023_7");
    obj:setTheme("light");
    obj:setAlign("client");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1400);
    obj.rectangle1:setHeight(1600);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setTop(10);
    obj.layout1:setHeight(600);
    obj.layout1:setWidth(630);
    obj.layout1:setName("layout1");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.layout1);
    obj.layout2:setTop(0);
    obj.layout2:setLeft(00);
    obj.layout2:setHeight(35);
    obj.layout2:setWidth(630);
    obj.layout2:setName("layout2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout2);
    obj.label1:setAlign("left");
    obj.label1:setVertTextAlign("center");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setText("Rolagem");
    obj.label1:setFontColor("#000000");
    obj.label1:setFontSize(16);
    obj.label1:setMargins({left = 35});
    obj.label1:setHeight(30);
    obj.label1:setWidth(330);
    obj.label1:setName("label1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setAlign("left");
    obj.label2:setVertTextAlign("center");
    obj.label2:setHorzTextAlign("center");
    obj.label2:setText("Tipo");
    obj.label2:setFontColor("#000000");
    obj.label2:setFontSize(16);
    obj.label2:setMargins({left = 5});
    obj.label2:setHeight(30);
    obj.label2:setWidth(100);
    obj.label2:setName("label2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setAlign("left");
    obj.label3:setVertTextAlign("center");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setText("Valor");
    obj.label3:setFontColor("#000000");
    obj.label3:setFontSize(16);
    obj.label3:setMargins({left = 5});
    obj.label3:setHeight(30);
    obj.label3:setWidth(100);
    obj.label3:setName("label3");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.layout1);
    obj.layout3:setAlign("top");
    obj.layout3:setHeight(20);
    obj.layout3:setMargins({bottom=4 , left=5});
    obj.layout3:setName("layout3");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout3);
    obj.button1:setText("Nova Rolagem");
    obj.button1:setWidth(100);
    obj.button1:setAlign("left");
    obj.button1:setName("button1");
    obj.button1:setFontColor("black");

    obj.rclListaDasRolagens = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDasRolagens:setParent(obj.layout1);
    obj.rclListaDasRolagens:setName("rclListaDasRolagens");
    obj.rclListaDasRolagens:setField("campoDasRolagens");
    obj.rclListaDasRolagens:setTemplateForm("frmItemDaRolagem");
    obj.rclListaDasRolagens:setAlign("client");
    obj.rclListaDasRolagens:setSelectable(true);

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setTop(5);
    obj.layout4:setHeight(80);
    obj.layout4:setWidth(1300);
    obj.layout4:setLeft(640);
    obj.layout4:setName("layout4");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout4);
    obj.rectangle2:setAlign("left");
    obj.rectangle2:setColor("white");
    obj.rectangle2:setStrokeSize(1.0);
    obj.rectangle2:setHeight(80);
    obj.rectangle2:setWidth(220);
    obj.rectangle2:setName("rectangle2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout4);
    obj.rectangle3:setAlign("left");
    obj.rectangle3:setColor("white");
    obj.rectangle3:setStrokeSize(1.0);
    obj.rectangle3:setHeight(80);
    obj.rectangle3:setWidth(225);
    obj.rectangle3:setName("rectangle3");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setTop(5);
    obj.layout5:setHeight(80);
    obj.layout5:setWidth(1300);
    obj.layout5:setLeft(640);
    obj.layout5:setName("layout5");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout5);
    obj.label4:setAlign("left");
    obj.label4:setVertTextAlign("center");
    obj.label4:setHorzTextAlign("center");
    obj.label4:setText("Peso Total: ");
    obj.label4:setWidth(100);
    obj.label4:setFontSize(14);
    obj.label4:setMargins({left = 2});
    obj.label4:setFontColor("#000000");
    obj.label4:setName("label4");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout5);
    obj.label5:setAlign("left");
    obj.label5:setVertTextAlign("center");
    obj.label5:setHorzTextAlign("leading");
    obj.label5:setField("peso_total");
    obj.label5:setWidth(120);
    obj.label5:setFontSize(18);
    obj.label5:setMargins({left = 2});
    obj.label5:setFontColor("#00B0B0");
    obj.label5:setName("label5");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout5);
    obj.label6:setAlign("left");
    obj.label6:setVertTextAlign("center");
    obj.label6:setHorzTextAlign("center");
    obj.label6:setText("Peso Total Sem Mochila: ");
    obj.label6:setWidth(100);
    obj.label6:setFontSize(14);
    obj.label6:setMargins({left = 2});
    obj.label6:setFontColor("#000000");
    obj.label6:setName("label6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout5);
    obj.label7:setAlign("left");
    obj.label7:setVertTextAlign("center");
    obj.label7:setHorzTextAlign("leading");
    obj.label7:setField("peso_total_sm");
    obj.label7:setWidth(120);
    obj.label7:setFontSize(18);
    obj.label7:setMargins({left = 4});
    obj.label7:setFontColor("#00B0B0");
    obj.label7:setName("label7");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setTop(90);
    obj.layout6:setHeight(80);
    obj.layout6:setWidth(1300);
    obj.layout6:setLeft(640);
    obj.layout6:setName("layout6");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout6);
    obj.rectangle4:setAlign("left");
    obj.rectangle4:setColor("white");
    obj.rectangle4:setStrokeSize(1.0);
    obj.rectangle4:setHeight(80);
    obj.rectangle4:setWidth(150);
    obj.rectangle4:setName("rectangle4");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout6);
    obj.rectangle5:setAlign("left");
    obj.rectangle5:setColor("white");
    obj.rectangle5:setStrokeSize(1.0);
    obj.rectangle5:setHeight(80);
    obj.rectangle5:setWidth(200);
    obj.rectangle5:setName("rectangle5");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setTop(90);
    obj.layout7:setHeight(80);
    obj.layout7:setWidth(1300);
    obj.layout7:setLeft(640);
    obj.layout7:setName("layout7");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout7);
    obj.label8:setAlign("left");
    obj.label8:setVertTextAlign("center");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setText("Deslocamento c/ mochila: ");
    obj.label8:setWidth(100);
    obj.label8:setFontSize(14);
    obj.label8:setMargins({left = 2});
    obj.label8:setFontColor("#000000");
    obj.label8:setName("label8");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout7);
    obj.label9:setAlign("left");
    obj.label9:setVertTextAlign("center");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setField("deslocamento_atual");
    obj.label9:setWidth(50);
    obj.label9:setFontSize(25);
    obj.label9:setMargins({left = 2});
    obj.label9:setFontColor("#00CC00");
    obj.label9:setName("label9");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout7);
    obj.label10:setAlign("left");
    obj.label10:setVertTextAlign("center");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setText("Defesa c/ mochila: ");
    obj.label10:setWidth(70);
    obj.label10:setFontSize(14);
    obj.label10:setMargins({left = 20});
    obj.label10:setFontColor("#000000");
    obj.label10:setName("label10");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout7);
    obj.label11:setAlign("left");
    obj.label11:setVertTextAlign("center");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setField("esquiva_atual");
    obj.label11:setWidth(60);
    obj.label11:setFontSize(25);
    obj.label11:setMargins({left = 2});
    obj.label11:setFontColor("#00CC00");
    obj.label11:setName("label11");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setTop(180);
    obj.layout8:setHeight(80);
    obj.layout8:setWidth(1300);
    obj.layout8:setLeft(640);
    obj.layout8:setName("layout8");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout8);
    obj.rectangle6:setAlign("left");
    obj.rectangle6:setColor("white");
    obj.rectangle6:setStrokeSize(1.0);
    obj.rectangle6:setHeight(80);
    obj.rectangle6:setWidth(150);
    obj.rectangle6:setName("rectangle6");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout8);
    obj.rectangle7:setAlign("left");
    obj.rectangle7:setColor("white");
    obj.rectangle7:setStrokeSize(1.0);
    obj.rectangle7:setHeight(80);
    obj.rectangle7:setWidth(200);
    obj.rectangle7:setName("rectangle7");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setTop(180);
    obj.layout9:setHeight(80);
    obj.layout9:setWidth(1300);
    obj.layout9:setLeft(640);
    obj.layout9:setName("layout9");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout9);
    obj.label12:setAlign("left");
    obj.label12:setVertTextAlign("center");
    obj.label12:setHorzTextAlign("center");
    obj.label12:setText("Deslocamento sem mochila: ");
    obj.label12:setWidth(100);
    obj.label12:setFontSize(14);
    obj.label12:setMargins({left = 2});
    obj.label12:setFontColor("#000000");
    obj.label12:setName("label12");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout9);
    obj.label13:setAlign("left");
    obj.label13:setVertTextAlign("center");
    obj.label13:setHorzTextAlign("center");
    obj.label13:setField("deslocamento_atual_sm");
    obj.label13:setWidth(50);
    obj.label13:setFontSize(25);
    obj.label13:setMargins({left = 2});
    obj.label13:setFontColor("#00CC00");
    obj.label13:setName("label13");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout9);
    obj.label14:setAlign("left");
    obj.label14:setVertTextAlign("center");
    obj.label14:setHorzTextAlign("center");
    obj.label14:setText("Defesa sem mochila: ");
    obj.label14:setWidth(70);
    obj.label14:setFontSize(14);
    obj.label14:setMargins({left = 20});
    obj.label14:setFontColor("#000000");
    obj.label14:setName("label14");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout9);
    obj.label15:setAlign("left");
    obj.label15:setVertTextAlign("center");
    obj.label15:setHorzTextAlign("center");
    obj.label15:setField("esquiva_atual_sm");
    obj.label15:setWidth(60);
    obj.label15:setFontSize(25);
    obj.label15:setMargins({left = 2});
    obj.label15:setFontColor("#00CC00");
    obj.label15:setName("label15");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setTop(55);
    obj.layout10:setHeight(26);
    obj.layout10:setWidth(1300);
    obj.layout10:setLeft(635);
    obj.layout10:setName("layout10");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout10);
    obj.label16:setLeft(105);
    obj.label16:setVertTextAlign("center");
    obj.label16:setField("carga_Mochila");
    obj.label16:setWidth(200);
    obj.label16:setHeight(25);
    obj.label16:setFontSize(18);
    obj.label16:setFontColor("#DD0000");
    obj.label16:setName("label16");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout10);
    obj.label17:setLeft(335);
    obj.label17:setVertTextAlign("center");
    obj.label17:setField("carga_SemMochila");
    obj.label17:setWidth(200);
    obj.label17:setHeight(25);
    obj.label17:setFontSize(18);
    obj.label17:setFontColor("#DD0000");
    obj.label17:setName("label17");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            self.rclListaDasRolagens:append();
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event0);
    end;

    obj._oldLFMDestroy = obj.destroy;

    function obj:destroy() 
        self:_releaseEvents();

        if (self.handle ~= 0) and (self.setNodeDatabase ~= nil) then
          self:setNodeDatabase(nil);
        end;

        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.rclListaDasRolagens ~= nil then self.rclListaDasRolagens:destroy(); self.rclListaDasRolagens = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newalterion_2023_7()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_alterion_2023_7();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _alterion_2023_7 = {
    newEditor = newalterion_2023_7, 
    new = newalterion_2023_7, 
    name = "alterion_2023_7", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

alterion_2023_7 = _alterion_2023_7;
Firecast.registrarForm(_alterion_2023_7);

return _alterion_2023_7;
