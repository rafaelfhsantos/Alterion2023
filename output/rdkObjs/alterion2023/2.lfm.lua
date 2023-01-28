require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_alterion_2023_2()
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
    obj:setName("alterion_2023_2");
    obj:setTheme("light");
    obj:setAlign("client");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1400);
    obj.rectangle1:setHeight(1300);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setTop(5);
    obj.layout1:setHeight(70);
    obj.layout1:setWidth(800);
    obj.layout1:setName("layout1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setAlign("left");
    obj.rectangle2:setWidth(76);
    obj.rectangle2:setHeight(70);
    obj.rectangle2:setColor("white");
    obj.rectangle2:setStrokeSize(1.0);
    obj.rectangle2:setName("rectangle2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout1);
    obj.rectangle3:setAlign("left");
    obj.rectangle3:setWidth(76);
    obj.rectangle3:setHeight(70);
    obj.rectangle3:setColor("white");
    obj.rectangle3:setStrokeSize(1.0);
    obj.rectangle3:setName("rectangle3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout1);
    obj.rectangle4:setAlign("left");
    obj.rectangle4:setWidth(76);
    obj.rectangle4:setHeight(70);
    obj.rectangle4:setColor("white");
    obj.rectangle4:setStrokeSize(1.0);
    obj.rectangle4:setName("rectangle4");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setTop(5);
    obj.layout2:setHeight(70);
    obj.layout2:setWidth(800);
    obj.layout2:setName("layout2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout2);
    obj.label1:setAlign("left");
    obj.label1:setVertTextAlign("center");
    obj.label1:setText("FOR");
    obj.label1:setFontColor("#000000");
    obj.label1:setFontSize(18);
    obj.label1:setMargins({left = 5});
    obj.label1:setHeight(30);
    obj.label1:setWidth(35);
    obj.label1:setName("label1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout2);
    obj.label2:setAlign("left");
    obj.label2:setVertTextAlign("center");
    obj.label2:setField("for2");
    obj.label2:setFontColor("#000000");
    obj.label2:setFontSize(18);
    obj.label2:setMargins({left = 1});
    obj.label2:setHeight(30);
    obj.label2:setWidth(35);
    obj.label2:setName("label2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout2);
    obj.label3:setAlign("left");
    obj.label3:setVertTextAlign("center");
    obj.label3:setText("DES");
    obj.label3:setFontColor("#000000");
    obj.label3:setFontSize(18);
    obj.label3:setMargins({left = 5});
    obj.label3:setHeight(30);
    obj.label3:setWidth(35);
    obj.label3:setName("label3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout2);
    obj.label4:setAlign("left");
    obj.label4:setVertTextAlign("center");
    obj.label4:setField("des");
    obj.label4:setFontColor("#000000");
    obj.label4:setFontSize(18);
    obj.label4:setMargins({left = 1});
    obj.label4:setHeight(30);
    obj.label4:setWidth(35);
    obj.label4:setName("label4");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout2);
    obj.label5:setAlign("left");
    obj.label5:setVertTextAlign("center");
    obj.label5:setText("INT");
    obj.label5:setFontColor("#000000");
    obj.label5:setFontSize(18);
    obj.label5:setMargins({left = 5});
    obj.label5:setHeight(30);
    obj.label5:setWidth(35);
    obj.label5:setName("label5");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout2);
    obj.label6:setAlign("left");
    obj.label6:setVertTextAlign("center");
    obj.label6:setField("int");
    obj.label6:setFontColor("#000000");
    obj.label6:setFontSize(18);
    obj.label6:setMargins({left = 1});
    obj.label6:setHeight(30);
    obj.label6:setWidth(35);
    obj.label6:setName("label6");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle1);
    obj.button1:setText("Calcular Pontos");
    obj.button1:setLeft(880);
    obj.button1:setTop(200);
    obj.button1:setHeight(30);
    obj.button1:setWidth(250);
    obj.button1:setFontColor("#000000");
    obj.button1:setName("button1");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(880);
    obj.layout3:setTop(5);
    obj.layout3:setHeight(30);
    obj.layout3:setWidth(300);
    obj.layout3:setName("layout3");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout3);
    obj.rectangle5:setAlign("left");
    obj.rectangle5:setWidth(250);
    obj.rectangle5:setHeight(30);
    obj.rectangle5:setColor("white");
    obj.rectangle5:setStrokeSize(1.0);
    obj.rectangle5:setName("rectangle5");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(880);
    obj.layout4:setTop(5);
    obj.layout4:setHeight(30);
    obj.layout4:setWidth(300);
    obj.layout4:setName("layout4");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout4);
    obj.label7:setAlign("left");
    obj.label7:setMargins({left = 5});
    obj.label7:setVertTextAlign("center");
    obj.label7:setWidth(140);
    obj.label7:setText("Pontos iniciais:");
    obj.label7:setFontColor("#000000");
    obj.label7:setFontSize(15);
    obj.label7:setName("label7");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout4);
    obj.edit1:setField("pt_iniciais");
    obj.edit1:setAlign("left");
    obj.edit1:setType("number");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setFontColor("#8000A0");
    obj.edit1:setFontSize(20);
    obj.edit1:setTransparent(true);
    obj.edit1:setName("edit1");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(880);
    obj.layout5:setTop(40);
    obj.layout5:setHeight(30);
    obj.layout5:setWidth(300);
    obj.layout5:setName("layout5");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout5);
    obj.rectangle6:setAlign("left");
    obj.rectangle6:setWidth(250);
    obj.rectangle6:setHeight(30);
    obj.rectangle6:setColor("white");
    obj.rectangle6:setStrokeSize(1.0);
    obj.rectangle6:setName("rectangle6");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(880);
    obj.layout6:setTop(40);
    obj.layout6:setHeight(30);
    obj.layout6:setWidth(300);
    obj.layout6:setName("layout6");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout6);
    obj.label8:setAlign("left");
    obj.label8:setMargins({left = 5});
    obj.label8:setVertTextAlign("center");
    obj.label8:setWidth(140);
    obj.label8:setText("Pontos ganhos:");
    obj.label8:setFontColor("#000000");
    obj.label8:setFontSize(15);
    obj.label8:setName("label8");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout6);
    obj.edit2:setField("pt_ganhos");
    obj.edit2:setAlign("left");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setType("number");
    obj.edit2:setFontColor("#8000A0");
    obj.edit2:setFontSize(20);
    obj.edit2:setTransparent(true);
    obj.edit2:setName("edit2");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(880);
    obj.layout7:setTop(80);
    obj.layout7:setHeight(30);
    obj.layout7:setWidth(300);
    obj.layout7:setName("layout7");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout7);
    obj.rectangle7:setAlign("left");
    obj.rectangle7:setWidth(250);
    obj.rectangle7:setHeight(30);
    obj.rectangle7:setColor("white");
    obj.rectangle7:setStrokeSize(1.0);
    obj.rectangle7:setName("rectangle7");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(880);
    obj.layout8:setTop(80);
    obj.layout8:setHeight(30);
    obj.layout8:setWidth(300);
    obj.layout8:setName("layout8");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout8);
    obj.label9:setAlign("left");
    obj.label9:setMargins({left = 5});
    obj.label9:setVertTextAlign("center");
    obj.label9:setWidth(140);
    obj.label9:setText("Pontos totais:");
    obj.label9:setFontColor("#000000");
    obj.label9:setFontSize(15);
    obj.label9:setName("label9");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout8);
    obj.label10:setField("pt_total");
    obj.label10:setAlign("left");
    obj.label10:setVertTextAlign("center");
    obj.label10:setFontColor("#FF0000");
    obj.label10:setFontSize(20);
    obj.label10:setName("label10");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(880);
    obj.layout9:setTop(120);
    obj.layout9:setHeight(30);
    obj.layout9:setWidth(300);
    obj.layout9:setName("layout9");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout9);
    obj.rectangle8:setAlign("left");
    obj.rectangle8:setWidth(250);
    obj.rectangle8:setHeight(30);
    obj.rectangle8:setColor("white");
    obj.rectangle8:setStrokeSize(1.0);
    obj.rectangle8:setName("rectangle8");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(880);
    obj.layout10:setTop(120);
    obj.layout10:setHeight(30);
    obj.layout10:setWidth(300);
    obj.layout10:setName("layout10");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout10);
    obj.label11:setAlign("left");
    obj.label11:setMargins({left = 5});
    obj.label11:setVertTextAlign("center");
    obj.label11:setWidth(140);
    obj.label11:setText("Total Gasto:");
    obj.label11:setFontColor("#000000");
    obj.label11:setFontSize(15);
    obj.label11:setName("label11");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout10);
    obj.label12:setField("totalGasto");
    obj.label12:setAlign("left");
    obj.label12:setVertTextAlign("center");
    obj.label12:setFontColor("#FF0000");
    obj.label12:setFontSize(20);
    obj.label12:setName("label12");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(880);
    obj.layout11:setTop(160);
    obj.layout11:setHeight(30);
    obj.layout11:setWidth(300);
    obj.layout11:setName("layout11");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout11);
    obj.rectangle9:setAlign("left");
    obj.rectangle9:setWidth(250);
    obj.rectangle9:setHeight(30);
    obj.rectangle9:setColor("white");
    obj.rectangle9:setStrokeSize(1.0);
    obj.rectangle9:setName("rectangle9");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(880);
    obj.layout12:setTop(160);
    obj.layout12:setHeight(30);
    obj.layout12:setWidth(300);
    obj.layout12:setName("layout12");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout12);
    obj.label13:setAlign("left");
    obj.label13:setMargins({left = 5});
    obj.label13:setVertTextAlign("center");
    obj.label13:setWidth(140);
    obj.label13:setText("Pontos a gastar:");
    obj.label13:setFontColor("#000000");
    obj.label13:setFontSize(15);
    obj.label13:setName("label13");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout12);
    obj.label14:setField("aGastar");
    obj.label14:setAlign("left");
    obj.label14:setVertTextAlign("center");
    obj.label14:setFontColor("#FF0000");
    obj.label14:setFontSize(20);
    obj.label14:setName("label14");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.rectangle1);
    obj.label15:setVisible(false);
    obj.label15:setField("packAlterion");
    obj.label15:setName("label15");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.rectangle1);
    obj.button2:setTop(100);
    obj.button2:setLeft(230);
    obj.button2:setText("PACK Gerais");
    obj.button2:setWidth(180);
    obj.button2:setHeight(30);
    obj.button2:setFontSize(18);
    obj.button2:setName("button2");
    obj.button2:setFontColor("black");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setTop(140);
    obj.layout13:setLeft(30);
    obj.layout13:setWidth(200);
    obj.layout13:setName("layout13");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout13);
    obj.rectangle10:setAlign("client");
    obj.rectangle10:setColor("white");
    obj.rectangle10:setStrokeSize(1.0);
    obj.rectangle10:setName("rectangle10");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setTop(140);
    obj.layout14:setLeft(30);
    obj.layout14:setWidth(200);
    obj.layout14:setName("layout14");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout14);
    obj.label16:setAlign("left");
    obj.label16:setHorzTextAlign("center");
    obj.label16:setVertTextAlign("center");
    obj.label16:setText("Pontos Totais (perícias):");
    obj.label16:setFontColor("#000000");
    obj.label16:setFontSize(16);
    obj.label16:setWidth(170);
    obj.label16:setName("label16");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout14);
    obj.label17:setAlign("left");
    obj.label17:setHorzTextAlign("center");
    obj.label17:setWidth(30);
    obj.label17:setField("custo_pericias");
    obj.label17:setFontColor("#FF0000");
    obj.label17:setFontSize(18);
    obj.label17:setName("label17");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.rectangle1);
    obj.button3:setTop(130);
    obj.button3:setLeft(570);
    obj.button3:setText("Ajustar Níveis Efetivos");
    obj.button3:setWidth(250);
    obj.button3:setHeight(30);
    obj.button3:setFontSize(18);
    obj.button3:setName("button3");
    obj.button3:setFontColor("black");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.rectangle1);
    obj.label18:setVisible(false);
    obj.label18:setField("orderbyPericias");
    obj.label18:setName("label18");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.rectangle1);
    obj.button4:setTop(230);
    obj.button4:setLeft(130);
    obj.button4:setText("^");
    obj.button4:setWidth(20);
    obj.button4:setHeight(20);
    obj.button4:setFontSize(18);
    lfm_setPropAsString(obj.button4, "fontStyle",  "bold");
    obj.button4:setName("button4");
    obj.button4:setFontColor("black");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.rectangle1);
    obj.button5:setTop(200);
    obj.button5:setLeft(300);
    obj.button5:setText("^");
    obj.button5:setWidth(20);
    obj.button5:setHeight(20);
    obj.button5:setFontSize(18);
    lfm_setPropAsString(obj.button5, "fontStyle",  "bold");
    obj.button5:setName("button5");
    obj.button5:setFontColor("black");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.rectangle1);
    obj.button6:setTop(200);
    obj.button6:setLeft(370);
    obj.button6:setText("^");
    obj.button6:setWidth(20);
    obj.button6:setHeight(20);
    obj.button6:setFontSize(18);
    lfm_setPropAsString(obj.button6, "fontStyle",  "bold");
    obj.button6:setName("button6");
    obj.button6:setFontColor("black");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.rectangle1);
    obj.button7:setTop(200);
    obj.button7:setLeft(480);
    obj.button7:setText("^");
    obj.button7:setWidth(20);
    obj.button7:setHeight(20);
    obj.button7:setFontSize(18);
    lfm_setPropAsString(obj.button7, "fontStyle",  "bold");
    obj.button7:setName("button7");
    obj.button7:setFontColor("black");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.rectangle1);
    obj.button8:setTop(200);
    obj.button8:setLeft(570);
    obj.button8:setText("^");
    obj.button8:setWidth(20);
    obj.button8:setHeight(20);
    obj.button8:setFontSize(18);
    lfm_setPropAsString(obj.button8, "fontStyle",  "bold");
    obj.button8:setName("button8");
    obj.button8:setFontColor("black");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setTop(200);
    obj.layout15:setHeight(600);
    obj.layout15:setWidth(1000);
    obj.layout15:setName("layout15");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.layout15);
    obj.layout16:setAlign("top");
    obj.layout16:setHeight(20);
    obj.layout16:setMargins({bottom=4 , left=5});
    obj.layout16:setName("layout16");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.layout16);
    obj.button9:setText("Nova Perícia");
    obj.button9:setWidth(100);
    obj.button9:setAlign("left");
    obj.button9:setName("button9");
    obj.button9:setFontColor("black");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout15);
    obj.label19:setAlign("top");
    obj.label19:setVertTextAlign("center");
    obj.label19:setText("Perícia                                        Atributo      Nível      mod   Nível Efetivo  Pontos  Página");
    obj.label19:setFontColor("#000000");
    obj.label19:setFontSize(16);
    obj.label19:setMargins({left = 50});
    obj.label19:setHeight(30);
    obj.label19:setWidth(900);
    obj.label19:setName("label19");

    obj.rclListaDosItens = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens:setParent(obj.layout15);
    obj.rclListaDosItens:setName("rclListaDosItens");
    obj.rclListaDosItens:setField("campoDosItens");
    obj.rclListaDosItens:setTemplateForm("frmItemDaLista");
    obj.rclListaDosItens:setAlign("client");
    obj.rclListaDosItens:setSelectable(true);

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            calculaPericias()
        end, obj);

    obj._e_event1 = obj.button2:addEventListener("onClick",
        function (_)
            self.rclListaDosItens:append();
            			--sheet.campoDosItens.p9 = {pericia="Prestidigitação", atributo = "DES", nivel = 0, nivel_efetivo = self.des_mod.text, pericia_pt = 0};
            			--sheet.campoDosItens.p14 = {pericia="Atuação", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};
            			--sheet.campoDosItens.p15 = {pericia="Alquimia", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};
            			--sheet.campoDosItens.p16 = {pericia="Adestramento de Animais", atributo = "SAB", nivel = 0, nivel_efetivo = self.sab_mod.text, pericia_pt = 0};
            			
            			sheet.campoDosItens.p10 = {pericia="Acrobacia", atributo = "DES", nivel = 0, nivel_efetivo = self.des_mod.text, pericia_pt = 0};
            			sheet.campoDosItens.p11 = {pericia="Armadilhas e Fechaduras", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};			
            			sheet.campoDosItens.p13 = {pericia="Furtividade", atributo = "DES", nivel = 0, nivel_efetivo = self.des_mod.text, pericia_pt = 0};
            			sheet.campoDosItens.p19 = {pericia="Carisma", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};
            			sheet.campoDosItens.p20 = {pericia="Conhecimentos Gerais", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};
            			sheet.campoDosItens.p32 = {pericia="Arcanismo", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};
            			sheet.campoDosItens.p36 = {pericia="Medicina", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};
            			sheet.campoDosItens.p38 = {pericia="Atletismo", atributo = "FOR", nivel = 0, nivel_efetivo = self.for_mod.text, pericia_pt = 0};		
            			sheet.campoDosItens.p39 = {pericia="Percepção", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};			
            			sheet.campoDosItens.p40 = {pericia="Sobrevivência", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};
            			
            
            			--[[
            			sheet.campoDosItens.p17 = {pericia="Armeiro", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};
            			sheet.campoDosItens.p18 = {pericia="Disfarce", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};
            			sheet.campoDosItens.p21 = {pericia="Manha", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};
            			sheet.campoDosItens.p22 = {pericia="Liderança", atributo = "SAB", nivel = 0, nivel_efetivo = self.sab_mod.text, pericia_pt = 0};
            			sheet.campoDosItens.p23 = {pericia="Comércio", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};
            			sheet.campoDosItens.p24 = {pericia="Música", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};
            			sheet.campoDosItens.p25 = {pericia="Naturalista", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};
            			sheet.campoDosItens.p26 = {pericia="Ocultismo", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};			
            			
            			sheet.campoDosItens.p28 = {pericia="Venefício", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};
            			sheet.campoDosItens.p31 = {pericia="Estratégia", atributo = "INT", nivel = 0, nivel_efetivo = self.int_mod.text, pericia_pt = 0};
            
            			
            			sheet.campoDosItens.p41 = {pericia="Saquear", atributo = "SAB", nivel = 0, nivel_efetivo = self.sab_mod.text, pericia_pt = 0};
            			sheet.campoDosItens.p42 = {pericia="Intimidação", atributo = "SAB", nivel = 0, nivel_efetivo = self.sab_mod.text, pericia_pt = 0};
            			--]]
        end, obj);

    obj._e_event2 = obj.button3:addEventListener("onClick",
        function (_)
            local pericias = NDB.getChildNodes(sheet.campoDosItens);
            			
            			
            			
            			for i=1, #pericias, 1 do				
            				
            			
            				--[[
            				if (pericias[i].pericia_pt ~= nil) then
            					if (pericias[i].pericia_pt == 1) then
            						pericias[i].nivel = -2;
            					elseif (pericias[i].pericia_pt == 2) then
            						pericias[i].nivel = -1;					
            					elseif (pericias[i].pericia_pt >= 4) then
            						pericias[i].nivel = pericias[i].pericia_pt/4 -1;
            					else end;
            				end;
            
            				--]]
            
            				pericias[i].nivel = pericias[i].pericia_pt/4;
            				
            				if (pericias[i].atributo == "FOR") then
            					pericias[i].nivel_efetivo = self.for_mod.text + (pericias[i].nivel or 0) + (pericias[i].mod or 0);	
            				elseif (pericias[i].atributo == "DES") then
            					pericias[i].nivel_efetivo = self.des_mod.text + (pericias[i].nivel or 0) + (pericias[i].mod or 0);	
            				elseif (pericias[i].atributo == "AGI") then
            					pericias[i].nivel_efetivo = self.agi_mod.text + (pericias[i].nivel or 0) + (pericias[i].mod or 0);
            				elseif (pericias[i].atributo == "INT") then
            					pericias[i].nivel_efetivo = self.int_mod.text + (pericias[i].nivel or 0) + (pericias[i].mod or 0);	
            				elseif (pericias[i].atributo == "SAB") then
            					pericias[i].nivel_efetivo = self.sab_mod.text + (pericias[i].nivel or 0) + (pericias[i].mod or 0);		
            				elseif (pericias[i].atributo == "VIT") then
            					pericias[i].nivel_efetivo = self.vit_mod.text + (pericias[i].nivel or 0) + (pericias[i].mod or 0);	
            				elseif (pericias[i].atributo == "PER") then
            					pericias[i].nivel_efetivo = self.per_mod.text + (pericias[i].nivel or 0) + (pericias[i].mod or 0);	
            				elseif (pericias[i].atributo == "VON") then
            					pericias[i].nivel_efetivo = self.von_mod.text + (pericias[i].nivel or 0) + (pericias[i].mod or 0);	
            				end;
                        end;
        end, obj);

    obj._e_event3 = obj.button4:addEventListener("onClick",
        function (_)
            sheet.orderbyPericias = 0;
            						self.rclListaDosItens:sort();
        end, obj);

    obj._e_event4 = obj.button5:addEventListener("onClick",
        function (_)
            sheet.orderbyPericias = 1;
            						self.rclListaDosItens:sort();
        end, obj);

    obj._e_event5 = obj.button6:addEventListener("onClick",
        function (_)
            sheet.orderbyPericias = 2;
            						self.rclListaDosItens:sort();
        end, obj);

    obj._e_event6 = obj.button7:addEventListener("onClick",
        function (_)
            sheet.orderbyPericias = 3;
            						self.rclListaDosItens:sort();
        end, obj);

    obj._e_event7 = obj.button8:addEventListener("onClick",
        function (_)
            sheet.orderbyPericias = 4;
            						self.rclListaDosItens:sort();
        end, obj);

    obj._e_event8 = obj.button9:addEventListener("onClick",
        function (_)
            self.rclListaDosItens:append();
        end, obj);

    obj._e_event9 = obj.rclListaDosItens:addEventListener("onSelect",
        function (_)
            calculaPericias();
        end, obj);

    obj._e_event10 = obj.rclListaDosItens:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            calculaPericias();
            						
            						if (sheet.orderbyPericias == 0) then
            							return Utils.compareStringPtBr(nodeA.pericia, nodeB.pericia);
            						elseif (sheet.orderbyPericias == 1) then
            							return Utils.compareStringPtBr(nodeA.atributo, nodeB.atributo);
            						elseif (sheet.orderbyPericias == 2) then
            							return Utils.compareStringPtBr(nodeA.nivel, nodeB.nivel);
            							
            						elseif (sheet.orderbyPericias == 3) then
            							if (	(tonumber(nodeA.nivel_efetivo) or 0) < (tonumber(nodeB.nivel_efetivo) or 0))	then
            								return -1;
            							elseif	((tonumber(nodeA.nivel_efetivo) or 0) > (tonumber(nodeB.nivel_efetivo) or 0) )then
            								return 1;
            							else
            								return Utils.compareStringPtBr(nodeA.pericia, nodeB.pericia);
            							end;
            							
            						elseif (sheet.orderbyPericias == 4) then
            							if (	(tonumber(nodeA.pericia_pt) or 0) < (tonumber(nodeB.pericia_pt) or 0)	)then
            								return -1;
            							elseif (	(tonumber(nodeA.pericia_pt) or 0) > (tonumber(nodeB.pericia_pt) or 0)	)then
            								return 1;
            							else
            								return Utils.compareStringPtBr(nodeA.pericia, nodeB.pericia);
            							end;
            						end;
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event10);
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

        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.rclListaDosItens ~= nil then self.rclListaDosItens:destroy(); self.rclListaDosItens = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newalterion_2023_2()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_alterion_2023_2();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _alterion_2023_2 = {
    newEditor = newalterion_2023_2, 
    new = newalterion_2023_2, 
    name = "alterion_2023_2", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

alterion_2023_2 = _alterion_2023_2;
Firecast.registrarForm(_alterion_2023_2);

return _alterion_2023_2;
