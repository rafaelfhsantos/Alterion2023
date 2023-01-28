require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_alterion_2023()
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
    obj:setDataType("alterion_2023");
    obj:setTitle("Alterion 2023");
    obj:setName("alterion_2023");
    obj:setTheme("light");

    obj.tabControl1 = GUI.fromHandle(_obj_newObject("tabControl"));
    obj.tabControl1:setParent(obj);
    obj.tabControl1:setAlign("client");
    obj.tabControl1:setName("tabControl1");

    obj.tab1 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab1:setParent(obj.tabControl1);
    obj.tab1:setTitle("Frente");
    obj.tab1:setName("tab1");

    obj.alterion_2023_1 = GUI.fromHandle(_obj_newObject("form"));
    obj.alterion_2023_1:setParent(obj.tab1);
    obj.alterion_2023_1:setName("alterion_2023_1");
    obj.alterion_2023_1:setTheme("light");
    obj.alterion_2023_1:setAlign("client");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj.alterion_2023_1);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1200);
    obj.rectangle1:setHeight(1600);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setLeft(10);
    obj.layout1:setTop(10);
    obj.layout1:setHeight(20);
    obj.layout1:setWidth(45);
    obj.layout1:setName("layout1");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setAlign("left");
    obj.label1:setVertTextAlign("center");
    obj.label1:setText("Nome");
    obj.label1:setFontColor("#000000");
    obj.label1:setFontSize(15);
    obj.label1:setName("label1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.rectangle1);
    obj.rectangle2:setLeft(52);
    obj.rectangle2:setTop(6);
    obj.rectangle2:setWidth(350);
    obj.rectangle2:setHeight(25);
    obj.rectangle2:setColor("white");
    obj.rectangle2:setStrokeSize(1.0);
    obj.rectangle2:setName("rectangle2");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(52);
    obj.layout2:setTop(6);
    obj.layout2:setHeight(25);
    obj.layout2:setWidth(350);
    obj.layout2:setName("layout2");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout2);
    obj.edit1:setVertTextAlign("leading");
    obj.edit1:setField("nome");
    obj.edit1:setWidth(350);
    obj.edit1:setFontSize(15);
    obj.edit1:setTransparent(true);
    obj.edit1:setFontColor("#000000");
    obj.edit1:setName("edit1");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(430);
    obj.layout3:setTop(10);
    obj.layout3:setHeight(20);
    obj.layout3:setWidth(60);
    obj.layout3:setName("layout3");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout3);
    obj.label2:setAlign("left");
    obj.label2:setVertTextAlign("center");
    obj.label2:setText("Jogador");
    obj.label2:setFontColor("#000000");
    obj.label2:setFontSize(15);
    obj.label2:setName("label2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.rectangle1);
    obj.rectangle3:setLeft(490);
    obj.rectangle3:setTop(6);
    obj.rectangle3:setWidth(350);
    obj.rectangle3:setHeight(25);
    obj.rectangle3:setColor("white");
    obj.rectangle3:setStrokeSize(1.0);
    obj.rectangle3:setName("rectangle3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(490);
    obj.layout4:setTop(6);
    obj.layout4:setHeight(25);
    obj.layout4:setWidth(350);
    obj.layout4:setName("layout4");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout4);
    obj.edit2:setVertTextAlign("leading");
    obj.edit2:setField("jogador");
    obj.edit2:setWidth(350);
    obj.edit2:setFontSize(15);
    obj.edit2:setTransparent(true);
    obj.edit2:setFontColor("#000000");
    obj.edit2:setName("edit2");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(10);
    obj.layout5:setTop(40);
    obj.layout5:setHeight(20);
    obj.layout5:setWidth(45);
    obj.layout5:setName("layout5");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout5);
    obj.label3:setAlign("left");
    obj.label3:setVertTextAlign("center");
    obj.label3:setText("Altura");
    obj.label3:setFontColor("#000000");
    obj.label3:setFontSize(15);
    obj.label3:setName("label3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.rectangle1);
    obj.rectangle4:setLeft(52);
    obj.rectangle4:setTop(36);
    obj.rectangle4:setWidth(100);
    obj.rectangle4:setHeight(25);
    obj.rectangle4:setColor("white");
    obj.rectangle4:setStrokeSize(1.0);
    obj.rectangle4:setName("rectangle4");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(52);
    obj.layout6:setTop(36);
    obj.layout6:setHeight(25);
    obj.layout6:setWidth(100);
    obj.layout6:setName("layout6");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout6);
    obj.edit3:setVertTextAlign("leading");
    obj.edit3:setField("altura");
    obj.edit3:setWidth(100);
    obj.edit3:setFontSize(15);
    obj.edit3:setTransparent(true);
    obj.edit3:setFontColor("#000000");
    obj.edit3:setName("edit3");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(170);
    obj.layout7:setTop(40);
    obj.layout7:setHeight(20);
    obj.layout7:setWidth(45);
    obj.layout7:setName("layout7");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout7);
    obj.label4:setAlign("left");
    obj.label4:setVertTextAlign("center");
    obj.label4:setText("Peso");
    obj.label4:setFontColor("#000000");
    obj.label4:setFontSize(15);
    obj.label4:setName("label4");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.rectangle1);
    obj.rectangle5:setLeft(205);
    obj.rectangle5:setTop(36);
    obj.rectangle5:setWidth(100);
    obj.rectangle5:setHeight(25);
    obj.rectangle5:setColor("white");
    obj.rectangle5:setStrokeSize(1.0);
    obj.rectangle5:setName("rectangle5");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(205);
    obj.layout8:setTop(36);
    obj.layout8:setHeight(25);
    obj.layout8:setWidth(100);
    obj.layout8:setName("layout8");

    obj.edit4 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit4:setParent(obj.layout8);
    obj.edit4:setVertTextAlign("leading");
    obj.edit4:setField("peso");
    obj.edit4:setWidth(100);
    obj.edit4:setFontSize(15);
    obj.edit4:setTransparent(true);
    obj.edit4:setFontColor("#000000");
    obj.edit4:setName("edit4");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(570);
    obj.layout9:setTop(40);
    obj.layout9:setHeight(20);
    obj.layout9:setWidth(45);
    obj.layout9:setName("layout9");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout9);
    obj.label5:setAlign("left");
    obj.label5:setVertTextAlign("center");
    obj.label5:setText("Idade");
    obj.label5:setFontColor("#000000");
    obj.label5:setFontSize(15);
    obj.label5:setName("label5");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.rectangle1);
    obj.rectangle6:setLeft(610);
    obj.rectangle6:setTop(36);
    obj.rectangle6:setWidth(230);
    obj.rectangle6:setHeight(25);
    obj.rectangle6:setColor("white");
    obj.rectangle6:setStrokeSize(1.0);
    obj.rectangle6:setName("rectangle6");

    obj.edit5 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit5:setParent(obj.rectangle1);
    obj.edit5:setLeft(610);
    obj.edit5:setTop(36);
    obj.edit5:setVertTextAlign("leading");
    obj.edit5:setField("idade");
    obj.edit5:setWidth(230);
    obj.edit5:setFontSize(15);
    obj.edit5:setTransparent(true);
    obj.edit5:setFontColor("#000000");
    obj.edit5:setName("edit5");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(20);
    obj.layout10:setTop(100);
    obj.layout10:setHeight(50);
    obj.layout10:setWidth(500);
    obj.layout10:setName("layout10");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout10);
    obj.label6:setAlign("left");
    obj.label6:setVertTextAlign("center");
    obj.label6:setText("FOR");
    obj.label6:setFontColor("#000000");
    obj.label6:setFontSize(30);
    obj.label6:setWidth(60);
    obj.label6:setMargins({left = 5});
    obj.label6:setName("label6");

    obj.edit6 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit6:setParent(obj.layout10);
    obj.edit6:setAlign("left");
    obj.edit6:setVertTextAlign("center");
    obj.edit6:setHorzTextAlign("center");
    obj.edit6:setField("for2");
    obj.edit6:setType("number");
    obj.edit6:setWidth(55);
    obj.edit6:setFontSize(24);
    obj.edit6:setName("edit6");
    obj.edit6:setFontColor("black");

    obj.for_mod = GUI.fromHandle(_obj_newObject("button"));
    obj.for_mod:setParent(obj.layout10);
    obj.for_mod:setAlign("left");
    obj.for_mod:setName("for_mod");
    obj.for_mod:setText("0");
    obj.for_mod:setVertTextAlign("center");
    obj.for_mod:setFontColor("#000000");
    obj.for_mod:setFontSize(30);
    obj.for_mod:setWidth(60);
    obj.for_mod:setMargins({left = 5});

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(20);
    obj.layout11:setTop(160);
    obj.layout11:setHeight(50);
    obj.layout11:setWidth(500);
    obj.layout11:setName("layout11");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout11);
    obj.label7:setAlign("left");
    obj.label7:setVertTextAlign("center");
    obj.label7:setText("DES");
    obj.label7:setFontColor("#000000");
    obj.label7:setFontSize(30);
    obj.label7:setWidth(60);
    obj.label7:setMargins({left = 5});
    obj.label7:setName("label7");

    obj.edit7 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit7:setParent(obj.layout11);
    obj.edit7:setAlign("left");
    obj.edit7:setVertTextAlign("center");
    obj.edit7:setHorzTextAlign("center");
    obj.edit7:setField("des");
    obj.edit7:setType("number");
    obj.edit7:setWidth(55);
    obj.edit7:setFontSize(24);
    obj.edit7:setName("edit7");
    obj.edit7:setFontColor("black");

    obj.des_mod = GUI.fromHandle(_obj_newObject("button"));
    obj.des_mod:setParent(obj.layout11);
    obj.des_mod:setAlign("left");
    obj.des_mod:setName("des_mod");
    obj.des_mod:setText("0");
    obj.des_mod:setVertTextAlign("center");
    obj.des_mod:setFontColor("#000000");
    obj.des_mod:setFontSize(30);
    obj.des_mod:setWidth(60);
    obj.des_mod:setMargins({left = 5});

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(20);
    obj.layout12:setTop(220);
    obj.layout12:setHeight(50);
    obj.layout12:setWidth(500);
    obj.layout12:setName("layout12");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout12);
    obj.label8:setAlign("left");
    obj.label8:setVertTextAlign("center");
    obj.label8:setText("INT");
    obj.label8:setFontColor("#000000");
    obj.label8:setFontSize(30);
    obj.label8:setWidth(60);
    obj.label8:setMargins({left = 5});
    obj.label8:setName("label8");

    obj.edit8 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit8:setParent(obj.layout12);
    obj.edit8:setAlign("left");
    obj.edit8:setVertTextAlign("center");
    obj.edit8:setHorzTextAlign("center");
    obj.edit8:setField("int");
    obj.edit8:setText("10");
    obj.edit8:setType("number");
    obj.edit8:setWidth(55);
    obj.edit8:setFontSize(24);
    obj.edit8:setName("edit8");
    obj.edit8:setFontColor("black");

    obj.int_mod = GUI.fromHandle(_obj_newObject("button"));
    obj.int_mod:setParent(obj.layout12);
    obj.int_mod:setAlign("left");
    obj.int_mod:setName("int_mod");
    obj.int_mod:setText("0");
    obj.int_mod:setVertTextAlign("center");
    obj.int_mod:setFontColor("#000000");
    obj.int_mod:setFontSize(30);
    obj.int_mod:setWidth(60);
    obj.int_mod:setMargins({left = 5});

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setLeft(300);
    obj.layout13:setTop(335);
    obj.layout13:setHeight(50);
    obj.layout13:setWidth(500);
    obj.layout13:setName("layout13");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout13);
    obj.label9:setAlign("left");
    obj.label9:setVertTextAlign("center");
    obj.label9:setText("Vontade");
    obj.label9:setFontColor("#000000");
    obj.label9:setFontSize(24);
    obj.label9:setWidth(90);
    obj.label9:setMargins({left = 5});
    obj.label9:setName("label9");

    obj.edit9 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit9:setParent(obj.layout13);
    obj.edit9:setAlign("left");
    obj.edit9:setVertTextAlign("center");
    obj.edit9:setHorzTextAlign("center");
    obj.edit9:setField("von");
    obj.edit9:setType("number");
    obj.edit9:setWidth(55);
    obj.edit9:setFontSize(24);
    obj.edit9:setName("edit9");
    obj.edit9:setFontColor("black");

    obj.von_mod = GUI.fromHandle(_obj_newObject("button"));
    obj.von_mod:setParent(obj.layout13);
    obj.von_mod:setAlign("left");
    obj.von_mod:setName("von_mod");
    obj.von_mod:setText("0");
    obj.von_mod:setVertTextAlign("center");
    obj.von_mod:setFontColor("#000000");
    obj.von_mod:setFontSize(30);
    obj.von_mod:setWidth(60);
    obj.von_mod:setMargins({left = 5});

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.rectangle1);
    obj.layout14:setLeft(300);
    obj.layout14:setTop(100);
    obj.layout14:setHeight(40);
    obj.layout14:setWidth(250);
    obj.layout14:setName("layout14");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout14);
    obj.label10:setAlign("left");
    obj.label10:setHorzTextAlign("trailing");
    obj.label10:setVertTextAlign("center");
    obj.label10:setText("Pontos de Vida");
    obj.label10:setFontColor("#000000");
    obj.label10:setFontSize(18);
    obj.label10:setWidth(130);
    obj.label10:setMargins({right = 5});
    obj.label10:setName("label10");

    obj.edit10 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit10:setParent(obj.layout14);
    obj.edit10:setAlign("left");
    obj.edit10:setVertTextAlign("center");
    obj.edit10:setHorzTextAlign("center");
    obj.edit10:setField("pv");
    obj.edit10:setType("number");
    obj.edit10:setWidth(55);
    obj.edit10:setFontSize(20);
    obj.edit10:setName("edit10");
    obj.edit10:setFontColor("black");

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setLeft(500);
    obj.layout15:setTop(100);
    obj.layout15:setHeight(40);
    obj.layout15:setWidth(250);
    obj.layout15:setName("layout15");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout15);
    obj.label11:setAlign("left");
    obj.label11:setHorzTextAlign("trailing");
    obj.label11:setVertTextAlign("center");
    obj.label11:setText("Estamina");
    obj.label11:setFontColor("#000000");
    obj.label11:setFontSize(18);
    obj.label11:setWidth(130);
    obj.label11:setMargins({right = 5});
    obj.label11:setName("label11");

    obj.edit11 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit11:setParent(obj.layout15);
    obj.edit11:setAlign("left");
    obj.edit11:setVertTextAlign("center");
    obj.edit11:setHorzTextAlign("center");
    obj.edit11:setField("estamina");
    obj.edit11:setType("number");
    obj.edit11:setWidth(55);
    obj.edit11:setFontSize(20);
    obj.edit11:setName("edit11");
    obj.edit11:setFontColor("black");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setLeft(500);
    obj.layout16:setTop(180);
    obj.layout16:setHeight(50);
    obj.layout16:setWidth(500);
    obj.layout16:setName("layout16");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout16);
    obj.label12:setAlign("left");
    obj.label12:setVertTextAlign("center");
    obj.label12:setText("Ataque");
    obj.label12:setFontColor("#000000");
    obj.label12:setFontSize(30);
    obj.label12:setWidth(100);
    obj.label12:setMargins({left = 5});
    obj.label12:setName("label12");

    obj.edit12 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit12:setParent(obj.layout16);
    obj.edit12:setAlign("left");
    obj.edit12:setVertTextAlign("center");
    obj.edit12:setHorzTextAlign("center");
    obj.edit12:setField("atq");
    obj.edit12:setType("number");
    obj.edit12:setWidth(55);
    obj.edit12:setFontSize(24);
    obj.edit12:setName("edit12");
    obj.edit12:setFontColor("black");

    obj.atq_mod = GUI.fromHandle(_obj_newObject("button"));
    obj.atq_mod:setParent(obj.layout16);
    obj.atq_mod:setAlign("left");
    obj.atq_mod:setName("atq_mod");
    obj.atq_mod:setText("0");
    obj.atq_mod:setVertTextAlign("center");
    obj.atq_mod:setFontColor("#000000");
    obj.atq_mod:setFontSize(30);
    obj.atq_mod:setWidth(60);
    obj.atq_mod:setMargins({left = 5});

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.rectangle1);
    obj.layout17:setLeft(500);
    obj.layout17:setTop(250);
    obj.layout17:setHeight(50);
    obj.layout17:setWidth(500);
    obj.layout17:setName("layout17");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout17);
    obj.label13:setAlign("left");
    obj.label13:setVertTextAlign("center");
    obj.label13:setText("Defesa");
    obj.label13:setFontColor("#000000");
    obj.label13:setFontSize(30);
    obj.label13:setWidth(100);
    obj.label13:setMargins({left = 5});
    obj.label13:setName("label13");

    obj.edit13 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit13:setParent(obj.layout17);
    obj.edit13:setAlign("left");
    obj.edit13:setVertTextAlign("center");
    obj.edit13:setHorzTextAlign("center");
    obj.edit13:setField("esquiva");
    obj.edit13:setType("number");
    obj.edit13:setWidth(55);
    obj.edit13:setFontSize(24);
    obj.edit13:setName("edit13");
    obj.edit13:setFontColor("black");

    obj.def_mod = GUI.fromHandle(_obj_newObject("button"));
    obj.def_mod:setParent(obj.layout17);
    obj.def_mod:setAlign("left");
    obj.def_mod:setName("def_mod");
    obj.def_mod:setText("0");
    obj.def_mod:setVertTextAlign("center");
    obj.def_mod:setFontColor("#000000");
    obj.def_mod:setFontSize(30);
    obj.def_mod:setWidth(60);
    obj.def_mod:setMargins({left = 5});

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.rectangle1);
    obj.rectangle7:setLeft(300);
    obj.rectangle7:setTop(180);
    obj.rectangle7:setHeight(125);
    obj.rectangle7:setWidth(180);
    obj.rectangle7:setColor("#EEE");
    obj.rectangle7:setStrokeSize(1.0);
    obj.rectangle7:setName("rectangle7");

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle1);
    obj.layout18:setLeft(300);
    obj.layout18:setTop(180);
    obj.layout18:setHeight(125);
    obj.layout18:setWidth(180);
    obj.layout18:setName("layout18");

    obj.layout19 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout19:setParent(obj.layout18);
    obj.layout19:setAlign("top");
    obj.layout19:setHeight(40);
    obj.layout19:setName("layout19");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout19);
    obj.label14:setAlign("client");
    obj.label14:setHorzTextAlign("center");
    obj.label14:setVertTextAlign("center");
    obj.label14:setText("Dano Base");
    obj.label14:setFontColor("#000000");
    obj.label14:setFontSize(15);
    obj.label14:setWidth(30);
    obj.label14:setName("label14");

    obj.layout20 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout20:setParent(obj.layout18);
    obj.layout20:setAlign("top");
    obj.layout20:setHeight(40);
    obj.layout20:setName("layout20");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout20);
    obj.label15:setAlign("left");
    obj.label15:setVertTextAlign("center");
    obj.label15:setText("Corpo a Corpo");
    obj.label15:setFontColor("#000000");
    obj.label15:setFontSize(14);
    obj.label15:setWidth(100);
    obj.label15:setMargins({left = 5});
    obj.label15:setName("label15");

    obj.edit14 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit14:setParent(obj.layout20);
    obj.edit14:setAlign("left");
    obj.edit14:setVertTextAlign("center");
    obj.edit14:setHorzTextAlign("center");
    obj.edit14:setField("alavanca");
    obj.edit14:setWidth(60);
    obj.edit14:setFontSize(15);
    obj.edit14:setFontColor("#000");
    obj.edit14:setName("edit14");

    obj.layout21 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout21:setParent(obj.layout18);
    obj.layout21:setAlign("top");
    obj.layout21:setHeight(40);
    obj.layout21:setMargins({top = 2,bottom = 1});
    obj.layout21:setName("layout21");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout21);
    obj.label16:setAlign("left");
    obj.label16:setVertTextAlign("center");
    obj.label16:setHorzTextAlign("center");
    obj.label16:setText("À Distância");
    obj.label16:setFontColor("#000000");
    obj.label16:setFontSize(14);
    obj.label16:setWidth(100);
    obj.label16:setMargins({left = 5});
    obj.label16:setName("label16");

    obj.edit15 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit15:setParent(obj.layout21);
    obj.edit15:setAlign("left");
    obj.edit15:setVertTextAlign("center");
    obj.edit15:setHorzTextAlign("center");
    obj.edit15:setField("impulso");
    obj.edit15:setWidth(60);
    obj.edit15:setFontSize(15);
    obj.edit15:setFontColor("#000");
    obj.edit15:setName("edit15");

    obj.layout22 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout22:setParent(obj.rectangle1);
    obj.layout22:setLeft(5);
    obj.layout22:setTop(300);
    obj.layout22:setHeight(200);
    obj.layout22:setWidth(800);
    obj.layout22:setName("layout22");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout22);
    obj.label17:setLeft(0);
    obj.label17:setTop(0);
    obj.label17:setHeight(20);
    obj.label17:setWidth(140);
    obj.label17:setText("Força de Carga (FdC)");
    obj.label17:setFontColor("#000000");
    obj.label17:setFontSize(14);
    obj.label17:setName("label17");

    obj.edit16 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit16:setParent(obj.layout22);
    obj.edit16:setHorzTextAlign("center");
    obj.edit16:setLeft(140);
    obj.edit16:setTop(0);
    obj.edit16:setHeight(22);
    obj.edit16:setWidth(65);
    obj.edit16:setField("base_carga");
    obj.edit16:setType("number");
    obj.edit16:setFontColor("#000000");
    obj.edit16:setFontSize(14);
    obj.edit16:setName("edit16");

    obj.layout23 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout23:setParent(obj.rectangle1);
    obj.layout23:setLeft(5);
    obj.layout23:setTop(350);
    obj.layout23:setHeight(200);
    obj.layout23:setWidth(800);
    obj.layout23:setName("layout23");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout23);
    obj.label18:setLeft(0);
    obj.label18:setHorzTextAlign("trailing");
    obj.label18:setTop(0);
    obj.label18:setHeight(20);
    obj.label18:setWidth(80);
    obj.label18:setText("Iniciativa");
    obj.label18:setFontColor("#000000");
    obj.label18:setFontSize(14);
    obj.label18:setName("label18");

    obj.edit17 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit17:setParent(obj.layout23);
    obj.edit17:setHorzTextAlign("center");
    obj.edit17:setLeft(95);
    obj.edit17:setTop(0);
    obj.edit17:setHeight(22);
    obj.edit17:setWidth(65);
    obj.edit17:setField("velocidade");
    obj.edit17:setType("float");
    obj.edit17:setFontColor("#000000");
    obj.edit17:setFontSize(14);
    obj.edit17:setName("edit17");

    obj.layout24 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout24:setParent(obj.rectangle1);
    obj.layout24:setLeft(5);
    obj.layout24:setTop(380);
    obj.layout24:setHeight(200);
    obj.layout24:setWidth(800);
    obj.layout24:setName("layout24");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout24);
    obj.label19:setLeft(0);
    obj.label19:setTop(0);
    obj.label19:setHeight(20);
    obj.label19:setWidth(90);
    obj.label19:setText("Deslocamento");
    obj.label19:setFontColor("#000000");
    obj.label19:setFontSize(14);
    obj.label19:setName("label19");

    obj.edit18 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit18:setParent(obj.layout24);
    obj.edit18:setHorzTextAlign("center");
    obj.edit18:setLeft(95);
    obj.edit18:setTop(0);
    obj.edit18:setHeight(22);
    obj.edit18:setWidth(65);
    obj.edit18:setField("deslocamento");
    obj.edit18:setType("number");
    obj.edit18:setFontColor("#000000");
    obj.edit18:setFontSize(14);
    obj.edit18:setName("edit18");

    obj.layout25 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout25:setParent(obj.rectangle1);
    obj.layout25:setLeft(5);
    obj.layout25:setTop(420);
    obj.layout25:setHeight(300);
    obj.layout25:setWidth(500);
    obj.layout25:setName("layout25");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout25);
    obj.rectangle8:setLeft(0);
    obj.rectangle8:setTop(0);
    obj.rectangle8:setWidth(500);
    obj.rectangle8:setHeight(200);
    obj.rectangle8:setColor("white");
    obj.rectangle8:setStrokeSize(1.0);
    obj.rectangle8:setName("rectangle8");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout25);
    obj.label20:setLeft(4);
    obj.label20:setTop(2);
    obj.label20:setVertTextAlign("center");
    obj.label20:setHeight(30);
    obj.label20:setWidth(500);
    obj.label20:setText("Capacidade de Carga               Kg            Deslocamento               Defesa");
    obj.label20:setFontColor("#000000");
    obj.label20:setFontSize(15);
    obj.label20:setName("label20");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout25);
    obj.label21:setLeft(4);
    obj.label21:setTop(40);
    obj.label21:setVertTextAlign("center");
    obj.label21:setWidth(500);
    obj.label21:setText("Leve (0) = até 3 x FdC");
    obj.label21:setFontColor("#000000");
    obj.label21:setFontSize(15);
    obj.label21:setName("label21");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout25);
    obj.rectangle9:setLeft(180);
    obj.rectangle9:setTop(40);
    obj.rectangle9:setWidth(60);
    obj.rectangle9:setHeight(20);
    obj.rectangle9:setColor("white");
    obj.rectangle9:setStrokeSize(1.0);
    obj.rectangle9:setName("rectangle9");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout25);
    obj.label22:setLeft(180);
    obj.label22:setTop(40);
    obj.label22:setHorzTextAlign("center");
    obj.label22:setWidth(60);
    obj.label22:setField("base_carga2");
    obj.label22:setFontColor("#000000");
    obj.label22:setFontSize(15);
    obj.label22:setName("label22");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout25);
    obj.label23:setLeft(4);
    obj.label23:setTop(70);
    obj.label23:setVertTextAlign("center");
    obj.label23:setWidth(500);
    obj.label23:setText("Média (1) = até 6 x FdC");
    obj.label23:setFontColor("#000000");
    obj.label23:setFontSize(15);
    obj.label23:setName("label23");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout25);
    obj.rectangle10:setLeft(180);
    obj.rectangle10:setTop(70);
    obj.rectangle10:setWidth(60);
    obj.rectangle10:setHeight(20);
    obj.rectangle10:setColor("white");
    obj.rectangle10:setStrokeSize(1.0);
    obj.rectangle10:setName("rectangle10");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout25);
    obj.label24:setLeft(180);
    obj.label24:setTop(70);
    obj.label24:setHorzTextAlign("center");
    obj.label24:setWidth(60);
    obj.label24:setField("base_carga3");
    obj.label24:setFontColor("#000000");
    obj.label24:setFontSize(15);
    obj.label24:setName("label24");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout25);
    obj.label25:setLeft(4);
    obj.label25:setTop(100);
    obj.label25:setVertTextAlign("center");
    obj.label25:setWidth(500);
    obj.label25:setText("Pesada (2) = até 10 x FdC");
    obj.label25:setFontColor("#000000");
    obj.label25:setFontSize(15);
    obj.label25:setName("label25");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout25);
    obj.rectangle11:setLeft(180);
    obj.rectangle11:setTop(100);
    obj.rectangle11:setWidth(60);
    obj.rectangle11:setHeight(20);
    obj.rectangle11:setColor("white");
    obj.rectangle11:setStrokeSize(1.0);
    obj.rectangle11:setName("rectangle11");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout25);
    obj.label26:setLeft(180);
    obj.label26:setTop(100);
    obj.label26:setHorzTextAlign("center");
    obj.label26:setWidth(60);
    obj.label26:setField("base_carga6");
    obj.label26:setFontColor("#000000");
    obj.label26:setFontSize(15);
    obj.label26:setName("label26");

    obj.layout26 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout26:setParent(obj.rectangle1);
    obj.layout26:setLeft(235);
    obj.layout26:setTop(420);
    obj.layout26:setHeight(300);
    obj.layout26:setWidth(265);
    obj.layout26:setName("layout26");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout26);
    obj.rectangle12:setLeft(50);
    obj.rectangle12:setTop(40);
    obj.rectangle12:setWidth(60);
    obj.rectangle12:setHeight(20);
    obj.rectangle12:setColor("white");
    obj.rectangle12:setStrokeSize(1.0);
    obj.rectangle12:setName("rectangle12");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout26);
    obj.label27:setLeft(50);
    obj.label27:setTop(40);
    obj.label27:setHorzTextAlign("center");
    obj.label27:setWidth(60);
    obj.label27:setField("deslocamento");
    obj.label27:setFontColor("#000000");
    obj.label27:setFontSize(15);
    obj.label27:setName("label27");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout26);
    obj.rectangle13:setLeft(50);
    obj.rectangle13:setTop(70);
    obj.rectangle13:setWidth(60);
    obj.rectangle13:setHeight(20);
    obj.rectangle13:setColor("white");
    obj.rectangle13:setStrokeSize(1.0);
    obj.rectangle13:setName("rectangle13");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout26);
    obj.label28:setLeft(50);
    obj.label28:setTop(70);
    obj.label28:setHorzTextAlign("center");
    obj.label28:setWidth(60);
    obj.label28:setField("desloc08");
    obj.label28:setFontColor("#000000");
    obj.label28:setFontSize(15);
    obj.label28:setName("label28");

    obj.rectangle14 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle14:setParent(obj.layout26);
    obj.rectangle14:setLeft(50);
    obj.rectangle14:setTop(100);
    obj.rectangle14:setWidth(60);
    obj.rectangle14:setHeight(20);
    obj.rectangle14:setColor("white");
    obj.rectangle14:setStrokeSize(1.0);
    obj.rectangle14:setName("rectangle14");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout26);
    obj.label29:setLeft(50);
    obj.label29:setTop(100);
    obj.label29:setHorzTextAlign("center");
    obj.label29:setWidth(60);
    obj.label29:setField("desloc06");
    obj.label29:setFontColor("#000000");
    obj.label29:setFontSize(15);
    obj.label29:setName("label29");

    obj.layout27 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout27:setParent(obj.rectangle1);
    obj.layout27:setLeft(350);
    obj.layout27:setTop(420);
    obj.layout27:setHeight(300);
    obj.layout27:setWidth(265);
    obj.layout27:setName("layout27");

    obj.rectangle15 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle15:setParent(obj.layout27);
    obj.rectangle15:setLeft(80);
    obj.rectangle15:setTop(40);
    obj.rectangle15:setWidth(50);
    obj.rectangle15:setHeight(20);
    obj.rectangle15:setColor("white");
    obj.rectangle15:setStrokeSize(1.0);
    obj.rectangle15:setName("rectangle15");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout27);
    obj.label30:setLeft(80);
    obj.label30:setTop(40);
    obj.label30:setHorzTextAlign("center");
    obj.label30:setWidth(50);
    obj.label30:setField("esquiva");
    obj.label30:setFontColor("#000000");
    obj.label30:setFontSize(14);
    obj.label30:setName("label30");

    obj.rectangle16 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle16:setParent(obj.layout27);
    obj.rectangle16:setLeft(80);
    obj.rectangle16:setTop(70);
    obj.rectangle16:setWidth(50);
    obj.rectangle16:setHeight(20);
    obj.rectangle16:setColor("white");
    obj.rectangle16:setStrokeSize(1.0);
    obj.rectangle16:setName("rectangle16");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.layout27);
    obj.label31:setLeft(80);
    obj.label31:setTop(70);
    obj.label31:setHorzTextAlign("center");
    obj.label31:setWidth(50);
    obj.label31:setField("esquiva1");
    obj.label31:setFontColor("#000000");
    obj.label31:setFontSize(14);
    obj.label31:setName("label31");

    obj.rectangle17 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle17:setParent(obj.layout27);
    obj.rectangle17:setLeft(80);
    obj.rectangle17:setTop(100);
    obj.rectangle17:setWidth(50);
    obj.rectangle17:setHeight(20);
    obj.rectangle17:setColor("white");
    obj.rectangle17:setStrokeSize(1.0);
    obj.rectangle17:setName("rectangle17");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout27);
    obj.label32:setLeft(80);
    obj.label32:setTop(100);
    obj.label32:setHorzTextAlign("center");
    obj.label32:setWidth(50);
    obj.label32:setField("esquiva2");
    obj.label32:setFontColor("#000000");
    obj.label32:setFontSize(14);
    obj.label32:setName("label32");


		
		local function esquiva()
		if sheet == nil then return end; 
			
				sheet.esquiva1 = 3; 
				sheet.esquiva2 = 3;
				sheet.esquiva3 = 3;
				sheet.esquiva4 = 3;
			
			
			
				sheet.esquiva1 = (tonumber(sheet.esquiva) or 3) - 1;
				sheet.esquiva2 = (tonumber(sheet.esquiva) or 3) - 2;
				sheet.esquiva3 = (tonumber(sheet.esquiva) or 3) - 3;
				sheet.esquiva4 = (tonumber(sheet.esquiva) or 3) - 4;
			
				
			if (sheet.esquiva1 < 3)  then sheet.esquiva1 = 3  end
			if (sheet.esquiva2 < 3)  then sheet.esquiva2 = 3  end
			if (sheet.esquiva3 < 3)  then sheet.esquiva3 = 3  end
			if (sheet.esquiva4 < 3)  then sheet.esquiva4 = 3  end
		
		
		end;
		
		


    obj.rectangle18 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle18:setParent(obj.rectangle1);
    obj.rectangle18:setTop(350);
    obj.rectangle18:setLeft(590);
    obj.rectangle18:setWidth(515);
    obj.rectangle18:setHeight(350);
    obj.rectangle18:setColor("white");
    obj.rectangle18:setStrokeSize(1.0);
    obj.rectangle18:setName("rectangle18");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.rectangle1);
    obj.label33:setLeft(600);
    obj.label33:setTop(350);
    obj.label33:setVertTextAlign("center");
    obj.label33:setHeight(30);
    obj.label33:setWidth(500);
    obj.label33:setText("VANTAGENS E QUALIDADES");
    obj.label33:setFontColor("#000000");
    obj.label33:setFontSize(17);
    obj.label33:setName("label33");

    obj.layout28 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout28:setParent(obj.rectangle1);
    obj.layout28:setTop(380);
    obj.layout28:setLeft(600);
    obj.layout28:setHeight(300);
    obj.layout28:setWidth(500);
    obj.layout28:setName("layout28");

    obj.layout29 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout29:setParent(obj.layout28);
    obj.layout29:setAlign("top");
    obj.layout29:setHeight(20);
    obj.layout29:setMargins({bottom=4 , left=5});
    obj.layout29:setName("layout29");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.layout29);
    obj.button1:setText("Nova Vantagem");
    obj.button1:setWidth(150);
    obj.button1:setAlign("left");
    obj.button1:setName("button1");
    obj.button1:setFontColor("black");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout28);
    obj.label34:setLeft(250);
    obj.label34:setTop(0);
    obj.label34:setVertTextAlign("center");
    obj.label34:setWidth(500);
    obj.label34:setText("Total de pontos: ");
    obj.label34:setFontColor("#000000");
    obj.label34:setFontSize(14);
    obj.label34:setName("label34");

    obj.rectangle19 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle19:setParent(obj.layout28);
    obj.rectangle19:setLeft(360);
    obj.rectangle19:setTop(0);
    obj.rectangle19:setWidth(120);
    obj.rectangle19:setHeight(20);
    obj.rectangle19:setColor("white");
    obj.rectangle19:setStrokeSize(1.0);
    obj.rectangle19:setName("rectangle19");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout28);
    obj.label35:setLeft(360);
    obj.label35:setTop(0);
    obj.label35:setHorzTextAlign("center");
    obj.label35:setWidth(120);
    obj.label35:setField("custo_vantagens");
    obj.label35:setFontColor("#FF0000");
    obj.label35:setFontSize(14);
    obj.label35:setName("label35");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout28);
    obj.label36:setAlign("top");
    obj.label36:setVertTextAlign("center");
    obj.label36:setText("Vantagem                                                                 pts    página");
    obj.label36:setFontColor("#000000");
    obj.label36:setFontSize(15);
    obj.label36:setMargins({left = 50, bottom=2});
    obj.label36:setHeight(30);
    obj.label36:setWidth(400);
    obj.label36:setName("label36");

    obj.rcListaVantagens = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rcListaVantagens:setParent(obj.layout28);
    obj.rcListaVantagens:setName("rcListaVantagens");
    obj.rcListaVantagens:setField("campoVantagens");
    obj.rcListaVantagens:setTemplateForm("frmVantagem");
    obj.rcListaVantagens:setAlign("client");
    obj.rcListaVantagens:setSelectable(true);

    obj.layout30 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout30:setParent(obj.rectangle1);
    obj.layout30:setLeft(880);
    obj.layout30:setTop(5);
    obj.layout30:setHeight(30);
    obj.layout30:setWidth(300);
    obj.layout30:setName("layout30");

    obj.rectangle20 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle20:setParent(obj.layout30);
    obj.rectangle20:setAlign("left");
    obj.rectangle20:setWidth(250);
    obj.rectangle20:setHeight(30);
    obj.rectangle20:setColor("white");
    obj.rectangle20:setStrokeSize(1.0);
    obj.rectangle20:setName("rectangle20");

    obj.layout31 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout31:setParent(obj.rectangle1);
    obj.layout31:setLeft(880);
    obj.layout31:setTop(5);
    obj.layout31:setHeight(30);
    obj.layout31:setWidth(300);
    obj.layout31:setName("layout31");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout31);
    obj.label37:setAlign("left");
    obj.label37:setMargins({left = 5});
    obj.label37:setVertTextAlign("center");
    obj.label37:setWidth(140);
    obj.label37:setText("Pontos iniciais:");
    obj.label37:setFontColor("#000000");
    obj.label37:setFontSize(15);
    obj.label37:setName("label37");

    obj.edit19 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit19:setParent(obj.layout31);
    obj.edit19:setField("pt_iniciais");
    obj.edit19:setAlign("left");
    obj.edit19:setVertTextAlign("center");
    obj.edit19:setFontColor("#8000A0");
    obj.edit19:setType("number");
    obj.edit19:setFontSize(20);
    obj.edit19:setTransparent(true);
    obj.edit19:setName("edit19");

    obj.layout32 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout32:setParent(obj.rectangle1);
    obj.layout32:setLeft(880);
    obj.layout32:setTop(40);
    obj.layout32:setHeight(30);
    obj.layout32:setWidth(300);
    obj.layout32:setName("layout32");

    obj.rectangle21 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle21:setParent(obj.layout32);
    obj.rectangle21:setAlign("left");
    obj.rectangle21:setWidth(250);
    obj.rectangle21:setHeight(30);
    obj.rectangle21:setColor("white");
    obj.rectangle21:setStrokeSize(1.0);
    obj.rectangle21:setName("rectangle21");

    obj.layout33 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout33:setParent(obj.rectangle1);
    obj.layout33:setLeft(880);
    obj.layout33:setTop(40);
    obj.layout33:setHeight(30);
    obj.layout33:setWidth(300);
    obj.layout33:setName("layout33");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout33);
    obj.label38:setAlign("left");
    obj.label38:setMargins({left = 5});
    obj.label38:setVertTextAlign("center");
    obj.label38:setWidth(140);
    obj.label38:setText("Pontos ganhos:");
    obj.label38:setFontColor("#000000");
    obj.label38:setFontSize(15);
    obj.label38:setName("label38");

    obj.edit20 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit20:setParent(obj.layout33);
    obj.edit20:setField("pt_ganhos");
    obj.edit20:setType("number");
    obj.edit20:setAlign("left");
    obj.edit20:setVertTextAlign("center");
    obj.edit20:setFontColor("#8000A0");
    obj.edit20:setFontSize(20);
    obj.edit20:setTransparent(true);
    obj.edit20:setName("edit20");

    obj.layout34 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout34:setParent(obj.rectangle1);
    obj.layout34:setLeft(880);
    obj.layout34:setTop(80);
    obj.layout34:setHeight(30);
    obj.layout34:setWidth(300);
    obj.layout34:setName("layout34");

    obj.rectangle22 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle22:setParent(obj.layout34);
    obj.rectangle22:setAlign("left");
    obj.rectangle22:setWidth(250);
    obj.rectangle22:setHeight(30);
    obj.rectangle22:setColor("white");
    obj.rectangle22:setStrokeSize(1.0);
    obj.rectangle22:setName("rectangle22");

    obj.layout35 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout35:setParent(obj.rectangle1);
    obj.layout35:setLeft(880);
    obj.layout35:setTop(80);
    obj.layout35:setHeight(30);
    obj.layout35:setWidth(300);
    obj.layout35:setName("layout35");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout35);
    obj.label39:setAlign("left");
    obj.label39:setMargins({left = 5});
    obj.label39:setVertTextAlign("center");
    obj.label39:setWidth(140);
    obj.label39:setText("Pontos totais:");
    obj.label39:setFontColor("#000000");
    obj.label39:setFontSize(15);
    obj.label39:setName("label39");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout35);
    obj.label40:setField("pt_total");
    obj.label40:setAlign("left");
    obj.label40:setVertTextAlign("center");
    obj.label40:setFontColor("#FF0000");
    obj.label40:setFontSize(20);
    obj.label40:setName("label40");

    obj.layout36 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout36:setParent(obj.rectangle1);
    obj.layout36:setLeft(880);
    obj.layout36:setTop(120);
    obj.layout36:setHeight(30);
    obj.layout36:setWidth(300);
    obj.layout36:setName("layout36");

    obj.rectangle23 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle23:setParent(obj.layout36);
    obj.rectangle23:setAlign("left");
    obj.rectangle23:setWidth(250);
    obj.rectangle23:setHeight(30);
    obj.rectangle23:setColor("white");
    obj.rectangle23:setStrokeSize(1.0);
    obj.rectangle23:setName("rectangle23");

    obj.layout37 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout37:setParent(obj.rectangle1);
    obj.layout37:setLeft(880);
    obj.layout37:setTop(120);
    obj.layout37:setHeight(30);
    obj.layout37:setWidth(300);
    obj.layout37:setName("layout37");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout37);
    obj.label41:setAlign("left");
    obj.label41:setMargins({left = 5});
    obj.label41:setVertTextAlign("center");
    obj.label41:setWidth(140);
    obj.label41:setText("Total Gasto:");
    obj.label41:setFontColor("#000000");
    obj.label41:setFontSize(15);
    obj.label41:setName("label41");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout37);
    obj.label42:setField("totalGasto");
    obj.label42:setAlign("left");
    obj.label42:setVertTextAlign("center");
    obj.label42:setFontColor("#FF0000");
    obj.label42:setFontSize(20);
    obj.label42:setName("label42");

    obj.layout38 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout38:setParent(obj.rectangle1);
    obj.layout38:setLeft(880);
    obj.layout38:setTop(160);
    obj.layout38:setHeight(30);
    obj.layout38:setWidth(300);
    obj.layout38:setName("layout38");

    obj.rectangle24 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle24:setParent(obj.layout38);
    obj.rectangle24:setAlign("left");
    obj.rectangle24:setWidth(250);
    obj.rectangle24:setHeight(30);
    obj.rectangle24:setColor("white");
    obj.rectangle24:setStrokeSize(1.0);
    obj.rectangle24:setName("rectangle24");

    obj.layout39 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout39:setParent(obj.rectangle1);
    obj.layout39:setLeft(880);
    obj.layout39:setTop(160);
    obj.layout39:setHeight(30);
    obj.layout39:setWidth(300);
    obj.layout39:setName("layout39");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout39);
    obj.label43:setAlign("left");
    obj.label43:setMargins({left = 5});
    obj.label43:setVertTextAlign("center");
    obj.label43:setWidth(140);
    obj.label43:setText("Pontos a gastar:");
    obj.label43:setFontColor("#000000");
    obj.label43:setFontSize(15);
    obj.label43:setName("label43");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout39);
    obj.label44:setField("aGastar");
    obj.label44:setAlign("left");
    obj.label44:setVertTextAlign("center");
    obj.label44:setFontColor("#FF0000");
    obj.label44:setFontSize(20);
    obj.label44:setName("label44");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.rectangle1);
    obj.button2:setText("Calcular Pontos");
    obj.button2:setLeft(880);
    obj.button2:setTop(200);
    obj.button2:setHeight(30);
    obj.button2:setWidth(250);
    obj.button2:setFontColor("#000000");
    obj.button2:setName("button2");



	local function calculaPericias()
	if sheet == nil then return end; 
	
	if (sheet.for2 == nil or sheet.for2 == '') then sheet.for2 = 10 end;
	if (sheet.des == nil or sheet.des == '') then sheet.des = 10 end;
	if (sheet.int == nil or sheet.int == '') then sheet.int = 10 end;
	--[[ 
	if (sheet.agi == nil or sheet.agi == '') then sheet.agi = 10 end;
	if (sheet.vit == nil or sheet.vit == '') then sheet.vit = 10 end;
	if (sheet.sab == nil or sheet.sab == '') then sheet.sab = 10 end;
	if (sheet.per == nil or sheet.per == '') then sheet.per = 10 end; 
	--]]
	if (sheet.von == nil or sheet.von == '') then sheet.von = 10 end;
	if (sheet.base_carga == nil or sheet.base_carga == '') then sheet.base_carga = 10 end;
	
	
	local objetos = NDB.getChildNodes(sheet.campoDosItens);
		
		local custo = 0;
		
        for i=1, #objetos, 1 do            
			custo = custo + (tonumber(objetos[i].pericia_pt) or 0);
        end;
				
	sheet.custo_pericias = custo;
				
	local objetos = NDB.getChildNodes(sheet.periciasCombate);
		
		local custo_combate = 0;
		
                for i=1, #objetos, 1 do
                    custo_combate = custo_combate + (tonumber(objetos[i].pericia_pt) or 0);
                end;
				

		
	local objetos_tecn = NDB.getChildNodes(sheet.campoTecnicas);
	
		local custo_tecn = 0;
		
				for i=1, #objetos_tecn, 1 do
                    custo_tecn = custo_tecn + (tonumber(objetos_tecn[i].pericia_pt) or 0);
                end;
				
				
				
		
		local objetos_linguas = NDB.getChildNodes(sheet.campoLinguas);
	
		local custo_linguas = 0;
		
				for i=1, #objetos_linguas, 1 do
                    custo_linguas = custo_linguas + (tonumber(objetos_linguas[i].falada_pt) or 0) + (tonumber(objetos_linguas[i].escrita_pt) or 0) ;
                end;
				
				
		local objetos_familiaridade = NDB.getChildNodes(sheet.campoFamiliaridades);
	
		local custo_familiaridade = 0;
		
				for i=1, #objetos_familiaridade, 1 do
                    custo_familiaridade = custo_familiaridade + (tonumber(objetos_familiaridade[i].familiaridade_pt) or 0);
                end;
		
		
		
		local objetos_vantagem = NDB.getChildNodes(sheet.campoVantagens);
	
		sheet.custo_vantagens = 0;
		
				for i=1, #objetos_vantagem, 1 do
                    sheet.custo_vantagens = sheet.custo_vantagens + (tonumber(objetos_vantagem[i].familiaridade_pt) or 0);
                end;
				
		
		
		
		
		local objetos_desvantagem = NDB.getChildNodes(sheet.campoDesvantagens);
	
		sheet.custo_desvantagens = 0;
		
				for i=1, #objetos_desvantagem, 1 do
                    sheet.custo_desvantagens = sheet.custo_desvantagens + (tonumber(objetos_desvantagem[i].familiaridade_pt) or 0);
                end;
				
				
				
		local objetos_magia = NDB.getChildNodes(sheet.campoMagias);
	
		local custo_magias = 0;
		
				for i=1, #objetos_magia, 1 do
                    custo_magias = custo_magias + (tonumber(objetos_magia[i].magia_pt) or 0);
                end;
		
		
		if (sheet.for_pt == nil) then sheet.for_pt = 0 end
		if (sheet.des_pt == nil) then sheet.des_pt = 0 end
		if (sheet.agi_pt == nil) then sheet.agi_pt = 0 end
		if (sheet.int_pt == nil) then sheet.int_pt = 0 end
		if (sheet.sab_pt == nil) then sheet.sab_pt = 0 end
		if (sheet.vit_pt == nil) then sheet.vit_pt = 0 end
		if (sheet.von_pt == nil) then sheet.von_pt = 0 end
		if (sheet.per_pt == nil) then sheet.per_pt = 0 end
		if (sheet.pericia_pt == nil) then sheet.pericia_pt = 0 end
		if (sheet.aGastar == nil) then sheet.aGastar = 0 end
		if (sheet.pt_total == nil) then sheet.pt_total = 0 end
		
		
		sheet.totalGasto= sheet.for_pt + sheet.des_pt + sheet.int_pt + sheet.vit_pt + sheet.agi_pt
											+ (custo or 0) + (custo_combate or 0) + (custo_tecn or 0) + (tonumber(sheet.von_pt) or 0) 
											+ (tonumber(sheet.sab_pt) or 0) 
											+ (tonumber(sheet.per_pt) or 0) + (tonumber(sheet.velocidade_pt) or 0) + (tonumber(sheet.deslocamento_pt) or 0)
											+ (sheet.custo_vantagens or 0) + (sheet.custo_desvantagens or 0) + (tonumber(custo_magias) or 0)
		
		sheet.pt_total = (sheet.pt_iniciais or 0) + (sheet.pt_ganhos or 0) 

		
		sheet.aGastar = sheet.pt_total - sheet.totalGasto 
		
		
		
		
	end;

	


    obj.dataLink1 = GUI.fromHandle(_obj_newObject("dataLink"));
    obj.dataLink1:setParent(obj.rectangle1);
    obj.dataLink1:setFields({
	'st_pt' , 'dx_pt' , 'iq_pt' , 'ht_pt' , 'pv_pt' , 'pf_pt' , 'pt_total' , 'pt_ganhos' , 'pt_iniciais' , 'von_pt' , 'per_pt' , 'velocidade_pt',
	'deslocamento_pt' , 'nt_pt'
	});
    obj.dataLink1:setName("dataLink1");

    obj.tab2 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab2:setParent(obj.tabControl1);
    obj.tab2:setTitle("Perícias");
    obj.tab2:setName("tab2");

    obj.alterion_2023_2 = GUI.fromHandle(_obj_newObject("form"));
    obj.alterion_2023_2:setParent(obj.tab2);
    obj.alterion_2023_2:setName("alterion_2023_2");
    obj.alterion_2023_2:setTheme("light");
    obj.alterion_2023_2:setAlign("client");

    obj.scrollBox2 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox2:setParent(obj.alterion_2023_2);
    obj.scrollBox2:setAlign("client");
    obj.scrollBox2:setName("scrollBox2");

    obj.rectangle25 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle25:setParent(obj.scrollBox2);
    obj.rectangle25:setWidth(1400);
    obj.rectangle25:setHeight(1300);
    obj.rectangle25:setColor("white");
    obj.rectangle25:setName("rectangle25");

    obj.layout40 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout40:setParent(obj.rectangle25);
    obj.layout40:setTop(5);
    obj.layout40:setHeight(70);
    obj.layout40:setWidth(800);
    obj.layout40:setName("layout40");

    obj.rectangle26 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle26:setParent(obj.layout40);
    obj.rectangle26:setAlign("left");
    obj.rectangle26:setWidth(76);
    obj.rectangle26:setHeight(70);
    obj.rectangle26:setColor("white");
    obj.rectangle26:setStrokeSize(1.0);
    obj.rectangle26:setName("rectangle26");

    obj.rectangle27 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle27:setParent(obj.layout40);
    obj.rectangle27:setAlign("left");
    obj.rectangle27:setWidth(76);
    obj.rectangle27:setHeight(70);
    obj.rectangle27:setColor("white");
    obj.rectangle27:setStrokeSize(1.0);
    obj.rectangle27:setName("rectangle27");

    obj.rectangle28 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle28:setParent(obj.layout40);
    obj.rectangle28:setAlign("left");
    obj.rectangle28:setWidth(76);
    obj.rectangle28:setHeight(70);
    obj.rectangle28:setColor("white");
    obj.rectangle28:setStrokeSize(1.0);
    obj.rectangle28:setName("rectangle28");

    obj.layout41 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout41:setParent(obj.rectangle25);
    obj.layout41:setTop(5);
    obj.layout41:setHeight(70);
    obj.layout41:setWidth(800);
    obj.layout41:setName("layout41");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout41);
    obj.label45:setAlign("left");
    obj.label45:setVertTextAlign("center");
    obj.label45:setText("FOR");
    obj.label45:setFontColor("#000000");
    obj.label45:setFontSize(18);
    obj.label45:setMargins({left = 5});
    obj.label45:setHeight(30);
    obj.label45:setWidth(35);
    obj.label45:setName("label45");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.layout41);
    obj.label46:setAlign("left");
    obj.label46:setVertTextAlign("center");
    obj.label46:setField("for2");
    obj.label46:setFontColor("#000000");
    obj.label46:setFontSize(18);
    obj.label46:setMargins({left = 1});
    obj.label46:setHeight(30);
    obj.label46:setWidth(35);
    obj.label46:setName("label46");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout41);
    obj.label47:setAlign("left");
    obj.label47:setVertTextAlign("center");
    obj.label47:setText("DES");
    obj.label47:setFontColor("#000000");
    obj.label47:setFontSize(18);
    obj.label47:setMargins({left = 5});
    obj.label47:setHeight(30);
    obj.label47:setWidth(35);
    obj.label47:setName("label47");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout41);
    obj.label48:setAlign("left");
    obj.label48:setVertTextAlign("center");
    obj.label48:setField("des");
    obj.label48:setFontColor("#000000");
    obj.label48:setFontSize(18);
    obj.label48:setMargins({left = 1});
    obj.label48:setHeight(30);
    obj.label48:setWidth(35);
    obj.label48:setName("label48");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout41);
    obj.label49:setAlign("left");
    obj.label49:setVertTextAlign("center");
    obj.label49:setText("INT");
    obj.label49:setFontColor("#000000");
    obj.label49:setFontSize(18);
    obj.label49:setMargins({left = 5});
    obj.label49:setHeight(30);
    obj.label49:setWidth(35);
    obj.label49:setName("label49");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.layout41);
    obj.label50:setAlign("left");
    obj.label50:setVertTextAlign("center");
    obj.label50:setField("int");
    obj.label50:setFontColor("#000000");
    obj.label50:setFontSize(18);
    obj.label50:setMargins({left = 1});
    obj.label50:setHeight(30);
    obj.label50:setWidth(35);
    obj.label50:setName("label50");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.rectangle25);
    obj.button3:setText("Calcular Pontos");
    obj.button3:setLeft(880);
    obj.button3:setTop(200);
    obj.button3:setHeight(30);
    obj.button3:setWidth(250);
    obj.button3:setFontColor("#000000");
    obj.button3:setName("button3");

    obj.layout42 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout42:setParent(obj.rectangle25);
    obj.layout42:setLeft(880);
    obj.layout42:setTop(5);
    obj.layout42:setHeight(30);
    obj.layout42:setWidth(300);
    obj.layout42:setName("layout42");

    obj.rectangle29 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle29:setParent(obj.layout42);
    obj.rectangle29:setAlign("left");
    obj.rectangle29:setWidth(250);
    obj.rectangle29:setHeight(30);
    obj.rectangle29:setColor("white");
    obj.rectangle29:setStrokeSize(1.0);
    obj.rectangle29:setName("rectangle29");

    obj.layout43 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout43:setParent(obj.rectangle25);
    obj.layout43:setLeft(880);
    obj.layout43:setTop(5);
    obj.layout43:setHeight(30);
    obj.layout43:setWidth(300);
    obj.layout43:setName("layout43");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.layout43);
    obj.label51:setAlign("left");
    obj.label51:setMargins({left = 5});
    obj.label51:setVertTextAlign("center");
    obj.label51:setWidth(140);
    obj.label51:setText("Pontos iniciais:");
    obj.label51:setFontColor("#000000");
    obj.label51:setFontSize(15);
    obj.label51:setName("label51");

    obj.edit21 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit21:setParent(obj.layout43);
    obj.edit21:setField("pt_iniciais");
    obj.edit21:setAlign("left");
    obj.edit21:setType("number");
    obj.edit21:setVertTextAlign("center");
    obj.edit21:setFontColor("#8000A0");
    obj.edit21:setFontSize(20);
    obj.edit21:setTransparent(true);
    obj.edit21:setName("edit21");

    obj.layout44 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout44:setParent(obj.rectangle25);
    obj.layout44:setLeft(880);
    obj.layout44:setTop(40);
    obj.layout44:setHeight(30);
    obj.layout44:setWidth(300);
    obj.layout44:setName("layout44");

    obj.rectangle30 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle30:setParent(obj.layout44);
    obj.rectangle30:setAlign("left");
    obj.rectangle30:setWidth(250);
    obj.rectangle30:setHeight(30);
    obj.rectangle30:setColor("white");
    obj.rectangle30:setStrokeSize(1.0);
    obj.rectangle30:setName("rectangle30");

    obj.layout45 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout45:setParent(obj.rectangle25);
    obj.layout45:setLeft(880);
    obj.layout45:setTop(40);
    obj.layout45:setHeight(30);
    obj.layout45:setWidth(300);
    obj.layout45:setName("layout45");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.layout45);
    obj.label52:setAlign("left");
    obj.label52:setMargins({left = 5});
    obj.label52:setVertTextAlign("center");
    obj.label52:setWidth(140);
    obj.label52:setText("Pontos ganhos:");
    obj.label52:setFontColor("#000000");
    obj.label52:setFontSize(15);
    obj.label52:setName("label52");

    obj.edit22 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit22:setParent(obj.layout45);
    obj.edit22:setField("pt_ganhos");
    obj.edit22:setAlign("left");
    obj.edit22:setVertTextAlign("center");
    obj.edit22:setType("number");
    obj.edit22:setFontColor("#8000A0");
    obj.edit22:setFontSize(20);
    obj.edit22:setTransparent(true);
    obj.edit22:setName("edit22");

    obj.layout46 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout46:setParent(obj.rectangle25);
    obj.layout46:setLeft(880);
    obj.layout46:setTop(80);
    obj.layout46:setHeight(30);
    obj.layout46:setWidth(300);
    obj.layout46:setName("layout46");

    obj.rectangle31 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle31:setParent(obj.layout46);
    obj.rectangle31:setAlign("left");
    obj.rectangle31:setWidth(250);
    obj.rectangle31:setHeight(30);
    obj.rectangle31:setColor("white");
    obj.rectangle31:setStrokeSize(1.0);
    obj.rectangle31:setName("rectangle31");

    obj.layout47 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout47:setParent(obj.rectangle25);
    obj.layout47:setLeft(880);
    obj.layout47:setTop(80);
    obj.layout47:setHeight(30);
    obj.layout47:setWidth(300);
    obj.layout47:setName("layout47");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.layout47);
    obj.label53:setAlign("left");
    obj.label53:setMargins({left = 5});
    obj.label53:setVertTextAlign("center");
    obj.label53:setWidth(140);
    obj.label53:setText("Pontos totais:");
    obj.label53:setFontColor("#000000");
    obj.label53:setFontSize(15);
    obj.label53:setName("label53");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.layout47);
    obj.label54:setField("pt_total");
    obj.label54:setAlign("left");
    obj.label54:setVertTextAlign("center");
    obj.label54:setFontColor("#FF0000");
    obj.label54:setFontSize(20);
    obj.label54:setName("label54");

    obj.layout48 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout48:setParent(obj.rectangle25);
    obj.layout48:setLeft(880);
    obj.layout48:setTop(120);
    obj.layout48:setHeight(30);
    obj.layout48:setWidth(300);
    obj.layout48:setName("layout48");

    obj.rectangle32 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle32:setParent(obj.layout48);
    obj.rectangle32:setAlign("left");
    obj.rectangle32:setWidth(250);
    obj.rectangle32:setHeight(30);
    obj.rectangle32:setColor("white");
    obj.rectangle32:setStrokeSize(1.0);
    obj.rectangle32:setName("rectangle32");

    obj.layout49 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout49:setParent(obj.rectangle25);
    obj.layout49:setLeft(880);
    obj.layout49:setTop(120);
    obj.layout49:setHeight(30);
    obj.layout49:setWidth(300);
    obj.layout49:setName("layout49");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.layout49);
    obj.label55:setAlign("left");
    obj.label55:setMargins({left = 5});
    obj.label55:setVertTextAlign("center");
    obj.label55:setWidth(140);
    obj.label55:setText("Total Gasto:");
    obj.label55:setFontColor("#000000");
    obj.label55:setFontSize(15);
    obj.label55:setName("label55");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.layout49);
    obj.label56:setField("totalGasto");
    obj.label56:setAlign("left");
    obj.label56:setVertTextAlign("center");
    obj.label56:setFontColor("#FF0000");
    obj.label56:setFontSize(20);
    obj.label56:setName("label56");

    obj.layout50 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout50:setParent(obj.rectangle25);
    obj.layout50:setLeft(880);
    obj.layout50:setTop(160);
    obj.layout50:setHeight(30);
    obj.layout50:setWidth(300);
    obj.layout50:setName("layout50");

    obj.rectangle33 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle33:setParent(obj.layout50);
    obj.rectangle33:setAlign("left");
    obj.rectangle33:setWidth(250);
    obj.rectangle33:setHeight(30);
    obj.rectangle33:setColor("white");
    obj.rectangle33:setStrokeSize(1.0);
    obj.rectangle33:setName("rectangle33");

    obj.layout51 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout51:setParent(obj.rectangle25);
    obj.layout51:setLeft(880);
    obj.layout51:setTop(160);
    obj.layout51:setHeight(30);
    obj.layout51:setWidth(300);
    obj.layout51:setName("layout51");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.layout51);
    obj.label57:setAlign("left");
    obj.label57:setMargins({left = 5});
    obj.label57:setVertTextAlign("center");
    obj.label57:setWidth(140);
    obj.label57:setText("Pontos a gastar:");
    obj.label57:setFontColor("#000000");
    obj.label57:setFontSize(15);
    obj.label57:setName("label57");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.layout51);
    obj.label58:setField("aGastar");
    obj.label58:setAlign("left");
    obj.label58:setVertTextAlign("center");
    obj.label58:setFontColor("#FF0000");
    obj.label58:setFontSize(20);
    obj.label58:setName("label58");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.rectangle25);
    obj.label59:setVisible(false);
    obj.label59:setField("packAlterion");
    obj.label59:setName("label59");
    obj.label59:setFontColor("black");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.rectangle25);
    obj.button4:setTop(100);
    obj.button4:setLeft(230);
    obj.button4:setText("PACK Gerais");
    obj.button4:setWidth(180);
    obj.button4:setHeight(30);
    obj.button4:setFontSize(18);
    obj.button4:setName("button4");
    obj.button4:setFontColor("black");

    obj.layout52 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout52:setParent(obj.rectangle25);
    obj.layout52:setTop(140);
    obj.layout52:setLeft(30);
    obj.layout52:setWidth(200);
    obj.layout52:setName("layout52");

    obj.rectangle34 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle34:setParent(obj.layout52);
    obj.rectangle34:setAlign("client");
    obj.rectangle34:setColor("white");
    obj.rectangle34:setStrokeSize(1.0);
    obj.rectangle34:setName("rectangle34");

    obj.layout53 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout53:setParent(obj.rectangle25);
    obj.layout53:setTop(140);
    obj.layout53:setLeft(30);
    obj.layout53:setWidth(200);
    obj.layout53:setName("layout53");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.layout53);
    obj.label60:setAlign("left");
    obj.label60:setHorzTextAlign("center");
    obj.label60:setVertTextAlign("center");
    obj.label60:setText("Pontos Totais (perícias):");
    obj.label60:setFontColor("#000000");
    obj.label60:setFontSize(16);
    obj.label60:setWidth(170);
    obj.label60:setName("label60");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.layout53);
    obj.label61:setAlign("left");
    obj.label61:setHorzTextAlign("center");
    obj.label61:setWidth(30);
    obj.label61:setField("custo_pericias");
    obj.label61:setFontColor("#FF0000");
    obj.label61:setFontSize(18);
    obj.label61:setName("label61");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.rectangle25);
    obj.button5:setTop(130);
    obj.button5:setLeft(570);
    obj.button5:setText("Ajustar Níveis Efetivos");
    obj.button5:setWidth(250);
    obj.button5:setHeight(30);
    obj.button5:setFontSize(18);
    obj.button5:setName("button5");
    obj.button5:setFontColor("black");

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.rectangle25);
    obj.label62:setVisible(false);
    obj.label62:setField("orderbyPericias");
    obj.label62:setName("label62");
    obj.label62:setFontColor("black");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.rectangle25);
    obj.button6:setTop(230);
    obj.button6:setLeft(130);
    obj.button6:setText("^");
    obj.button6:setWidth(20);
    obj.button6:setHeight(20);
    obj.button6:setFontSize(18);
    lfm_setPropAsString(obj.button6, "fontStyle",  "bold");
    obj.button6:setName("button6");
    obj.button6:setFontColor("black");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.rectangle25);
    obj.button7:setTop(200);
    obj.button7:setLeft(300);
    obj.button7:setText("^");
    obj.button7:setWidth(20);
    obj.button7:setHeight(20);
    obj.button7:setFontSize(18);
    lfm_setPropAsString(obj.button7, "fontStyle",  "bold");
    obj.button7:setName("button7");
    obj.button7:setFontColor("black");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.rectangle25);
    obj.button8:setTop(200);
    obj.button8:setLeft(370);
    obj.button8:setText("^");
    obj.button8:setWidth(20);
    obj.button8:setHeight(20);
    obj.button8:setFontSize(18);
    lfm_setPropAsString(obj.button8, "fontStyle",  "bold");
    obj.button8:setName("button8");
    obj.button8:setFontColor("black");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.rectangle25);
    obj.button9:setTop(200);
    obj.button9:setLeft(480);
    obj.button9:setText("^");
    obj.button9:setWidth(20);
    obj.button9:setHeight(20);
    obj.button9:setFontSize(18);
    lfm_setPropAsString(obj.button9, "fontStyle",  "bold");
    obj.button9:setName("button9");
    obj.button9:setFontColor("black");

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.rectangle25);
    obj.button10:setTop(200);
    obj.button10:setLeft(570);
    obj.button10:setText("^");
    obj.button10:setWidth(20);
    obj.button10:setHeight(20);
    obj.button10:setFontSize(18);
    lfm_setPropAsString(obj.button10, "fontStyle",  "bold");
    obj.button10:setName("button10");
    obj.button10:setFontColor("black");

    obj.layout54 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout54:setParent(obj.rectangle25);
    obj.layout54:setTop(200);
    obj.layout54:setHeight(600);
    obj.layout54:setWidth(1000);
    obj.layout54:setName("layout54");

    obj.layout55 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout55:setParent(obj.layout54);
    obj.layout55:setAlign("top");
    obj.layout55:setHeight(20);
    obj.layout55:setMargins({bottom=4 , left=5});
    obj.layout55:setName("layout55");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.layout55);
    obj.button11:setText("Nova Perícia");
    obj.button11:setWidth(100);
    obj.button11:setAlign("left");
    obj.button11:setName("button11");
    obj.button11:setFontColor("black");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.layout54);
    obj.label63:setAlign("top");
    obj.label63:setVertTextAlign("center");
    obj.label63:setText("Perícia                                        Atributo      Nível      mod   Nível Efetivo  Pontos  Página");
    obj.label63:setFontColor("#000000");
    obj.label63:setFontSize(16);
    obj.label63:setMargins({left = 50});
    obj.label63:setHeight(30);
    obj.label63:setWidth(900);
    obj.label63:setName("label63");

    obj.rclListaDosItens = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDosItens:setParent(obj.layout54);
    obj.rclListaDosItens:setName("rclListaDosItens");
    obj.rclListaDosItens:setField("campoDosItens");
    obj.rclListaDosItens:setTemplateForm("frmItemDaLista");
    obj.rclListaDosItens:setAlign("client");
    obj.rclListaDosItens:setSelectable(true);

    obj.tab3 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab3:setParent(obj.tabControl1);
    obj.tab3:setTitle("Equipamento");
    obj.tab3:setName("tab3");

    obj.alterion_2023_3 = GUI.fromHandle(_obj_newObject("form"));
    obj.alterion_2023_3:setParent(obj.tab3);
    obj.alterion_2023_3:setName("alterion_2023_3");
    obj.alterion_2023_3:setTheme("light");
    obj.alterion_2023_3:setAlign("client");


			
			
			
				 function self.calculaPeso()
					
					if sheet == nil then return end;
					
					if sheet.deslocamento == nil then sheet.deslocamento = 5 end;
					if sheet.base_carga == nil then sheet.base_carga = 10 end;
					if sheet.esquiva == nil then sheet.esquiva = 10 end;
					
					local objetos_armaCac = NDB.getChildNodes(sheet.campoArmasCaC);
		
					local pesoCaC = 0;
		
					for i=1, #objetos_armaCac, 1 do
						pesoCaC = pesoCaC + (tonumber(objetos_armaCac[i].arma_peso) or 0);
					end;
					
					
					local objetos_armaD_peso = NDB.getChildNodes(sheet.campoArmasD);
		
					local peso_armaD = 0;
		
					for i=1, #objetos_armaD_peso, 1 do
						peso_armaD = peso_armaD + (tonumber(objetos_armaD_peso[i].armaD_peso) or 0);
					end;
					
					
					local objetos_armaduras_peso = NDB.getChildNodes(sheet.campoArmaduras);
		
					local peso_armarmaduras = 0;
		
					for i=1, #objetos_armaduras_peso, 1 do
						peso_armarmaduras = peso_armarmaduras + (tonumber(objetos_armaduras_peso[i].armadura_peso) or 0);
					end;
					
					
					local objetos_possesMov_peso = NDB.getChildNodes(sheet.campoPossesMoveis);
		
					local peso_possesMov = 0;
		
					for i=1, #objetos_possesMov_peso, 1 do
						peso_possesMov = peso_possesMov + ((tonumber(objetos_possesMov_peso[i].posse_peso) or 0) * (tonumber(objetos_possesMov_peso[i].posse_qtd) or 0));
					end;
					
					
					
					local objetos_foraMochila_peso = NDB.getChildNodes(sheet.campoPossesMoveisFM);
		
					local peso_foraMochila = 0.000;
		
					for i=1, #objetos_foraMochila_peso, 1 do
						peso_foraMochila = peso_foraMochila + ((tonumber(objetos_foraMochila_peso[i].posse_peso) or 0) * (tonumber(objetos_foraMochila_peso[i].posse_qtd) or 0));
					end;
					
					
					
					sheet.peso_total = (pesoCaC or 0) + (peso_armaD or 0) + (peso_armarmaduras or 0) + (peso_possesMov or 0) + (peso_foraMochila or 0);
					
					
					sheet.deslocamento_atual = 0;
					sheet.deslocamento_atual = (tonumber(sheet.deslocamento) or 0);
					
					sheet.esquiva_atual = 3;
					sheet.esquiva_atual = (tonumber(sheet.esquiva) or 3);
					
					sheet.carga_Mochila = 'Leve (0)'					
					
					
					if(tonumber(sheet.peso_total) >= (tonumber(sheet.base_carga2) or 0)) and (tonumber(sheet.peso_total) < (tonumber(sheet.base_carga3) or 0))
					then
												
						sheet.carga_Mochila = 'Média (1)'
						sheet.deslocamento_atual = (tonumber(sheet.desloc08) or 1);	
						
					elseif(tonumber(sheet.peso_total) >= (tonumber(sheet.base_carga3))) and (tonumber(sheet.peso_total) < (tonumber(sheet.base_carga6) or 0))
						then
						sheet.deslocamento_atual = (tonumber(sheet.desloc06) or 1);						
							sheet.esquiva_atual = (tonumber(sheet.esquiva1) or 3);
							sheet.carga_Mochila = 'Pesada (2)'
												
					--[[
					elseif(tonumber(sheet.peso_total) >= (tonumber(sheet.base_carga6))) and (tonumber(sheet.peso_total) < (tonumber(sheet.base_carga10) or 0))
						then
						sheet.deslocamento_atual = (tonumber(sheet.desloc04) or 1);						
							sheet.esquiva_atual = (tonumber(sheet.esquiva2) or 3);	
							sheet.carga_Mochila = 'Pesada (3)'			
							
					
					elseif(tonumber(sheet.peso_total) >= (tonumber(sheet.base_carga6))) and (tonumber(sheet.peso_total) < (tonumber(sheet.base_carga10) or 0))
						then							
							sheet.deslocamento_atual = (tonumber(sheet.desloc04) or 1);
							sheet.esquiva_atual = (tonumber(sheet.esquiva3) or 3);	
							sheet.carga_Mochila = 'Muito Pesada (4)'
					]]--
					
					elseif(sheet.peso_total >= (tonumber(sheet.base_carga6)))
						then
							sheet.deslocamento_atual = (tonumber(sheet.deslocamento)-4 or 1);
							sheet.esquiva_atual = (tonumber(sheet.esquiva)-5 or 5);	
							sheet.carga_Mochila = '-1 Est/Seg.'
					
					end;
				
				
				
				
				
				
				
				--  =====================  SEM MOCHILA ================
				
				
				sheet.peso_total_sm = (tonumber(pesoCaC) or 0) + (tonumber(peso_armaD) or 0) + (tonumber(peso_armarmaduras) or 0) + (tonumber(peso_foraMochila) or 0);
					
					
					sheet.deslocamento_atual_sm = 0;
					sheet.deslocamento_atual_sm = (tonumber(sheet.deslocamento) or 0);
					
					sheet.esquiva_atual_sm = 3;
					sheet.esquiva_atual_sm = (tonumber(sheet.esquiva) or 3);
					sheet.carga_SemMochila = 'Leve (0)'
					
					if(tonumber(sheet.peso_total_sm) >= (tonumber(sheet.base_carga2) or 0)) and (tonumber(sheet.peso_total_sm) < (tonumber(sheet.base_carga3) or 0))
					then
											
						sheet.carga_SemMochila = 'Média (1)'
						sheet.deslocamento_atual_sm = (tonumber(sheet.desloc08) or 1);								
						sheet.esquiva_atual_sm = (tonumber(sheet.esquiva1) or 3);
						
					elseif(tonumber(sheet.peso_total_sm) >= (tonumber(sheet.base_carga3))) and (tonumber(sheet.peso_total_sm) < (tonumber(sheet.base_carga6) or 0))
						then
						sheet.deslocamento_atual_sm = (tonumber(sheet.desloc06) or 1);							
						sheet.esquiva_atual_sm = (tonumber(sheet.esquiva2) or 3);
							sheet.carga_SemMochila = 'Pesada (2)'
					
					--[[
					elseif(tonumber(sheet.peso_total_sm) >= (tonumber(sheet.base_carga3))) and (tonumber(sheet.peso_total_sm) < (tonumber(sheet.base_carga6) or 0))
						then
						sheet.deslocamento_atual_sm = (tonumber(sheet.desloc04) or 1);
						sheet.esquiva_atual_sm = (tonumber(sheet.esquiva3) or 3);
							sheet.carga_SemMochila = 'Pesada (3)'
							
							
					elseif(tonumber(sheet.peso_total_sm) >= (tonumber(sheet.base_carga6))) and (tonumber(sheet.peso_total_sm) < (tonumber(sheet.base_carga10) or 0))
						then
							sheet.deslocamento_atual_sm = (tonumber(sheet.desloc02) or 1);
							sheet.esquiva_atual_sm = (tonumber(sheet.esquiva4) or 3);
							sheet.carga_SemMochila = 'Muito Pesada (4)'		
					]]--		
					
					elseif(tonumber(sheet.peso_total_sm) >= (tonumber(sheet.base_carga6)))
						then
							sheet.deslocamento_atual_sm = (tonumber(sheet.deslocamento)-4 or 1);
							sheet.esquiva_atual_sm = (tonumber(sheet.esquiva)-5 or 5);
							sheet.carga_SemMochila = '-1 Est/Seg.'
					
					end;
				
				
				
				-- ================== FIM SEM MOCHILA =====================
				sheet.conteudoMochila = tonumber(sheet.peso_total) - tonumber(sheet.peso_total_sm)
				sheet.capRestante = (tonumber(sheet.cap_mochila) or 0) - tonumber(sheet.conteudoMochila)
				
				end;
				
				
				
				
				
				
				
				function self.calculaCusto()
				
				if sheet == nil then return end;
				
				local objetos_armaCusto = NDB.getChildNodes(sheet.campoArmasCaC);
		
					local armaCusto = 0;
		
					for i=1, #objetos_armaCusto, 1 do
						armaCusto = armaCusto + (tonumber(objetos_armaCusto[i].arma_custo) or 0);
					end;
					
				
				local objetos_armaD_Custo = NDB.getChildNodes(sheet.campoArmasD);
		
					local armaDist_Custo = 0;
		
					for i=1, #objetos_armaD_Custo, 1 do
						armaDist_Custo = armaDist_Custo + (tonumber(objetos_armaD_Custo[i].armaD_custo) or 0);
					end;
					
				
				
				local objetos_armaduras_Custo = NDB.getChildNodes(sheet.campoArmaduras);
		
					local armaduras_custo = 0;
		
					for i=1, #objetos_armaduras_Custo, 1 do
						armaduras_custo = armaduras_custo + (tonumber(objetos_armaduras_Custo[i].armadura_custo) or 0);
					end;
					
					
					
					
				local objetos_possesMov_Custo = NDB.getChildNodes(sheet.campoPossesMoveis);
		
					local possesMov_custo = 0;
		
					for i=1, #objetos_possesMov_Custo, 1 do
						possesMov_custo = possesMov_custo + ((tonumber(objetos_possesMov_Custo[i].posse_custo) or 0) *  (tonumber(objetos_possesMov_Custo[i].posse_qtd) or 0));
					end;
					
					
					local objetos_outras_posses = NDB.getChildNodes(sheet.campoOutrasPosses);
		
					local outras_posses_custo = 0;
		
					for i=1, #objetos_outras_posses, 1 do
						outras_posses_custo = outras_posses_custo + (tonumber(objetos_outras_posses[i].posse_custo) or 0);
					end;
					
					
					
					
					
					
					
					local objetos_possesFM_Custo = NDB.getChildNodes(sheet.campoPossesMoveisFM);
		
					local possesFM_custo = 0;
		
					for i=1, #objetos_possesFM_Custo, 1 do
						possesFM_custo = possesFM_custo + ((tonumber(objetos_possesFM_Custo[i].posse_custo) or 0) *  (tonumber(objetos_possesFM_Custo[i].posse_qtd) or 0));
					end;
					
				
					
				sheet.custo_total = armaCusto + armaDist_Custo + armaduras_custo + possesMov_custo + outras_posses_custo + possesFM_custo;
				
				end;
				
				
				
			


    obj.scrollBox3 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox3:setParent(obj.alterion_2023_3);
    obj.scrollBox3:setAlign("client");
    obj.scrollBox3:setName("scrollBox3");

    obj.rectangle35 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle35:setParent(obj.scrollBox3);
    obj.rectangle35:setWidth(1400);
    obj.rectangle35:setHeight(2500);
    obj.rectangle35:setColor("white");
    obj.rectangle35:setName("rectangle35");

    obj.layout56 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout56:setParent(obj.rectangle35);
    obj.layout56:setTop(5);
    obj.layout56:setHeight(80);
    obj.layout56:setWidth(1300);
    obj.layout56:setLeft(5);
    obj.layout56:setName("layout56");

    obj.rectangle36 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle36:setParent(obj.layout56);
    obj.rectangle36:setLeft(0);
    obj.rectangle36:setColor("white");
    obj.rectangle36:setStrokeSize(1.0);
    obj.rectangle36:setHeight(80);
    obj.rectangle36:setWidth(220);
    obj.rectangle36:setName("rectangle36");

    obj.rectangle37 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle37:setParent(obj.layout56);
    obj.rectangle37:setLeft(223);
    obj.rectangle37:setColor("white");
    obj.rectangle37:setStrokeSize(1.0);
    obj.rectangle37:setHeight(80);
    obj.rectangle37:setWidth(225);
    obj.rectangle37:setName("rectangle37");

    obj.rectangle38 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle38:setParent(obj.layout56);
    obj.rectangle38:setLeft(451);
    obj.rectangle38:setColor("white");
    obj.rectangle38:setStrokeSize(1.0);
    obj.rectangle38:setHeight(80);
    obj.rectangle38:setWidth(215);
    obj.rectangle38:setName("rectangle38");

    obj.rectangle39 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle39:setParent(obj.layout56);
    obj.rectangle39:setLeft(670);
    obj.rectangle39:setColor("white");
    obj.rectangle39:setStrokeSize(1.0);
    obj.rectangle39:setHeight(80);
    obj.rectangle39:setWidth(300);
    obj.rectangle39:setName("rectangle39");

    obj.rectangle40 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle40:setParent(obj.layout56);
    obj.rectangle40:setLeft(670);
    obj.rectangle40:setColor("white");
    obj.rectangle40:setStrokeSize(1.0);
    obj.rectangle40:setHeight(80);
    obj.rectangle40:setWidth(150);
    obj.rectangle40:setName("rectangle40");

    obj.rectangle41 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle41:setParent(obj.layout56);
    obj.rectangle41:setLeft(980);
    obj.rectangle41:setColor("white");
    obj.rectangle41:setStrokeSize(1.0);
    obj.rectangle41:setHeight(80);
    obj.rectangle41:setWidth(300);
    obj.rectangle41:setName("rectangle41");

    obj.rectangle42 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle42:setParent(obj.layout56);
    obj.rectangle42:setLeft(980);
    obj.rectangle42:setColor("white");
    obj.rectangle42:setStrokeSize(1.0);
    obj.rectangle42:setHeight(80);
    obj.rectangle42:setWidth(150);
    obj.rectangle42:setName("rectangle42");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.layout56);
    obj.label64:setAlign("left");
    obj.label64:setVertTextAlign("center");
    obj.label64:setHorzTextAlign("center");
    obj.label64:setText("Peso Total: ");
    obj.label64:setWidth(100);
    obj.label64:setFontSize(14);
    obj.label64:setMargins({left = 2});
    obj.label64:setFontColor("#000000");
    obj.label64:setName("label64");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.layout56);
    obj.label65:setAlign("left");
    obj.label65:setVertTextAlign("center");
    obj.label65:setHorzTextAlign("leading");
    obj.label65:setField("peso_total");
    obj.label65:setWidth(120);
    obj.label65:setFontSize(18);
    obj.label65:setMargins({left = 2});
    obj.label65:setFontColor("#00B0B0");
    obj.label65:setName("label65");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.layout56);
    obj.label66:setAlign("left");
    obj.label66:setVertTextAlign("center");
    obj.label66:setHorzTextAlign("center");
    obj.label66:setText("Peso Total Sem Mochila: ");
    obj.label66:setWidth(100);
    obj.label66:setFontSize(14);
    obj.label66:setMargins({left = 2});
    obj.label66:setFontColor("#000000");
    obj.label66:setName("label66");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.layout56);
    obj.label67:setAlign("left");
    obj.label67:setVertTextAlign("center");
    obj.label67:setHorzTextAlign("leading");
    obj.label67:setField("peso_total_sm");
    obj.label67:setWidth(120);
    obj.label67:setFontSize(18);
    obj.label67:setMargins({left = 4});
    obj.label67:setFontColor("#00B0B0");
    obj.label67:setName("label67");

    obj.label68 = GUI.fromHandle(_obj_newObject("label"));
    obj.label68:setParent(obj.layout56);
    obj.label68:setAlign("left");
    obj.label68:setVertTextAlign("center");
    obj.label68:setHorzTextAlign("center");
    obj.label68:setText("Custo Total $: ");
    obj.label68:setWidth(100);
    obj.label68:setFontSize(14);
    obj.label68:setMargins({left = 2});
    obj.label68:setFontColor("#000000");
    obj.label68:setName("label68");

    obj.label69 = GUI.fromHandle(_obj_newObject("label"));
    obj.label69:setParent(obj.layout56);
    obj.label69:setAlign("left");
    obj.label69:setVertTextAlign("center");
    obj.label69:setHorzTextAlign("leading");
    obj.label69:setField("custo_total");
    obj.label69:setWidth(120);
    obj.label69:setFontSize(18);
    obj.label69:setMargins({left = 2});
    obj.label69:setFontColor("#A0A000");
    obj.label69:setName("label69");

    obj.label70 = GUI.fromHandle(_obj_newObject("label"));
    obj.label70:setParent(obj.layout56);
    obj.label70:setAlign("left");
    obj.label70:setVertTextAlign("center");
    obj.label70:setHorzTextAlign("center");
    obj.label70:setText("Deslocamento c/ mochila: ");
    obj.label70:setWidth(100);
    obj.label70:setFontSize(14);
    obj.label70:setMargins({left = 2});
    obj.label70:setFontColor("#000000");
    obj.label70:setName("label70");

    obj.label71 = GUI.fromHandle(_obj_newObject("label"));
    obj.label71:setParent(obj.layout56);
    obj.label71:setAlign("left");
    obj.label71:setVertTextAlign("center");
    obj.label71:setHorzTextAlign("center");
    obj.label71:setField("deslocamento_atual");
    obj.label71:setWidth(50);
    obj.label71:setFontSize(25);
    obj.label71:setMargins({left = 2});
    obj.label71:setFontColor("#00CC00");
    obj.label71:setName("label71");

    obj.label72 = GUI.fromHandle(_obj_newObject("label"));
    obj.label72:setParent(obj.layout56);
    obj.label72:setAlign("left");
    obj.label72:setVertTextAlign("center");
    obj.label72:setHorzTextAlign("center");
    obj.label72:setText("Defesa c/ mochila: ");
    obj.label72:setWidth(70);
    obj.label72:setFontSize(14);
    obj.label72:setMargins({left = 20});
    obj.label72:setFontColor("#000000");
    obj.label72:setName("label72");

    obj.label73 = GUI.fromHandle(_obj_newObject("label"));
    obj.label73:setParent(obj.layout56);
    obj.label73:setAlign("left");
    obj.label73:setVertTextAlign("center");
    obj.label73:setHorzTextAlign("center");
    obj.label73:setField("esquiva_atual");
    obj.label73:setWidth(60);
    obj.label73:setFontSize(25);
    obj.label73:setMargins({left = 2});
    obj.label73:setFontColor("#00CC00");
    obj.label73:setName("label73");

    obj.label74 = GUI.fromHandle(_obj_newObject("label"));
    obj.label74:setParent(obj.layout56);
    obj.label74:setAlign("left");
    obj.label74:setVertTextAlign("center");
    obj.label74:setHorzTextAlign("center");
    obj.label74:setText("Deslocamento sem mochila: ");
    obj.label74:setWidth(100);
    obj.label74:setFontSize(14);
    obj.label74:setMargins({left = 2});
    obj.label74:setFontColor("#000000");
    obj.label74:setName("label74");

    obj.label75 = GUI.fromHandle(_obj_newObject("label"));
    obj.label75:setParent(obj.layout56);
    obj.label75:setAlign("left");
    obj.label75:setVertTextAlign("center");
    obj.label75:setHorzTextAlign("center");
    obj.label75:setField("deslocamento_atual_sm");
    obj.label75:setWidth(50);
    obj.label75:setFontSize(25);
    obj.label75:setMargins({left = 2});
    obj.label75:setFontColor("#00CC00");
    obj.label75:setName("label75");

    obj.label76 = GUI.fromHandle(_obj_newObject("label"));
    obj.label76:setParent(obj.layout56);
    obj.label76:setAlign("left");
    obj.label76:setVertTextAlign("center");
    obj.label76:setHorzTextAlign("center");
    obj.label76:setText("Defesa sem mochila: ");
    obj.label76:setWidth(70);
    obj.label76:setFontSize(14);
    obj.label76:setMargins({left = 20});
    obj.label76:setFontColor("#000000");
    obj.label76:setName("label76");

    obj.label77 = GUI.fromHandle(_obj_newObject("label"));
    obj.label77:setParent(obj.layout56);
    obj.label77:setAlign("left");
    obj.label77:setVertTextAlign("center");
    obj.label77:setHorzTextAlign("center");
    obj.label77:setField("esquiva_atual_sm");
    obj.label77:setWidth(60);
    obj.label77:setFontSize(25);
    obj.label77:setMargins({left = 2});
    obj.label77:setFontColor("#00CC00");
    obj.label77:setName("label77");

    obj.layout57 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout57:setParent(obj.rectangle35);
    obj.layout57:setTop(55);
    obj.layout57:setHeight(26);
    obj.layout57:setWidth(1300);
    obj.layout57:setLeft(5);
    obj.layout57:setName("layout57");

    obj.label78 = GUI.fromHandle(_obj_newObject("label"));
    obj.label78:setParent(obj.layout57);
    obj.label78:setLeft(105);
    obj.label78:setVertTextAlign("center");
    obj.label78:setField("carga_Mochila");
    obj.label78:setWidth(200);
    obj.label78:setHeight(25);
    obj.label78:setFontSize(18);
    obj.label78:setFontColor("#DD0000");
    obj.label78:setName("label78");

    obj.label79 = GUI.fromHandle(_obj_newObject("label"));
    obj.label79:setParent(obj.layout57);
    obj.label79:setLeft(335);
    obj.label79:setVertTextAlign("center");
    obj.label79:setField("carga_SemMochila");
    obj.label79:setWidth(200);
    obj.label79:setHeight(25);
    obj.label79:setFontSize(18);
    obj.label79:setFontColor("#DD0000");
    obj.label79:setName("label79");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.rectangle35);
    obj.button12:setTop(400);
    obj.button12:setLeft(1185);
    obj.button12:setWordWrap(true);
    obj.button12:setText("CALCULAR PESO E CUSTO");
    obj.button12:setWidth(200);
    obj.button12:setHeight(105);
    obj.button12:setFontSize(18);
    obj.button12:setFontColor("#FF5050");
    lfm_setPropAsString(obj.button12, "fontStyle",  "bold");
    obj.button12:setName("button12");

    obj.label80 = GUI.fromHandle(_obj_newObject("label"));
    obj.label80:setParent(obj.rectangle35);
    obj.label80:setTop(1000);
    obj.label80:setLeft(1185);
    obj.label80:setVertTextAlign("center");
    obj.label80:setText("Cap. da Mochila:");
    obj.label80:setWidth(150);
    obj.label80:setHeight(25);
    obj.label80:setFontSize(14);
    obj.label80:setFontColor("#000000");
    obj.label80:setName("label80");

    obj.edit23 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit23:setParent(obj.rectangle35);
    obj.edit23:setTop(1000);
    obj.edit23:setLeft(1300);
    obj.edit23:setVertTextAlign("center");
    obj.edit23:setHorzTextAlign("center");
    obj.edit23:setField("cap_mochila");
    obj.edit23:setWidth(50);
    obj.edit23:setHeight(25);
    obj.edit23:setType("float");
    obj.edit23:setFontSize(14);
    obj.edit23:setFontColor("#000000");
    obj.edit23:setName("edit23");

    obj.label81 = GUI.fromHandle(_obj_newObject("label"));
    obj.label81:setParent(obj.rectangle35);
    obj.label81:setTop(1030);
    obj.label81:setLeft(1185);
    obj.label81:setVertTextAlign("center");
    obj.label81:setText("Peso da mochila:");
    obj.label81:setWidth(150);
    obj.label81:setHeight(25);
    obj.label81:setFontSize(14);
    obj.label81:setFontColor("#000000");
    obj.label81:setName("label81");

    obj.label82 = GUI.fromHandle(_obj_newObject("label"));
    obj.label82:setParent(obj.rectangle35);
    obj.label82:setTop(1030);
    obj.label82:setLeft(1300);
    obj.label82:setVertTextAlign("center");
    obj.label82:setField("conteudoMochila");
    obj.label82:setWidth(50);
    obj.label82:setHeight(25);
    obj.label82:setFontSize(14);
    obj.label82:setFontColor("#000000");
    obj.label82:setName("label82");

    obj.label83 = GUI.fromHandle(_obj_newObject("label"));
    obj.label83:setParent(obj.rectangle35);
    obj.label83:setTop(1060);
    obj.label83:setLeft(1185);
    obj.label83:setVertTextAlign("center");
    obj.label83:setText("Cap. Restante:");
    obj.label83:setWidth(150);
    obj.label83:setHeight(25);
    obj.label83:setFontSize(14);
    obj.label83:setFontColor("#000000");
    obj.label83:setName("label83");

    obj.label84 = GUI.fromHandle(_obj_newObject("label"));
    obj.label84:setParent(obj.rectangle35);
    obj.label84:setTop(1060);
    obj.label84:setLeft(1300);
    obj.label84:setVertTextAlign("center");
    obj.label84:setField("capRestante");
    obj.label84:setWidth(50);
    obj.label84:setHeight(25);
    obj.label84:setFontSize(14);
    obj.label84:setFontColor("#060");
    lfm_setPropAsString(obj.label84, "fontStyle",  "bold");
    obj.label84:setName("label84");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.rectangle35);
    obj.button13:setTop(1100);
    obj.button13:setLeft(1185);
    obj.button13:setWordWrap(true);
    obj.button13:setText("Pack Iniciais");
    obj.button13:setWidth(200);
    obj.button13:setHeight(50);
    obj.button13:setFontSize(18);
    obj.button13:setFontColor("#000000");
    lfm_setPropAsString(obj.button13, "fontStyle",  "bold");
    obj.button13:setName("button13");

    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.rectangle35);
    obj.button14:setTop(1200);
    obj.button14:setLeft(1185);
    obj.button14:setWordWrap(true);
    obj.button14:setText("CALCULAR PESO E CUSTO");
    obj.button14:setWidth(200);
    obj.button14:setHeight(105);
    obj.button14:setFontSize(18);
    obj.button14:setFontColor("#FF5050");
    lfm_setPropAsString(obj.button14, "fontStyle",  "bold");
    obj.button14:setName("button14");

    obj.label85 = GUI.fromHandle(_obj_newObject("label"));
    obj.label85:setParent(obj.rectangle35);
    obj.label85:setTop(100);
    obj.label85:setLeft(250);
    obj.label85:setVertTextAlign("center");
    obj.label85:setText("ARMAS");
    obj.label85:setFontColor("#000000");
    obj.label85:setFontSize(18);
    obj.label85:setMargins({left = 50});
    obj.label85:setHeight(30);
    obj.label85:setWidth(800);
    obj.label85:setName("label85");

    obj.layout58 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout58:setParent(obj.rectangle35);
    obj.layout58:setTop(130);
    obj.layout58:setHeight(200);
    obj.layout58:setWidth(1100);
    obj.layout58:setLeft(5);
    obj.layout58:setName("layout58");

    obj.layout59 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout59:setParent(obj.layout58);
    obj.layout59:setAlign("top");
    obj.layout59:setHeight(40);
    obj.layout59:setMargins({bottom=4 , left=5});
    obj.layout59:setName("layout59");

    obj.button15 = GUI.fromHandle(_obj_newObject("button"));
    obj.button15:setParent(obj.layout59);
    obj.button15:setText("+");
    obj.button15:setWidth(40);
    obj.button15:setAlign("left");
    obj.button15:setFontSize(25);
    obj.button15:setName("button15");
    obj.button15:setFontColor("black");

    obj.rclListaArmasCaC = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaArmasCaC:setParent(obj.layout58);
    obj.rclListaArmasCaC:setName("rclListaArmasCaC");
    obj.rclListaArmasCaC:setField("campoArmasCaC");
    obj.rclListaArmasCaC:setTemplateForm("frmArmaCaC");
    obj.rclListaArmasCaC:setAlign("client");
    obj.rclListaArmasCaC:setSelectable(true);
    obj.rclListaArmasCaC:setHitTest(true);

    obj.layout60 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout60:setParent(obj.rectangle35);
    obj.layout60:setTop(140);
    obj.layout60:setHeight(20);
    obj.layout60:setWidth(1100);
    obj.layout60:setLeft(35);
    obj.layout60:setName("layout60");

    obj.label86 = GUI.fromHandle(_obj_newObject("label"));
    obj.label86:setParent(obj.layout60);
    obj.label86:setAlign("left");
    obj.label86:setVertTextAlign("center");
    obj.label86:setHorzTextAlign("center");
    obj.label86:setText("Nome");
    obj.label86:setWidth(190);
    obj.label86:setFontSize(14);
    obj.label86:setMargins({left = 2});
    obj.label86:setFontColor("#000000");
    obj.label86:setName("label86");

    obj.label87 = GUI.fromHandle(_obj_newObject("label"));
    obj.label87:setParent(obj.layout60);
    obj.label87:setAlign("left");
    obj.label87:setVertTextAlign("center");
    obj.label87:setHorzTextAlign("center");
    obj.label87:setText("Dano");
    obj.label87:setWidth(170);
    obj.label87:setFontSize(14);
    obj.label87:setMargins({left = 2});
    obj.label87:setFontColor("#000000");
    obj.label87:setName("label87");

    obj.label88 = GUI.fromHandle(_obj_newObject("label"));
    obj.label88:setParent(obj.layout60);
    obj.label88:setAlign("left");
    obj.label88:setVertTextAlign("center");
    obj.label88:setHorzTextAlign("center");
    obj.label88:setText("Tipo");
    obj.label88:setWidth(70);
    obj.label88:setFontSize(14);
    obj.label88:setMargins({left = 2});
    obj.label88:setFontColor("#000000");
    obj.label88:setName("label88");

    obj.label89 = GUI.fromHandle(_obj_newObject("label"));
    obj.label89:setParent(obj.layout60);
    obj.label89:setAlign("left");
    obj.label89:setVertTextAlign("center");
    obj.label89:setHorzTextAlign("center");
    obj.label89:setText("Alcance");
    obj.label89:setWidth(60);
    obj.label89:setFontSize(14);
    obj.label89:setMargins({left = 2});
    obj.label89:setFontColor("#000000");
    obj.label89:setName("label89");

    obj.label90 = GUI.fromHandle(_obj_newObject("label"));
    obj.label90:setParent(obj.layout60);
    obj.label90:setAlign("left");
    obj.label90:setVertTextAlign("center");
    obj.label90:setHorzTextAlign("center");
    obj.label90:setText("Custo $");
    obj.label90:setWidth(100);
    obj.label90:setFontSize(14);
    obj.label90:setMargins({left = 2});
    obj.label90:setFontColor("#000000");
    obj.label90:setName("label90");

    obj.label91 = GUI.fromHandle(_obj_newObject("label"));
    obj.label91:setParent(obj.layout60);
    obj.label91:setAlign("left");
    obj.label91:setVertTextAlign("center");
    obj.label91:setHorzTextAlign("center");
    obj.label91:setText("Peso");
    obj.label91:setWidth(100);
    obj.label91:setFontSize(14);
    obj.label91:setMargins({left = 2});
    obj.label91:setFontColor("#000000");
    obj.label91:setName("label91");

    obj.label92 = GUI.fromHandle(_obj_newObject("label"));
    obj.label92:setParent(obj.layout60);
    obj.label92:setAlign("left");
    obj.label92:setVertTextAlign("center");
    obj.label92:setHorzTextAlign("center");
    obj.label92:setText("FOR");
    obj.label92:setWidth(70);
    obj.label92:setFontSize(14);
    obj.label92:setMargins({left = 2});
    obj.label92:setFontColor("#000000");
    obj.label92:setName("label92");

    obj.label93 = GUI.fromHandle(_obj_newObject("label"));
    obj.label93:setParent(obj.layout60);
    obj.label93:setAlign("left");
    obj.label93:setVertTextAlign("center");
    obj.label93:setHorzTextAlign("center");
    obj.label93:setText("Notas");
    obj.label93:setWidth(230);
    obj.label93:setFontSize(14);
    obj.label93:setMargins({left = 2});
    obj.label93:setFontColor("#000000");
    obj.label93:setName("label93");

    obj.label94 = GUI.fromHandle(_obj_newObject("label"));
    obj.label94:setParent(obj.rectangle35);
    obj.label94:setTop(610);
    obj.label94:setLeft(200);
    obj.label94:setVertTextAlign("center");
    obj.label94:setText("Armaduras");
    obj.label94:setFontColor("#000000");
    obj.label94:setFontSize(18);
    obj.label94:setMargins({left = 50});
    obj.label94:setHeight(30);
    obj.label94:setWidth(800);
    obj.label94:setName("label94");

    obj.layout61 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout61:setParent(obj.rectangle35);
    obj.layout61:setTop(650);
    obj.layout61:setHeight(200);
    obj.layout61:setWidth(1160);
    obj.layout61:setLeft(5);
    obj.layout61:setName("layout61");

    obj.layout62 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout62:setParent(obj.layout61);
    obj.layout62:setAlign("top");
    obj.layout62:setHeight(40);
    obj.layout62:setMargins({bottom=4 , left=5});
    obj.layout62:setName("layout62");

    obj.button16 = GUI.fromHandle(_obj_newObject("button"));
    obj.button16:setParent(obj.layout62);
    obj.button16:setText("+");
    obj.button16:setWidth(40);
    obj.button16:setAlign("left");
    obj.button16:setFontSize(25);
    obj.button16:setName("button16");
    obj.button16:setFontColor("black");

    obj.rclListaArmaduras = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaArmaduras:setParent(obj.layout61);
    obj.rclListaArmaduras:setName("rclListaArmaduras");
    obj.rclListaArmaduras:setField("campoArmaduras");
    obj.rclListaArmaduras:setTemplateForm("frmArmadura");
    obj.rclListaArmaduras:setAlign("client");
    obj.rclListaArmaduras:setSelectable(true);

    obj.layout63 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout63:setParent(obj.rectangle35);
    obj.layout63:setTop(660);
    obj.layout63:setHeight(20);
    obj.layout63:setWidth(1100);
    obj.layout63:setLeft(35);
    obj.layout63:setName("layout63");

    obj.label95 = GUI.fromHandle(_obj_newObject("label"));
    obj.label95:setParent(obj.layout63);
    obj.label95:setAlign("left");
    obj.label95:setVertTextAlign("center");
    obj.label95:setHorzTextAlign("center");
    obj.label95:setText("Armadura");
    obj.label95:setWidth(200);
    obj.label95:setFontSize(14);
    obj.label95:setMargins({left = 2});
    obj.label95:setFontColor("#000000");
    obj.label95:setName("label95");

    obj.label96 = GUI.fromHandle(_obj_newObject("label"));
    obj.label96:setParent(obj.layout63);
    obj.label96:setAlign("left");
    obj.label96:setVertTextAlign("center");
    obj.label96:setHorzTextAlign("center");
    obj.label96:setText("PVs");
    obj.label96:setWidth(50);
    obj.label96:setFontSize(14);
    obj.label96:setMargins({left = 2});
    obj.label96:setFontColor("#000000");
    obj.label96:setName("label96");

    obj.label97 = GUI.fromHandle(_obj_newObject("label"));
    obj.label97:setParent(obj.layout63);
    obj.label97:setAlign("left");
    obj.label97:setVertTextAlign("center");
    obj.label97:setHorzTextAlign("center");
    obj.label97:setText("Custo $");
    obj.label97:setWidth(100);
    obj.label97:setFontSize(14);
    obj.label97:setMargins({left = 2});
    obj.label97:setFontColor("#000000");
    obj.label97:setName("label97");

    obj.label98 = GUI.fromHandle(_obj_newObject("label"));
    obj.label98:setParent(obj.layout63);
    obj.label98:setAlign("left");
    obj.label98:setVertTextAlign("center");
    obj.label98:setHorzTextAlign("center");
    obj.label98:setText("Peso");
    obj.label98:setWidth(80);
    obj.label98:setFontSize(14);
    obj.label98:setMargins({left = 2});
    obj.label98:setFontColor("#000000");
    obj.label98:setName("label98");

    obj.layout64 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout64:setParent(obj.rectangle35);
    obj.layout64:setTop(875);
    obj.layout64:setHeight(80);
    obj.layout64:setWidth(1300);
    obj.layout64:setLeft(5);
    obj.layout64:setName("layout64");

    obj.rectangle43 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle43:setParent(obj.layout64);
    obj.rectangle43:setColor("white");
    obj.rectangle43:setStrokeSize(1.0);
    obj.rectangle43:setHeight(80);
    obj.rectangle43:setWidth(1100);
    obj.rectangle43:setName("rectangle43");

    obj.rectangle44 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle44:setParent(obj.layout64);
    obj.rectangle44:setLeft(670);
    obj.rectangle44:setColor("white");
    obj.rectangle44:setStrokeSize(1.0);
    obj.rectangle44:setHeight(80);
    obj.rectangle44:setWidth(300);
    obj.rectangle44:setName("rectangle44");

    obj.rectangle45 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle45:setParent(obj.layout64);
    obj.rectangle45:setLeft(670);
    obj.rectangle45:setColor("white");
    obj.rectangle45:setStrokeSize(1.0);
    obj.rectangle45:setHeight(80);
    obj.rectangle45:setWidth(150);
    obj.rectangle45:setName("rectangle45");

    obj.rectangle46 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle46:setParent(obj.layout64);
    obj.rectangle46:setLeft(980);
    obj.rectangle46:setColor("white");
    obj.rectangle46:setStrokeSize(1.0);
    obj.rectangle46:setHeight(80);
    obj.rectangle46:setWidth(300);
    obj.rectangle46:setName("rectangle46");

    obj.rectangle47 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle47:setParent(obj.layout64);
    obj.rectangle47:setLeft(980);
    obj.rectangle47:setColor("white");
    obj.rectangle47:setStrokeSize(1.0);
    obj.rectangle47:setHeight(80);
    obj.rectangle47:setWidth(150);
    obj.rectangle47:setName("rectangle47");

    obj.label99 = GUI.fromHandle(_obj_newObject("label"));
    obj.label99:setParent(obj.layout64);
    obj.label99:setAlign("left");
    obj.label99:setVertTextAlign("center");
    obj.label99:setHorzTextAlign("center");
    obj.label99:setText("Peso Total: ");
    obj.label99:setWidth(100);
    obj.label99:setFontSize(14);
    obj.label99:setMargins({left = 2});
    obj.label99:setFontColor("#000000");
    obj.label99:setName("label99");

    obj.label100 = GUI.fromHandle(_obj_newObject("label"));
    obj.label100:setParent(obj.layout64);
    obj.label100:setAlign("left");
    obj.label100:setVertTextAlign("center");
    obj.label100:setHorzTextAlign("center");
    obj.label100:setField("peso_total");
    obj.label100:setWidth(120);
    obj.label100:setFontSize(18);
    obj.label100:setMargins({left = 2});
    obj.label100:setFontColor("#005050");
    obj.label100:setName("label100");

    obj.label101 = GUI.fromHandle(_obj_newObject("label"));
    obj.label101:setParent(obj.layout64);
    obj.label101:setAlign("left");
    obj.label101:setVertTextAlign("center");
    obj.label101:setHorzTextAlign("center");
    obj.label101:setText("Peso Total Sem Mochila: ");
    obj.label101:setWidth(100);
    obj.label101:setFontSize(14);
    obj.label101:setMargins({left = 2});
    obj.label101:setFontColor("#000000");
    obj.label101:setName("label101");

    obj.label102 = GUI.fromHandle(_obj_newObject("label"));
    obj.label102:setParent(obj.layout64);
    obj.label102:setAlign("left");
    obj.label102:setVertTextAlign("center");
    obj.label102:setHorzTextAlign("center");
    obj.label102:setField("peso_total_sm");
    obj.label102:setWidth(120);
    obj.label102:setFontSize(18);
    obj.label102:setMargins({left = 2});
    obj.label102:setFontColor("#005050");
    obj.label102:setName("label102");

    obj.label103 = GUI.fromHandle(_obj_newObject("label"));
    obj.label103:setParent(obj.layout64);
    obj.label103:setAlign("left");
    obj.label103:setVertTextAlign("center");
    obj.label103:setHorzTextAlign("center");
    obj.label103:setText("Custo Total $: ");
    obj.label103:setWidth(100);
    obj.label103:setFontSize(14);
    obj.label103:setMargins({left = 2});
    obj.label103:setFontColor("#000000");
    obj.label103:setName("label103");

    obj.label104 = GUI.fromHandle(_obj_newObject("label"));
    obj.label104:setParent(obj.layout64);
    obj.label104:setAlign("left");
    obj.label104:setVertTextAlign("center");
    obj.label104:setHorzTextAlign("center");
    obj.label104:setField("custo_total");
    obj.label104:setWidth(120);
    obj.label104:setFontSize(18);
    obj.label104:setMargins({left = 2});
    obj.label104:setFontColor("#505000");
    obj.label104:setName("label104");

    obj.label105 = GUI.fromHandle(_obj_newObject("label"));
    obj.label105:setParent(obj.layout64);
    obj.label105:setAlign("left");
    obj.label105:setVertTextAlign("center");
    obj.label105:setHorzTextAlign("center");
    obj.label105:setText("Deslocamento c/ mochila: ");
    obj.label105:setWidth(100);
    obj.label105:setFontSize(14);
    obj.label105:setMargins({left = 2});
    obj.label105:setFontColor("#000000");
    obj.label105:setName("label105");

    obj.label106 = GUI.fromHandle(_obj_newObject("label"));
    obj.label106:setParent(obj.layout64);
    obj.label106:setAlign("left");
    obj.label106:setVertTextAlign("center");
    obj.label106:setHorzTextAlign("center");
    obj.label106:setField("deslocamento_atual");
    obj.label106:setWidth(50);
    obj.label106:setFontSize(25);
    obj.label106:setMargins({left = 2});
    obj.label106:setFontColor("#005500");
    obj.label106:setName("label106");

    obj.label107 = GUI.fromHandle(_obj_newObject("label"));
    obj.label107:setParent(obj.layout64);
    obj.label107:setAlign("left");
    obj.label107:setVertTextAlign("center");
    obj.label107:setHorzTextAlign("center");
    obj.label107:setText("Defesa c/ mochila: ");
    obj.label107:setWidth(70);
    obj.label107:setFontSize(14);
    obj.label107:setMargins({left = 20});
    obj.label107:setFontColor("#000000");
    obj.label107:setName("label107");

    obj.label108 = GUI.fromHandle(_obj_newObject("label"));
    obj.label108:setParent(obj.layout64);
    obj.label108:setAlign("left");
    obj.label108:setVertTextAlign("center");
    obj.label108:setHorzTextAlign("center");
    obj.label108:setField("esquiva_atual");
    obj.label108:setWidth(60);
    obj.label108:setFontSize(25);
    obj.label108:setMargins({left = 2});
    obj.label108:setFontColor("#005500");
    obj.label108:setName("label108");

    obj.label109 = GUI.fromHandle(_obj_newObject("label"));
    obj.label109:setParent(obj.layout64);
    obj.label109:setAlign("left");
    obj.label109:setVertTextAlign("center");
    obj.label109:setHorzTextAlign("center");
    obj.label109:setText("Deslocamento sem mochila: ");
    obj.label109:setWidth(100);
    obj.label109:setFontSize(14);
    obj.label109:setMargins({left = 2});
    obj.label109:setFontColor("#000000");
    obj.label109:setName("label109");

    obj.label110 = GUI.fromHandle(_obj_newObject("label"));
    obj.label110:setParent(obj.layout64);
    obj.label110:setAlign("left");
    obj.label110:setVertTextAlign("center");
    obj.label110:setHorzTextAlign("center");
    obj.label110:setField("deslocamento_atual_sm");
    obj.label110:setWidth(50);
    obj.label110:setFontSize(25);
    obj.label110:setMargins({left = 2});
    obj.label110:setFontColor("#005500");
    obj.label110:setName("label110");

    obj.label111 = GUI.fromHandle(_obj_newObject("label"));
    obj.label111:setParent(obj.layout64);
    obj.label111:setAlign("left");
    obj.label111:setVertTextAlign("center");
    obj.label111:setHorzTextAlign("center");
    obj.label111:setText("Defesa sem mochila: ");
    obj.label111:setWidth(70);
    obj.label111:setFontSize(14);
    obj.label111:setMargins({left = 20});
    obj.label111:setFontColor("#000000");
    obj.label111:setName("label111");

    obj.label112 = GUI.fromHandle(_obj_newObject("label"));
    obj.label112:setParent(obj.layout64);
    obj.label112:setAlign("left");
    obj.label112:setVertTextAlign("center");
    obj.label112:setHorzTextAlign("center");
    obj.label112:setField("esquiva_atual_sm");
    obj.label112:setWidth(60);
    obj.label112:setFontSize(25);
    obj.label112:setMargins({left = 2});
    obj.label112:setFontColor("#005500");
    obj.label112:setName("label112");

    obj.label113 = GUI.fromHandle(_obj_newObject("label"));
    obj.label113:setParent(obj.rectangle35);
    obj.label113:setTop(965);
    obj.label113:setLeft(200);
    obj.label113:setVertTextAlign("center");
    obj.label113:setText("MOCHILA");
    obj.label113:setFontColor("#000000");
    obj.label113:setFontSize(18);
    obj.label113:setMargins({left = 50});
    obj.label113:setHeight(30);
    obj.label113:setWidth(800);
    obj.label113:setName("label113");

    obj.label114 = GUI.fromHandle(_obj_newObject("label"));
    obj.label114:setParent(obj.rectangle35);
    obj.label114:setVisible(false);
    obj.label114:setField("orderbyMochila");
    obj.label114:setName("label114");
    obj.label114:setFontColor("black");

    obj.button17 = GUI.fromHandle(_obj_newObject("button"));
    obj.button17:setParent(obj.rectangle35);
    obj.button17:setTop(990);
    obj.button17:setLeft(130);
    obj.button17:setText("^");
    obj.button17:setWidth(20);
    obj.button17:setHeight(20);
    obj.button17:setFontSize(18);
    lfm_setPropAsString(obj.button17, "fontStyle",  "bold");
    obj.button17:setName("button17");
    obj.button17:setFontColor("black");

    obj.button18 = GUI.fromHandle(_obj_newObject("button"));
    obj.button18:setParent(obj.rectangle35);
    obj.button18:setTop(990);
    obj.button18:setLeft(300);
    obj.button18:setText("^");
    obj.button18:setWidth(20);
    obj.button18:setHeight(20);
    obj.button18:setFontSize(18);
    lfm_setPropAsString(obj.button18, "fontStyle",  "bold");
    obj.button18:setName("button18");
    obj.button18:setFontColor("black");

    obj.button19 = GUI.fromHandle(_obj_newObject("button"));
    obj.button19:setParent(obj.rectangle35);
    obj.button19:setTop(990);
    obj.button19:setLeft(540);
    obj.button19:setText("^");
    obj.button19:setWidth(20);
    obj.button19:setHeight(20);
    obj.button19:setFontSize(18);
    lfm_setPropAsString(obj.button19, "fontStyle",  "bold");
    obj.button19:setName("button19");
    obj.button19:setFontColor("black");

    obj.button20 = GUI.fromHandle(_obj_newObject("button"));
    obj.button20:setParent(obj.rectangle35);
    obj.button20:setTop(990);
    obj.button20:setLeft(740);
    obj.button20:setText("^");
    obj.button20:setWidth(20);
    obj.button20:setHeight(20);
    obj.button20:setFontSize(18);
    lfm_setPropAsString(obj.button20, "fontStyle",  "bold");
    obj.button20:setName("button20");
    obj.button20:setFontColor("black");

    obj.button21 = GUI.fromHandle(_obj_newObject("button"));
    obj.button21:setParent(obj.rectangle35);
    obj.button21:setTop(990);
    obj.button21:setLeft(840);
    obj.button21:setText("^");
    obj.button21:setWidth(20);
    obj.button21:setHeight(20);
    obj.button21:setFontSize(18);
    lfm_setPropAsString(obj.button21, "fontStyle",  "bold");
    obj.button21:setName("button21");
    obj.button21:setFontColor("black");

    obj.button22 = GUI.fromHandle(_obj_newObject("button"));
    obj.button22:setParent(obj.rectangle35);
    obj.button22:setTop(990);
    obj.button22:setLeft(930);
    obj.button22:setText("^");
    obj.button22:setWidth(20);
    obj.button22:setHeight(20);
    obj.button22:setFontSize(18);
    lfm_setPropAsString(obj.button22, "fontStyle",  "bold");
    obj.button22:setName("button22");
    obj.button22:setFontColor("black");

    obj.layout65 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout65:setParent(obj.rectangle35);
    obj.layout65:setTop(1005);
    obj.layout65:setHeight(400);
    obj.layout65:setWidth(1160);
    obj.layout65:setLeft(5);
    obj.layout65:setName("layout65");

    obj.layout66 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout66:setParent(obj.layout65);
    obj.layout66:setAlign("top");
    obj.layout66:setHeight(40);
    obj.layout66:setMargins({bottom=4 , left=5});
    obj.layout66:setName("layout66");

    obj.button23 = GUI.fromHandle(_obj_newObject("button"));
    obj.button23:setParent(obj.layout66);
    obj.button23:setText("+");
    obj.button23:setWidth(40);
    obj.button23:setAlign("left");
    obj.button23:setFontSize(25);
    obj.button23:setName("button23");
    obj.button23:setFontColor("black");

    obj.rclListaPossesMoveis = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaPossesMoveis:setParent(obj.layout65);
    obj.rclListaPossesMoveis:setName("rclListaPossesMoveis");
    obj.rclListaPossesMoveis:setField("campoPossesMoveis");
    obj.rclListaPossesMoveis:setTemplateForm("frmPosses");
    obj.rclListaPossesMoveis:setAlign("client");
    obj.rclListaPossesMoveis:setSelectable(true);

    obj.layout67 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout67:setParent(obj.rectangle35);
    obj.layout67:setTop(1015);
    obj.layout67:setHeight(20);
    obj.layout67:setWidth(1100);
    obj.layout67:setLeft(35);
    obj.layout67:setName("layout67");

    obj.label115 = GUI.fromHandle(_obj_newObject("label"));
    obj.label115:setParent(obj.layout67);
    obj.label115:setAlign("left");
    obj.label115:setVertTextAlign("center");
    obj.label115:setHorzTextAlign("center");
    obj.label115:setWidth(200);
    obj.label115:setFontSize(13);
    obj.label115:setMargins({left = 2});
    obj.label115:setText("Posse");
    obj.label115:setFontColor("#000000");
    obj.label115:setName("label115");

    obj.label116 = GUI.fromHandle(_obj_newObject("label"));
    obj.label116:setParent(obj.layout67);
    obj.label116:setAlign("left");
    obj.label116:setVertTextAlign("center");
    obj.label116:setHorzTextAlign("center");
    obj.label116:setWidth(150);
    obj.label116:setFontSize(13);
    obj.label116:setMargins({left = 2});
    obj.label116:setText("Local");
    obj.label116:setFontColor("#000000");
    obj.label116:setName("label116");

    obj.label117 = GUI.fromHandle(_obj_newObject("label"));
    obj.label117:setParent(obj.layout67);
    obj.label117:setAlign("left");
    obj.label117:setVertTextAlign("center");
    obj.label117:setHorzTextAlign("center");
    obj.label117:setWidth(305);
    obj.label117:setFontSize(13);
    obj.label117:setMargins({left = 2});
    obj.label117:setText("Notas");
    obj.label117:setFontColor("#000000");
    obj.label117:setName("label117");

    obj.label118 = GUI.fromHandle(_obj_newObject("label"));
    obj.label118:setParent(obj.layout67);
    obj.label118:setAlign("left");
    obj.label118:setVertTextAlign("center");
    obj.label118:setHorzTextAlign("center");
    obj.label118:setWidth(100);
    obj.label118:setFontSize(13);
    obj.label118:setMargins({left = 2});
    obj.label118:setText("Qtd");
    obj.label118:setFontColor("#000000");
    obj.label118:setName("label118");

    obj.label119 = GUI.fromHandle(_obj_newObject("label"));
    obj.label119:setParent(obj.layout67);
    obj.label119:setAlign("left");
    obj.label119:setVertTextAlign("center");
    obj.label119:setHorzTextAlign("center");
    obj.label119:setWidth(100);
    obj.label119:setFontSize(13);
    obj.label119:setMargins({left = 2});
    obj.label119:setText("Custo $");
    obj.label119:setFontColor("#000000");
    obj.label119:setName("label119");

    obj.label120 = GUI.fromHandle(_obj_newObject("label"));
    obj.label120:setParent(obj.layout67);
    obj.label120:setAlign("left");
    obj.label120:setVertTextAlign("center");
    obj.label120:setHorzTextAlign("center");
    obj.label120:setWidth(80);
    obj.label120:setFontSize(13);
    obj.label120:setMargins({left = 2});
    obj.label120:setText("Peso");
    obj.label120:setFontColor("#000000");
    obj.label120:setName("label120");

    obj.label121 = GUI.fromHandle(_obj_newObject("label"));
    obj.label121:setParent(obj.rectangle35);
    obj.label121:setTop(1450);
    obj.label121:setLeft(200);
    obj.label121:setVertTextAlign("center");
    obj.label121:setText("Equipamentos Fora da Mochila");
    obj.label121:setFontColor("#000000");
    obj.label121:setFontSize(18);
    obj.label121:setMargins({left = 50});
    obj.label121:setHeight(30);
    obj.label121:setWidth(800);
    obj.label121:setName("label121");

    obj.layout68 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout68:setParent(obj.rectangle35);
    obj.layout68:setTop(1490);
    obj.layout68:setHeight(400);
    obj.layout68:setWidth(1160);
    obj.layout68:setLeft(5);
    obj.layout68:setName("layout68");

    obj.layout69 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout69:setParent(obj.layout68);
    obj.layout69:setAlign("top");
    obj.layout69:setHeight(40);
    obj.layout69:setMargins({bottom=4 , left=5});
    obj.layout69:setName("layout69");

    obj.button24 = GUI.fromHandle(_obj_newObject("button"));
    obj.button24:setParent(obj.layout69);
    obj.button24:setText("+");
    obj.button24:setWidth(40);
    obj.button24:setAlign("left");
    obj.button24:setFontSize(25);
    obj.button24:setName("button24");
    obj.button24:setFontColor("black");

    obj.rclListaPossesMoveisFM = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaPossesMoveisFM:setParent(obj.layout68);
    obj.rclListaPossesMoveisFM:setName("rclListaPossesMoveisFM");
    obj.rclListaPossesMoveisFM:setField("campoPossesMoveisFM");
    obj.rclListaPossesMoveisFM:setTemplateForm("frmPosses");
    obj.rclListaPossesMoveisFM:setAlign("client");
    obj.rclListaPossesMoveisFM:setSelectable(true);

    obj.layout70 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout70:setParent(obj.rectangle35);
    obj.layout70:setTop(1500);
    obj.layout70:setHeight(20);
    obj.layout70:setWidth(1100);
    obj.layout70:setLeft(35);
    obj.layout70:setName("layout70");

    obj.label122 = GUI.fromHandle(_obj_newObject("label"));
    obj.label122:setParent(obj.layout70);
    obj.label122:setAlign("left");
    obj.label122:setVertTextAlign("center");
    obj.label122:setHorzTextAlign("center");
    obj.label122:setWidth(200);
    obj.label122:setFontSize(13);
    obj.label122:setMargins({left = 2});
    obj.label122:setText("Posse");
    obj.label122:setFontColor("#000000");
    obj.label122:setName("label122");

    obj.label123 = GUI.fromHandle(_obj_newObject("label"));
    obj.label123:setParent(obj.layout70);
    obj.label123:setAlign("left");
    obj.label123:setVertTextAlign("center");
    obj.label123:setHorzTextAlign("center");
    obj.label123:setWidth(150);
    obj.label123:setFontSize(13);
    obj.label123:setMargins({left = 2});
    obj.label123:setText("Local");
    obj.label123:setFontColor("#000000");
    obj.label123:setName("label123");

    obj.label124 = GUI.fromHandle(_obj_newObject("label"));
    obj.label124:setParent(obj.layout70);
    obj.label124:setAlign("left");
    obj.label124:setVertTextAlign("center");
    obj.label124:setHorzTextAlign("center");
    obj.label124:setWidth(305);
    obj.label124:setFontSize(13);
    obj.label124:setMargins({left = 2});
    obj.label124:setText("Notas");
    obj.label124:setFontColor("#000000");
    obj.label124:setName("label124");

    obj.label125 = GUI.fromHandle(_obj_newObject("label"));
    obj.label125:setParent(obj.layout70);
    obj.label125:setAlign("left");
    obj.label125:setVertTextAlign("center");
    obj.label125:setHorzTextAlign("center");
    obj.label125:setWidth(100);
    obj.label125:setFontSize(13);
    obj.label125:setMargins({left = 2});
    obj.label125:setText("Qtd");
    obj.label125:setFontColor("#000000");
    obj.label125:setName("label125");

    obj.label126 = GUI.fromHandle(_obj_newObject("label"));
    obj.label126:setParent(obj.layout70);
    obj.label126:setAlign("left");
    obj.label126:setVertTextAlign("center");
    obj.label126:setHorzTextAlign("center");
    obj.label126:setWidth(100);
    obj.label126:setFontSize(13);
    obj.label126:setMargins({left = 2});
    obj.label126:setText("Custo $");
    obj.label126:setFontColor("#000000");
    obj.label126:setName("label126");

    obj.label127 = GUI.fromHandle(_obj_newObject("label"));
    obj.label127:setParent(obj.layout70);
    obj.label127:setAlign("left");
    obj.label127:setVertTextAlign("center");
    obj.label127:setHorzTextAlign("center");
    obj.label127:setWidth(80);
    obj.label127:setFontSize(13);
    obj.label127:setMargins({left = 2});
    obj.label127:setText("Peso");
    obj.label127:setFontColor("#000000");
    obj.label127:setName("label127");

    obj.label128 = GUI.fromHandle(_obj_newObject("label"));
    obj.label128:setParent(obj.rectangle35);
    obj.label128:setTop(1900);
    obj.label128:setLeft(200);
    obj.label128:setVertTextAlign("center");
    obj.label128:setText("Outras Posses");
    obj.label128:setFontColor("#000000");
    obj.label128:setFontSize(18);
    obj.label128:setMargins({left = 50});
    obj.label128:setHeight(30);
    obj.label128:setWidth(800);
    obj.label128:setName("label128");

    obj.layout71 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout71:setParent(obj.rectangle35);
    obj.layout71:setTop(1940);
    obj.layout71:setHeight(300);
    obj.layout71:setWidth(1050);
    obj.layout71:setLeft(5);
    obj.layout71:setName("layout71");

    obj.layout72 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout72:setParent(obj.layout71);
    obj.layout72:setAlign("top");
    obj.layout72:setHeight(40);
    obj.layout72:setMargins({bottom=4 , left=5});
    obj.layout72:setName("layout72");

    obj.button25 = GUI.fromHandle(_obj_newObject("button"));
    obj.button25:setParent(obj.layout72);
    obj.button25:setText("+");
    obj.button25:setWidth(40);
    obj.button25:setAlign("left");
    obj.button25:setFontSize(25);
    obj.button25:setName("button25");
    obj.button25:setFontColor("black");

    obj.rclListaOutrasPosses = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaOutrasPosses:setParent(obj.layout71);
    obj.rclListaOutrasPosses:setName("rclListaOutrasPosses");
    obj.rclListaOutrasPosses:setField("campoOutrasPosses");
    obj.rclListaOutrasPosses:setTemplateForm("frmOutrasPosses");
    obj.rclListaOutrasPosses:setAlign("client");
    obj.rclListaOutrasPosses:setSelectable(true);

    obj.layout73 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout73:setParent(obj.rectangle35);
    obj.layout73:setTop(1950);
    obj.layout73:setHeight(20);
    obj.layout73:setWidth(1100);
    obj.layout73:setLeft(35);
    obj.layout73:setName("layout73");

    obj.label129 = GUI.fromHandle(_obj_newObject("label"));
    obj.label129:setParent(obj.layout73);
    obj.label129:setAlign("left");
    obj.label129:setVertTextAlign("center");
    obj.label129:setHorzTextAlign("center");
    obj.label129:setWidth(800);
    obj.label129:setFontSize(16);
    obj.label129:setMargins({left = 2});
    obj.label129:setText("Posse");
    obj.label129:setFontColor("#000000");
    obj.label129:setName("label129");

    obj.label130 = GUI.fromHandle(_obj_newObject("label"));
    obj.label130:setParent(obj.layout73);
    obj.label130:setAlign("left");
    obj.label130:setVertTextAlign("center");
    obj.label130:setHorzTextAlign("center");
    obj.label130:setWidth(100);
    obj.label130:setFontSize(16);
    obj.label130:setMargins({left = 2});
    obj.label130:setText("Custo $");
    obj.label130:setFontColor("#000000");
    obj.label130:setName("label130");

    obj.tab4 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab4:setParent(obj.tabControl1);
    obj.tab4:setTitle("Magias");
    obj.tab4:setName("tab4");

    obj.alterion_2023_4 = GUI.fromHandle(_obj_newObject("form"));
    obj.alterion_2023_4:setParent(obj.tab4);
    obj.alterion_2023_4:setName("alterion_2023_4");
    obj.alterion_2023_4:setTheme("light");
    obj.alterion_2023_4:setAlign("client");

    obj.scrollBox4 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox4:setParent(obj.alterion_2023_4);
    obj.scrollBox4:setAlign("client");
    obj.scrollBox4:setName("scrollBox4");

    obj.rectangle48 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle48:setParent(obj.scrollBox4);
    obj.rectangle48:setWidth(1200);
    obj.rectangle48:setHeight(1600);
    obj.rectangle48:setColor("white");
    obj.rectangle48:setName("rectangle48");

    obj.layout74 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout74:setParent(obj.rectangle48);
    obj.layout74:setLeft(880);
    obj.layout74:setTop(5);
    obj.layout74:setHeight(30);
    obj.layout74:setWidth(300);
    obj.layout74:setName("layout74");

    obj.rectangle49 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle49:setParent(obj.layout74);
    obj.rectangle49:setAlign("left");
    obj.rectangle49:setWidth(250);
    obj.rectangle49:setHeight(30);
    obj.rectangle49:setColor("white");
    obj.rectangle49:setStrokeSize(1.0);
    obj.rectangle49:setName("rectangle49");

    obj.layout75 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout75:setParent(obj.rectangle48);
    obj.layout75:setLeft(880);
    obj.layout75:setTop(5);
    obj.layout75:setHeight(30);
    obj.layout75:setWidth(300);
    obj.layout75:setName("layout75");

    obj.label131 = GUI.fromHandle(_obj_newObject("label"));
    obj.label131:setParent(obj.layout75);
    obj.label131:setAlign("left");
    obj.label131:setMargins({left = 5});
    obj.label131:setVertTextAlign("center");
    obj.label131:setWidth(140);
    obj.label131:setText("Pontos iniciais:");
    obj.label131:setFontColor("#000000");
    obj.label131:setFontSize(15);
    obj.label131:setName("label131");

    obj.edit24 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit24:setParent(obj.layout75);
    obj.edit24:setField("pt_iniciais");
    obj.edit24:setAlign("left");
    obj.edit24:setVertTextAlign("center");
    obj.edit24:setFontColor("#8000A0");
    obj.edit24:setType("number");
    obj.edit24:setFontSize(20);
    obj.edit24:setTransparent(true);
    obj.edit24:setName("edit24");

    obj.layout76 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout76:setParent(obj.rectangle48);
    obj.layout76:setLeft(880);
    obj.layout76:setTop(40);
    obj.layout76:setHeight(30);
    obj.layout76:setWidth(300);
    obj.layout76:setName("layout76");

    obj.rectangle50 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle50:setParent(obj.layout76);
    obj.rectangle50:setAlign("left");
    obj.rectangle50:setWidth(250);
    obj.rectangle50:setHeight(30);
    obj.rectangle50:setColor("white");
    obj.rectangle50:setStrokeSize(1.0);
    obj.rectangle50:setName("rectangle50");

    obj.layout77 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout77:setParent(obj.rectangle48);
    obj.layout77:setLeft(880);
    obj.layout77:setTop(40);
    obj.layout77:setHeight(30);
    obj.layout77:setWidth(300);
    obj.layout77:setName("layout77");

    obj.label132 = GUI.fromHandle(_obj_newObject("label"));
    obj.label132:setParent(obj.layout77);
    obj.label132:setAlign("left");
    obj.label132:setMargins({left = 5});
    obj.label132:setVertTextAlign("center");
    obj.label132:setWidth(140);
    obj.label132:setText("Pontos ganhos:");
    obj.label132:setFontColor("#000000");
    obj.label132:setFontSize(15);
    obj.label132:setName("label132");

    obj.edit25 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit25:setParent(obj.layout77);
    obj.edit25:setField("pt_ganhos");
    obj.edit25:setType("number");
    obj.edit25:setAlign("left");
    obj.edit25:setVertTextAlign("center");
    obj.edit25:setFontColor("#8000A0");
    obj.edit25:setFontSize(20);
    obj.edit25:setTransparent(true);
    obj.edit25:setName("edit25");

    obj.layout78 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout78:setParent(obj.rectangle48);
    obj.layout78:setLeft(880);
    obj.layout78:setTop(80);
    obj.layout78:setHeight(30);
    obj.layout78:setWidth(300);
    obj.layout78:setName("layout78");

    obj.rectangle51 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle51:setParent(obj.layout78);
    obj.rectangle51:setAlign("left");
    obj.rectangle51:setWidth(250);
    obj.rectangle51:setHeight(30);
    obj.rectangle51:setColor("white");
    obj.rectangle51:setStrokeSize(1.0);
    obj.rectangle51:setName("rectangle51");

    obj.layout79 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout79:setParent(obj.rectangle48);
    obj.layout79:setLeft(880);
    obj.layout79:setTop(80);
    obj.layout79:setHeight(30);
    obj.layout79:setWidth(300);
    obj.layout79:setName("layout79");

    obj.label133 = GUI.fromHandle(_obj_newObject("label"));
    obj.label133:setParent(obj.layout79);
    obj.label133:setAlign("left");
    obj.label133:setMargins({left = 5});
    obj.label133:setVertTextAlign("center");
    obj.label133:setWidth(140);
    obj.label133:setText("Pontos totais:");
    obj.label133:setFontColor("#000000");
    obj.label133:setFontSize(15);
    obj.label133:setName("label133");

    obj.label134 = GUI.fromHandle(_obj_newObject("label"));
    obj.label134:setParent(obj.layout79);
    obj.label134:setField("pt_total");
    obj.label134:setAlign("left");
    obj.label134:setVertTextAlign("center");
    obj.label134:setFontColor("#FF0000");
    obj.label134:setFontSize(20);
    obj.label134:setName("label134");

    obj.layout80 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout80:setParent(obj.rectangle48);
    obj.layout80:setLeft(880);
    obj.layout80:setTop(120);
    obj.layout80:setHeight(30);
    obj.layout80:setWidth(300);
    obj.layout80:setName("layout80");

    obj.rectangle52 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle52:setParent(obj.layout80);
    obj.rectangle52:setAlign("left");
    obj.rectangle52:setWidth(250);
    obj.rectangle52:setHeight(30);
    obj.rectangle52:setColor("white");
    obj.rectangle52:setStrokeSize(1.0);
    obj.rectangle52:setName("rectangle52");

    obj.layout81 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout81:setParent(obj.rectangle48);
    obj.layout81:setLeft(880);
    obj.layout81:setTop(120);
    obj.layout81:setHeight(30);
    obj.layout81:setWidth(300);
    obj.layout81:setName("layout81");

    obj.label135 = GUI.fromHandle(_obj_newObject("label"));
    obj.label135:setParent(obj.layout81);
    obj.label135:setAlign("left");
    obj.label135:setMargins({left = 5});
    obj.label135:setVertTextAlign("center");
    obj.label135:setWidth(140);
    obj.label135:setText("Total Gasto:");
    obj.label135:setFontColor("#000000");
    obj.label135:setFontSize(15);
    obj.label135:setName("label135");

    obj.label136 = GUI.fromHandle(_obj_newObject("label"));
    obj.label136:setParent(obj.layout81);
    obj.label136:setField("totalGasto");
    obj.label136:setAlign("left");
    obj.label136:setVertTextAlign("center");
    obj.label136:setFontColor("#FF0000");
    obj.label136:setFontSize(20);
    obj.label136:setName("label136");

    obj.layout82 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout82:setParent(obj.rectangle48);
    obj.layout82:setLeft(880);
    obj.layout82:setTop(160);
    obj.layout82:setHeight(30);
    obj.layout82:setWidth(300);
    obj.layout82:setName("layout82");

    obj.rectangle53 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle53:setParent(obj.layout82);
    obj.rectangle53:setAlign("left");
    obj.rectangle53:setWidth(250);
    obj.rectangle53:setHeight(30);
    obj.rectangle53:setColor("white");
    obj.rectangle53:setStrokeSize(1.0);
    obj.rectangle53:setName("rectangle53");

    obj.layout83 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout83:setParent(obj.rectangle48);
    obj.layout83:setLeft(880);
    obj.layout83:setTop(160);
    obj.layout83:setHeight(30);
    obj.layout83:setWidth(300);
    obj.layout83:setName("layout83");

    obj.label137 = GUI.fromHandle(_obj_newObject("label"));
    obj.label137:setParent(obj.layout83);
    obj.label137:setAlign("left");
    obj.label137:setMargins({left = 5});
    obj.label137:setVertTextAlign("center");
    obj.label137:setWidth(140);
    obj.label137:setText("Pontos a gastar:");
    obj.label137:setFontColor("#000000");
    obj.label137:setFontSize(15);
    obj.label137:setName("label137");

    obj.label138 = GUI.fromHandle(_obj_newObject("label"));
    obj.label138:setParent(obj.layout83);
    obj.label138:setField("aGastar");
    obj.label138:setAlign("left");
    obj.label138:setVertTextAlign("center");
    obj.label138:setFontColor("#FF0000");
    obj.label138:setFontSize(20);
    obj.label138:setName("label138");

    obj.button26 = GUI.fromHandle(_obj_newObject("button"));
    obj.button26:setParent(obj.rectangle48);
    obj.button26:setTop(50);
    obj.button26:setLeft(600);
    obj.button26:setText("CALCULAR PONTOS");
    obj.button26:setWidth(200);
    obj.button26:setHeight(105);
    obj.button26:setFontSize(18);
    obj.button26:setFontColor("#FF5050");
    lfm_setPropAsString(obj.button26, "fontStyle",  "bold");
    obj.button26:setName("button26");

    obj.layout84 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout84:setParent(obj.rectangle48);
    obj.layout84:setLeft(15);
    obj.layout84:setTop(20);
    obj.layout84:setHeight(30);
    obj.layout84:setWidth(300);
    obj.layout84:setName("layout84");

    obj.label139 = GUI.fromHandle(_obj_newObject("label"));
    obj.label139:setParent(obj.layout84);
    obj.label139:setAlign("left");
    obj.label139:setMargins({left = 5});
    obj.label139:setVertTextAlign("center");
    obj.label139:setWidth(40);
    obj.label139:setText("INT:");
    obj.label139:setFontColor("#000000");
    obj.label139:setFontSize(20);
    obj.label139:setName("label139");

    obj.label140 = GUI.fromHandle(_obj_newObject("label"));
    obj.label140:setParent(obj.layout84);
    obj.label140:setField("int");
    obj.label140:setAlign("left");
    obj.label140:setVertTextAlign("center");
    obj.label140:setWidth(40);
    obj.label140:setFontColor("#000000");
    obj.label140:setFontSize(20);
    obj.label140:setName("label140");

    obj.layout85 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout85:setParent(obj.rectangle48);
    obj.layout85:setLeft(15);
    obj.layout85:setTop(60);
    obj.layout85:setHeight(50);
    obj.layout85:setWidth(360);
    obj.layout85:setName("layout85");

    obj.label141 = GUI.fromHandle(_obj_newObject("label"));
    obj.label141:setParent(obj.layout85);
    obj.label141:setAlign("left");
    obj.label141:setMargins({left = 5});
    obj.label141:setVertTextAlign("center");
    obj.label141:setWidth(120);
    obj.label141:setText("Nível Arcano:");
    obj.label141:setFontColor("#000000");
    obj.label141:setFontSize(20);
    obj.label141:setName("label141");

    obj.edit26 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit26:setParent(obj.layout85);
    obj.edit26:setAlign("left");
    obj.edit26:setMargins({left = 5});
    obj.edit26:setVertTextAlign("center");
    obj.edit26:setHorzTextAlign("center");
    obj.edit26:setWidth(50);
    obj.edit26:setField("nivelArcano");
    obj.edit26:setFontColor("#000000");
    obj.edit26:setFontSize(20);
    obj.edit26:setName("edit26");

    obj.label142 = GUI.fromHandle(_obj_newObject("label"));
    obj.label142:setParent(obj.rectangle48);
    obj.label142:setVisible(false);
    obj.label142:setField("orderby");
    obj.label142:setName("label142");
    obj.label142:setFontColor("black");

    obj.button27 = GUI.fromHandle(_obj_newObject("button"));
    obj.button27:setParent(obj.rectangle48);
    obj.button27:setTop(230);
    obj.button27:setLeft(150);
    obj.button27:setText("^");
    obj.button27:setWidth(20);
    obj.button27:setHeight(20);
    obj.button27:setFontSize(18);
    lfm_setPropAsString(obj.button27, "fontStyle",  "bold");
    obj.button27:setName("button27");
    obj.button27:setFontColor("black");

    obj.button28 = GUI.fromHandle(_obj_newObject("button"));
    obj.button28:setParent(obj.rectangle48);
    obj.button28:setTop(230);
    obj.button28:setLeft(290);
    obj.button28:setText("^");
    obj.button28:setWidth(20);
    obj.button28:setHeight(20);
    obj.button28:setFontSize(18);
    lfm_setPropAsString(obj.button28, "fontStyle",  "bold");
    obj.button28:setName("button28");
    obj.button28:setFontColor("black");

    obj.button29 = GUI.fromHandle(_obj_newObject("button"));
    obj.button29:setParent(obj.rectangle48);
    obj.button29:setTop(230);
    obj.button29:setLeft(355);
    obj.button29:setText("^");
    obj.button29:setWidth(20);
    obj.button29:setHeight(20);
    obj.button29:setFontSize(18);
    lfm_setPropAsString(obj.button29, "fontStyle",  "bold");
    obj.button29:setName("button29");
    obj.button29:setFontColor("black");

    obj.button30 = GUI.fromHandle(_obj_newObject("button"));
    obj.button30:setParent(obj.rectangle48);
    obj.button30:setTop(230);
    obj.button30:setLeft(410);
    obj.button30:setText("^");
    obj.button30:setWidth(20);
    obj.button30:setHeight(20);
    obj.button30:setFontSize(18);
    lfm_setPropAsString(obj.button30, "fontStyle",  "bold");
    obj.button30:setName("button30");
    obj.button30:setFontColor("black");

    obj.button31 = GUI.fromHandle(_obj_newObject("button"));
    obj.button31:setParent(obj.rectangle48);
    obj.button31:setTop(230);
    obj.button31:setLeft(450);
    obj.button31:setText("^");
    obj.button31:setWidth(20);
    obj.button31:setHeight(20);
    obj.button31:setFontSize(18);
    lfm_setPropAsString(obj.button31, "fontStyle",  "bold");
    obj.button31:setName("button31");
    obj.button31:setFontColor("black");

    obj.button32 = GUI.fromHandle(_obj_newObject("button"));
    obj.button32:setParent(obj.rectangle48);
    obj.button32:setTop(230);
    obj.button32:setLeft(515);
    obj.button32:setText("^");
    obj.button32:setWidth(20);
    obj.button32:setHeight(20);
    obj.button32:setFontSize(18);
    lfm_setPropAsString(obj.button32, "fontStyle",  "bold");
    obj.button32:setName("button32");
    obj.button32:setFontColor("black");

    obj.button33 = GUI.fromHandle(_obj_newObject("button"));
    obj.button33:setParent(obj.rectangle48);
    obj.button33:setTop(230);
    obj.button33:setLeft(750);
    obj.button33:setText("^");
    obj.button33:setWidth(20);
    obj.button33:setHeight(20);
    obj.button33:setFontSize(18);
    lfm_setPropAsString(obj.button33, "fontStyle",  "bold");
    obj.button33:setName("button33");
    obj.button33:setFontColor("black");

    obj.label143 = GUI.fromHandle(_obj_newObject("label"));
    obj.label143:setParent(obj.rectangle48);
    obj.label143:setTop(200);
    obj.label143:setLeft(200);
    obj.label143:setVertTextAlign("center");
    obj.label143:setText("Magias");
    obj.label143:setFontColor("#000000");
    obj.label143:setFontSize(18);
    obj.label143:setMargins({left = 50});
    obj.label143:setHeight(30);
    obj.label143:setWidth(800);
    obj.label143:setName("label143");

    obj.layout86 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout86:setParent(obj.rectangle48);
    obj.layout86:setTop(240);
    obj.layout86:setHeight(800);
    obj.layout86:setWidth(1160);
    obj.layout86:setLeft(5);
    obj.layout86:setName("layout86");

    obj.layout87 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout87:setParent(obj.layout86);
    obj.layout87:setAlign("top");
    obj.layout87:setHeight(40);
    obj.layout87:setMargins({bottom=4 , left=5});
    obj.layout87:setName("layout87");

    obj.button34 = GUI.fromHandle(_obj_newObject("button"));
    obj.button34:setParent(obj.layout87);
    obj.button34:setText("+");
    obj.button34:setWidth(40);
    obj.button34:setAlign("left");
    obj.button34:setFontSize(25);
    obj.button34:setName("button34");
    obj.button34:setFontColor("black");

    obj.rclListaMagias = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaMagias:setParent(obj.layout86);
    obj.rclListaMagias:setName("rclListaMagias");
    obj.rclListaMagias:setField("campoMagias");
    obj.rclListaMagias:setTemplateForm("frmMagias");
    obj.rclListaMagias:setAlign("client");
    obj.rclListaMagias:setSelectable(true);

    obj.layout88 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout88:setParent(obj.rectangle48);
    obj.layout88:setTop(250);
    obj.layout88:setHeight(25);
    obj.layout88:setWidth(1100);
    obj.layout88:setLeft(38);
    obj.layout88:setName("layout88");

    obj.label144 = GUI.fromHandle(_obj_newObject("label"));
    obj.label144:setParent(obj.layout88);
    obj.label144:setAlign("left");
    obj.label144:setVertTextAlign("center");
    obj.label144:setHorzTextAlign("center");
    obj.label144:setText("Magia");
    obj.label144:setWidth(230);
    obj.label144:setFontSize(18);
    obj.label144:setFontColor("#000000");
    obj.label144:setName("label144");

    obj.label145 = GUI.fromHandle(_obj_newObject("label"));
    obj.label145:setParent(obj.layout88);
    obj.label145:setAlign("left");
    obj.label145:setVertTextAlign("center");
    obj.label145:setHorzTextAlign("center");
    obj.label145:setText("Atributo");
    obj.label145:setWidth(70);
    obj.label145:setFontSize(16);
    obj.label145:setMargins({left = 5});
    obj.label145:setFontColor("#000000");
    obj.label145:setName("label145");

    obj.label146 = GUI.fromHandle(_obj_newObject("label"));
    obj.label146:setParent(obj.layout88);
    obj.label146:setAlign("left");
    obj.label146:setVertTextAlign("center");
    obj.label146:setHorzTextAlign("center");
    obj.label146:setText("nível");
    obj.label146:setWidth(40);
    obj.label146:setFontSize(18);
    obj.label146:setMargins({left = 5});
    obj.label146:setFontColor("#000000");
    obj.label146:setName("label146");

    obj.label147 = GUI.fromHandle(_obj_newObject("label"));
    obj.label147:setParent(obj.layout88);
    obj.label147:setAlign("left");
    obj.label147:setVertTextAlign("center");
    obj.label147:setHorzTextAlign("center");
    obj.label147:setText("mod");
    obj.label147:setWidth(40);
    obj.label147:setFontSize(16);
    obj.label147:setMargins({left = 5});
    obj.label147:setFontColor("#000000");
    obj.label147:setName("label147");

    obj.label148 = GUI.fromHandle(_obj_newObject("label"));
    obj.label148:setParent(obj.layout88);
    obj.label148:setAlign("left");
    obj.label148:setVertTextAlign("center");
    obj.label148:setHorzTextAlign("center");
    obj.label148:setText("nível efetivo");
    obj.label148:setWidth(100);
    obj.label148:setFontSize(18);
    obj.label148:setMargins({left = 5});
    obj.label148:setFontColor("#000000");
    obj.label148:setName("label148");

    obj.label149 = GUI.fromHandle(_obj_newObject("label"));
    obj.label149:setParent(obj.layout88);
    obj.label149:setAlign("left");
    obj.label149:setVertTextAlign("center");
    obj.label149:setHorzTextAlign("center");
    obj.label149:setText("mana");
    obj.label149:setWidth(55);
    obj.label149:setFontSize(18);
    obj.label149:setMargins({left = 5});
    obj.label149:setFontColor("#000000");
    obj.label149:setName("label149");

    obj.label150 = GUI.fromHandle(_obj_newObject("label"));
    obj.label150:setParent(obj.layout88);
    obj.label150:setAlign("left");
    obj.label150:setVertTextAlign("center");
    obj.label150:setHorzTextAlign("center");
    obj.label150:setText("pts");
    obj.label150:setWidth(55);
    obj.label150:setFontSize(18);
    obj.label150:setMargins({left = 5});
    obj.label150:setFontColor("#000000");
    obj.label150:setName("label150");

    obj.label151 = GUI.fromHandle(_obj_newObject("label"));
    obj.label151:setParent(obj.layout88);
    obj.label151:setAlign("left");
    obj.label151:setVertTextAlign("center");
    obj.label151:setHorzTextAlign("center");
    obj.label151:setText("Notas");
    obj.label151:setWidth(400);
    obj.label151:setFontSize(18);
    obj.label151:setMargins({left = 5});
    obj.label151:setFontColor("#000000");
    obj.label151:setName("label151");

    obj.label152 = GUI.fromHandle(_obj_newObject("label"));
    obj.label152:setParent(obj.layout88);
    obj.label152:setAlign("left");
    obj.label152:setVertTextAlign("center");
    obj.label152:setHorzTextAlign("center");
    obj.label152:setText("Página");
    obj.label152:setWidth(55);
    obj.label152:setFontSize(16);
    obj.label152:setMargins({left = 5});
    obj.label152:setFontColor("#000000");
    obj.label152:setName("label152");


		function calculaMagias()
			if sheet == nil then return end; 
			local listaMagias = NDB.getChildNodes(sheet.campoMagias);
			
			sheet.qtdMagias = 0;
			
			for i=1, #listaMagias, 1 do
				
				if (listaMagias[i].magia_pt == 0 or listaMagias[i].magia_pt == nil) then
					sheet.qtdMagias = sheet.qtdMagias+1;
				else end;
				
				if (listaMagias[i].magia_pt ~= nil) then
					if (listaMagias[i].magia_pt == 1) then
						listaMagias[i].nivel_magia = -2;
					elseif (listaMagias[i].magia_pt == 2) then
						listaMagias[i].nivel_magia = -1;
					elseif (listaMagias[i].magia_pt >= 4) then
						listaMagias[i].nivel_magia = listaMagias[i].magia_pt/4 -1;
					else end;
				end;
								
				if (listaMagias[i].atributo == 'SAB') then
					listaMagias[i].nivel_magia_efetivo = (listaMagias[i].nivel_magia or 0) + (listaMagias[i].mod or 0) + (self.sab_mod.text or 0) + (sheet.nivelArcano or 0);
				elseif (listaMagias[i].atributo == 'INT') then
					listaMagias[i].nivel_magia_efetivo = (listaMagias[i].nivel_magia or 0) + (listaMagias[i].mod or 0) + (self.int_mod.text or 0) + (sheet.nivelArcano or 0);
				else end;
			end;			
		end;
	 


    obj.tab5 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab5:setParent(obj.tabControl1);
    obj.tab5:setTitle("Biografia");
    obj.tab5:setName("tab5");

    obj.alterion_2023_5 = GUI.fromHandle(_obj_newObject("form"));
    obj.alterion_2023_5:setParent(obj.tab5);
    obj.alterion_2023_5:setName("alterion_2023_5");
    obj.alterion_2023_5:setTheme("light");
    obj.alterion_2023_5:setAlign("client");

    obj.scrollBox5 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox5:setParent(obj.alterion_2023_5);
    obj.scrollBox5:setAlign("client");
    obj.scrollBox5:setName("scrollBox5");

    obj.rectangle54 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle54:setParent(obj.scrollBox5);
    obj.rectangle54:setLeft(20);
    obj.rectangle54:setWidth(1200);
    obj.rectangle54:setHeight(1500);
    obj.rectangle54:setColor("white");
    obj.rectangle54:setName("rectangle54");

    obj.richEdit1 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit1:setParent(obj.rectangle54);
    obj.richEdit1:setWidth(1400);
    obj.richEdit1:setHeight(900);
    obj.richEdit1:setField("biografia");
    obj.richEdit1:setName("richEdit1");

    obj.tab6 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab6:setParent(obj.tabControl1);
    obj.tab6:setTitle("Anotações");
    obj.tab6:setName("tab6");

    obj.alterion_2023_6 = GUI.fromHandle(_obj_newObject("form"));
    obj.alterion_2023_6:setParent(obj.tab6);
    obj.alterion_2023_6:setName("alterion_2023_6");
    obj.alterion_2023_6:setTheme("light");
    obj.alterion_2023_6:setAlign("client");

    obj.scrollBox6 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox6:setParent(obj.alterion_2023_6);
    obj.scrollBox6:setAlign("client");
    obj.scrollBox6:setName("scrollBox6");

    obj.rectangle55 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle55:setParent(obj.scrollBox6);
    obj.rectangle55:setWidth(1200);
    obj.rectangle55:setHeight(1500);
    obj.rectangle55:setColor("white");
    obj.rectangle55:setName("rectangle55");

    obj.richEdit2 = GUI.fromHandle(_obj_newObject("richEdit"));
    obj.richEdit2:setParent(obj.rectangle55);
    obj.richEdit2:setWidth(1100);
    obj.richEdit2:setHeight(1400);
    obj.richEdit2:setField("anotacoes");
    obj.richEdit2:setName("richEdit2");

    obj.tab7 = GUI.fromHandle(_obj_newObject("tab"));
    obj.tab7:setParent(obj.tabControl1);
    obj.tab7:setTitle("COMBATE!");
    obj.tab7:setName("tab7");

    obj.alterion_2023_7 = GUI.fromHandle(_obj_newObject("form"));
    obj.alterion_2023_7:setParent(obj.tab7);
    obj.alterion_2023_7:setName("alterion_2023_7");
    obj.alterion_2023_7:setTheme("light");
    obj.alterion_2023_7:setAlign("client");

    obj.scrollBox7 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox7:setParent(obj.alterion_2023_7);
    obj.scrollBox7:setAlign("client");
    obj.scrollBox7:setName("scrollBox7");

    obj.rectangle56 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle56:setParent(obj.scrollBox7);
    obj.rectangle56:setWidth(1400);
    obj.rectangle56:setHeight(1600);
    obj.rectangle56:setColor("white");
    obj.rectangle56:setName("rectangle56");

    obj.layout89 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout89:setParent(obj.rectangle56);
    obj.layout89:setTop(10);
    obj.layout89:setHeight(600);
    obj.layout89:setWidth(630);
    obj.layout89:setName("layout89");

    obj.layout90 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout90:setParent(obj.layout89);
    obj.layout90:setTop(0);
    obj.layout90:setLeft(00);
    obj.layout90:setHeight(35);
    obj.layout90:setWidth(630);
    obj.layout90:setName("layout90");

    obj.label153 = GUI.fromHandle(_obj_newObject("label"));
    obj.label153:setParent(obj.layout90);
    obj.label153:setAlign("left");
    obj.label153:setVertTextAlign("center");
    obj.label153:setHorzTextAlign("center");
    obj.label153:setText("Rolagem");
    obj.label153:setFontColor("#000000");
    obj.label153:setFontSize(16);
    obj.label153:setMargins({left = 35});
    obj.label153:setHeight(30);
    obj.label153:setWidth(330);
    obj.label153:setName("label153");

    obj.label154 = GUI.fromHandle(_obj_newObject("label"));
    obj.label154:setParent(obj.layout90);
    obj.label154:setAlign("left");
    obj.label154:setVertTextAlign("center");
    obj.label154:setHorzTextAlign("center");
    obj.label154:setText("Tipo");
    obj.label154:setFontColor("#000000");
    obj.label154:setFontSize(16);
    obj.label154:setMargins({left = 5});
    obj.label154:setHeight(30);
    obj.label154:setWidth(100);
    obj.label154:setName("label154");

    obj.label155 = GUI.fromHandle(_obj_newObject("label"));
    obj.label155:setParent(obj.layout90);
    obj.label155:setAlign("left");
    obj.label155:setVertTextAlign("center");
    obj.label155:setHorzTextAlign("center");
    obj.label155:setText("Valor");
    obj.label155:setFontColor("#000000");
    obj.label155:setFontSize(16);
    obj.label155:setMargins({left = 5});
    obj.label155:setHeight(30);
    obj.label155:setWidth(100);
    obj.label155:setName("label155");

    obj.layout91 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout91:setParent(obj.layout89);
    obj.layout91:setAlign("top");
    obj.layout91:setHeight(20);
    obj.layout91:setMargins({bottom=4 , left=5});
    obj.layout91:setName("layout91");

    obj.button35 = GUI.fromHandle(_obj_newObject("button"));
    obj.button35:setParent(obj.layout91);
    obj.button35:setText("Nova Rolagem");
    obj.button35:setWidth(100);
    obj.button35:setAlign("left");
    obj.button35:setName("button35");
    obj.button35:setFontColor("black");

    obj.rclListaDasRolagens = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaDasRolagens:setParent(obj.layout89);
    obj.rclListaDasRolagens:setName("rclListaDasRolagens");
    obj.rclListaDasRolagens:setField("campoDasRolagens");
    obj.rclListaDasRolagens:setTemplateForm("frmItemDaRolagem");
    obj.rclListaDasRolagens:setAlign("client");
    obj.rclListaDasRolagens:setSelectable(true);

    obj.layout92 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout92:setParent(obj.rectangle56);
    obj.layout92:setTop(5);
    obj.layout92:setHeight(80);
    obj.layout92:setWidth(1300);
    obj.layout92:setLeft(640);
    obj.layout92:setName("layout92");

    obj.rectangle57 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle57:setParent(obj.layout92);
    obj.rectangle57:setAlign("left");
    obj.rectangle57:setColor("white");
    obj.rectangle57:setStrokeSize(1.0);
    obj.rectangle57:setHeight(80);
    obj.rectangle57:setWidth(220);
    obj.rectangle57:setName("rectangle57");

    obj.rectangle58 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle58:setParent(obj.layout92);
    obj.rectangle58:setAlign("left");
    obj.rectangle58:setColor("white");
    obj.rectangle58:setStrokeSize(1.0);
    obj.rectangle58:setHeight(80);
    obj.rectangle58:setWidth(225);
    obj.rectangle58:setName("rectangle58");

    obj.layout93 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout93:setParent(obj.rectangle56);
    obj.layout93:setTop(5);
    obj.layout93:setHeight(80);
    obj.layout93:setWidth(1300);
    obj.layout93:setLeft(640);
    obj.layout93:setName("layout93");

    obj.label156 = GUI.fromHandle(_obj_newObject("label"));
    obj.label156:setParent(obj.layout93);
    obj.label156:setAlign("left");
    obj.label156:setVertTextAlign("center");
    obj.label156:setHorzTextAlign("center");
    obj.label156:setText("Peso Total: ");
    obj.label156:setWidth(100);
    obj.label156:setFontSize(14);
    obj.label156:setMargins({left = 2});
    obj.label156:setFontColor("#000000");
    obj.label156:setName("label156");

    obj.label157 = GUI.fromHandle(_obj_newObject("label"));
    obj.label157:setParent(obj.layout93);
    obj.label157:setAlign("left");
    obj.label157:setVertTextAlign("center");
    obj.label157:setHorzTextAlign("leading");
    obj.label157:setField("peso_total");
    obj.label157:setWidth(120);
    obj.label157:setFontSize(18);
    obj.label157:setMargins({left = 2});
    obj.label157:setFontColor("#00B0B0");
    obj.label157:setName("label157");

    obj.label158 = GUI.fromHandle(_obj_newObject("label"));
    obj.label158:setParent(obj.layout93);
    obj.label158:setAlign("left");
    obj.label158:setVertTextAlign("center");
    obj.label158:setHorzTextAlign("center");
    obj.label158:setText("Peso Total Sem Mochila: ");
    obj.label158:setWidth(100);
    obj.label158:setFontSize(14);
    obj.label158:setMargins({left = 2});
    obj.label158:setFontColor("#000000");
    obj.label158:setName("label158");

    obj.label159 = GUI.fromHandle(_obj_newObject("label"));
    obj.label159:setParent(obj.layout93);
    obj.label159:setAlign("left");
    obj.label159:setVertTextAlign("center");
    obj.label159:setHorzTextAlign("leading");
    obj.label159:setField("peso_total_sm");
    obj.label159:setWidth(120);
    obj.label159:setFontSize(18);
    obj.label159:setMargins({left = 4});
    obj.label159:setFontColor("#00B0B0");
    obj.label159:setName("label159");

    obj.layout94 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout94:setParent(obj.rectangle56);
    obj.layout94:setTop(90);
    obj.layout94:setHeight(80);
    obj.layout94:setWidth(1300);
    obj.layout94:setLeft(640);
    obj.layout94:setName("layout94");

    obj.rectangle59 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle59:setParent(obj.layout94);
    obj.rectangle59:setAlign("left");
    obj.rectangle59:setColor("white");
    obj.rectangle59:setStrokeSize(1.0);
    obj.rectangle59:setHeight(80);
    obj.rectangle59:setWidth(150);
    obj.rectangle59:setName("rectangle59");

    obj.rectangle60 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle60:setParent(obj.layout94);
    obj.rectangle60:setAlign("left");
    obj.rectangle60:setColor("white");
    obj.rectangle60:setStrokeSize(1.0);
    obj.rectangle60:setHeight(80);
    obj.rectangle60:setWidth(200);
    obj.rectangle60:setName("rectangle60");

    obj.layout95 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout95:setParent(obj.rectangle56);
    obj.layout95:setTop(90);
    obj.layout95:setHeight(80);
    obj.layout95:setWidth(1300);
    obj.layout95:setLeft(640);
    obj.layout95:setName("layout95");

    obj.label160 = GUI.fromHandle(_obj_newObject("label"));
    obj.label160:setParent(obj.layout95);
    obj.label160:setAlign("left");
    obj.label160:setVertTextAlign("center");
    obj.label160:setHorzTextAlign("center");
    obj.label160:setText("Deslocamento c/ mochila: ");
    obj.label160:setWidth(100);
    obj.label160:setFontSize(14);
    obj.label160:setMargins({left = 2});
    obj.label160:setFontColor("#000000");
    obj.label160:setName("label160");

    obj.label161 = GUI.fromHandle(_obj_newObject("label"));
    obj.label161:setParent(obj.layout95);
    obj.label161:setAlign("left");
    obj.label161:setVertTextAlign("center");
    obj.label161:setHorzTextAlign("center");
    obj.label161:setField("deslocamento_atual");
    obj.label161:setWidth(50);
    obj.label161:setFontSize(25);
    obj.label161:setMargins({left = 2});
    obj.label161:setFontColor("#00CC00");
    obj.label161:setName("label161");

    obj.label162 = GUI.fromHandle(_obj_newObject("label"));
    obj.label162:setParent(obj.layout95);
    obj.label162:setAlign("left");
    obj.label162:setVertTextAlign("center");
    obj.label162:setHorzTextAlign("center");
    obj.label162:setText("Defesa c/ mochila: ");
    obj.label162:setWidth(70);
    obj.label162:setFontSize(14);
    obj.label162:setMargins({left = 20});
    obj.label162:setFontColor("#000000");
    obj.label162:setName("label162");

    obj.label163 = GUI.fromHandle(_obj_newObject("label"));
    obj.label163:setParent(obj.layout95);
    obj.label163:setAlign("left");
    obj.label163:setVertTextAlign("center");
    obj.label163:setHorzTextAlign("center");
    obj.label163:setField("esquiva_atual");
    obj.label163:setWidth(60);
    obj.label163:setFontSize(25);
    obj.label163:setMargins({left = 2});
    obj.label163:setFontColor("#00CC00");
    obj.label163:setName("label163");

    obj.layout96 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout96:setParent(obj.rectangle56);
    obj.layout96:setTop(180);
    obj.layout96:setHeight(80);
    obj.layout96:setWidth(1300);
    obj.layout96:setLeft(640);
    obj.layout96:setName("layout96");

    obj.rectangle61 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle61:setParent(obj.layout96);
    obj.rectangle61:setAlign("left");
    obj.rectangle61:setColor("white");
    obj.rectangle61:setStrokeSize(1.0);
    obj.rectangle61:setHeight(80);
    obj.rectangle61:setWidth(150);
    obj.rectangle61:setName("rectangle61");

    obj.rectangle62 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle62:setParent(obj.layout96);
    obj.rectangle62:setAlign("left");
    obj.rectangle62:setColor("white");
    obj.rectangle62:setStrokeSize(1.0);
    obj.rectangle62:setHeight(80);
    obj.rectangle62:setWidth(200);
    obj.rectangle62:setName("rectangle62");

    obj.layout97 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout97:setParent(obj.rectangle56);
    obj.layout97:setTop(180);
    obj.layout97:setHeight(80);
    obj.layout97:setWidth(1300);
    obj.layout97:setLeft(640);
    obj.layout97:setName("layout97");

    obj.label164 = GUI.fromHandle(_obj_newObject("label"));
    obj.label164:setParent(obj.layout97);
    obj.label164:setAlign("left");
    obj.label164:setVertTextAlign("center");
    obj.label164:setHorzTextAlign("center");
    obj.label164:setText("Deslocamento sem mochila: ");
    obj.label164:setWidth(100);
    obj.label164:setFontSize(14);
    obj.label164:setMargins({left = 2});
    obj.label164:setFontColor("#000000");
    obj.label164:setName("label164");

    obj.label165 = GUI.fromHandle(_obj_newObject("label"));
    obj.label165:setParent(obj.layout97);
    obj.label165:setAlign("left");
    obj.label165:setVertTextAlign("center");
    obj.label165:setHorzTextAlign("center");
    obj.label165:setField("deslocamento_atual_sm");
    obj.label165:setWidth(50);
    obj.label165:setFontSize(25);
    obj.label165:setMargins({left = 2});
    obj.label165:setFontColor("#00CC00");
    obj.label165:setName("label165");

    obj.label166 = GUI.fromHandle(_obj_newObject("label"));
    obj.label166:setParent(obj.layout97);
    obj.label166:setAlign("left");
    obj.label166:setVertTextAlign("center");
    obj.label166:setHorzTextAlign("center");
    obj.label166:setText("Defesa sem mochila: ");
    obj.label166:setWidth(70);
    obj.label166:setFontSize(14);
    obj.label166:setMargins({left = 20});
    obj.label166:setFontColor("#000000");
    obj.label166:setName("label166");

    obj.label167 = GUI.fromHandle(_obj_newObject("label"));
    obj.label167:setParent(obj.layout97);
    obj.label167:setAlign("left");
    obj.label167:setVertTextAlign("center");
    obj.label167:setHorzTextAlign("center");
    obj.label167:setField("esquiva_atual_sm");
    obj.label167:setWidth(60);
    obj.label167:setFontSize(25);
    obj.label167:setMargins({left = 2});
    obj.label167:setFontColor("#00CC00");
    obj.label167:setName("label167");

    obj.layout98 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout98:setParent(obj.rectangle56);
    obj.layout98:setTop(55);
    obj.layout98:setHeight(26);
    obj.layout98:setWidth(1300);
    obj.layout98:setLeft(635);
    obj.layout98:setName("layout98");

    obj.label168 = GUI.fromHandle(_obj_newObject("label"));
    obj.label168:setParent(obj.layout98);
    obj.label168:setLeft(105);
    obj.label168:setVertTextAlign("center");
    obj.label168:setField("carga_Mochila");
    obj.label168:setWidth(200);
    obj.label168:setHeight(25);
    obj.label168:setFontSize(18);
    obj.label168:setFontColor("#DD0000");
    obj.label168:setName("label168");

    obj.label169 = GUI.fromHandle(_obj_newObject("label"));
    obj.label169:setParent(obj.layout98);
    obj.label169:setLeft(335);
    obj.label169:setVertTextAlign("center");
    obj.label169:setField("carga_SemMochila");
    obj.label169:setWidth(200);
    obj.label169:setHeight(25);
    obj.label169:setFontSize(18);
    obj.label169:setFontColor("#DD0000");
    obj.label169:setName("label169");

    obj._e_event0 = obj.edit6:addEventListener("onChange",
        function (_)
            if sheet == nil then return end; self.for_mod.text = (sheet.for2 or 0) - 10;
        end, obj);

    obj._e_event1 = obj.for_mod:addEventListener("onClick",
        function (_)
            Dialogs.inputQuery("Teste de Força", "Modificadores", "",
            						function (valorPreenchido)
            							if (valorPreenchido == nil) then valorPreenchido = 0 end;									
            							local rolagem = Firecast.interpretarRolagem("1d20+"..self.for_mod.text.."+"..valorPreenchido);
            							local mesaDoPersonagem = Firecast.getMesaDe(sheet);								
            							mesaDoPersonagem.chat:rolarDados(rolagem, "Teste de Força",function(rolado) end);
            							
            							end,nil,true);
        end, obj);

    obj._e_event2 = obj.edit7:addEventListener("onChange",
        function (_)
            if sheet == nil then return end; self.des_mod.text = (sheet.des or 0) - 10;
        end, obj);

    obj._e_event3 = obj.des_mod:addEventListener("onClick",
        function (_)
            Dialogs.inputQuery("Teste de Destreza", "Modificadores", "",
            						function (valorPreenchido)
            							if (valorPreenchido == nil) then valorPreenchido = 0 end;									
            							local rolagem = Firecast.interpretarRolagem("1d20+"..self.des_mod.text.."+"..valorPreenchido);
            							local mesaDoPersonagem = Firecast.getMesaDe(sheet);								
            							mesaDoPersonagem.chat:rolarDados(rolagem, "Teste de Destreza",function(rolado) end);
            							
            							end,nil,true);
        end, obj);

    obj._e_event4 = obj.edit8:addEventListener("onChange",
        function (_)
            if sheet == nil then return end; self.int_mod.text = (sheet.int or 0) - 10;
        end, obj);

    obj._e_event5 = obj.int_mod:addEventListener("onClick",
        function (_)
            Dialogs.inputQuery("Teste de Inteligência", "Modificadores", "",
            						function (valorPreenchido)
            							if (valorPreenchido == nil) then valorPreenchido = 0 end;									
            							local rolagem = Firecast.interpretarRolagem("1d20+"..self.int_mod.text.."+"..valorPreenchido);
            							local mesaDoPersonagem = Firecast.getMesaDe(sheet);								
            							mesaDoPersonagem.chat:rolarDados(rolagem, "Teste de Inteligência",function(rolado) end);
            							
            							end,nil,true);
        end, obj);

    obj._e_event6 = obj.edit9:addEventListener("onChange",
        function (_)
            if sheet == nil then return end; self.von_mod.text = (sheet.von or 0) - 10;
        end, obj);

    obj._e_event7 = obj.von_mod:addEventListener("onClick",
        function (_)
            Dialogs.inputQuery("Teste de Vontade", "Modificadores", "",
            						function (valorPreenchido)
            							if (valorPreenchido == nil) then valorPreenchido = 0 end;									
            							local rolagem = Firecast.interpretarRolagem("1d20+"..self.von_mod.text.."+"..valorPreenchido);
            							local mesaDoPersonagem = Firecast.getMesaDe(sheet);								
            							mesaDoPersonagem.chat:rolarDados(rolagem, "Teste de Vontade",function(rolado) end);
            							
            						end,nil,true);
        end, obj);

    obj._e_event8 = obj.edit12:addEventListener("onChange",
        function (_)
            if sheet == nil then return end; self.atq_mod.text = (sheet.atq or 0);
        end, obj);

    obj._e_event9 = obj.atq_mod:addEventListener("onClick",
        function (_)
            Dialogs.inputQuery("Teste de Ataque", "Modificadores", "",
            					function (valorPreenchido)
            						if (valorPreenchido == nil) then valorPreenchido = 0 end;									
            						local rolagem = Firecast.interpretarRolagem("1d20+"..self.atq_mod.text.."+"..valorPreenchido);
            						local mesaDoPersonagem = Firecast.getMesaDe(sheet);								
            						mesaDoPersonagem.chat:rolarDados(rolagem, "Teste de Ataque",function(rolado) end);
            						
            						end,nil,true);
        end, obj);

    obj._e_event10 = obj.edit13:addEventListener("onChange",
        function (_)
            if sheet == nil then return end; self.def_mod.text = (sheet.esquiva or 0) - 10; esquiva(); self.calculaPeso();
        end, obj);

    obj._e_event11 = obj.def_mod:addEventListener("onClick",
        function (_)
            Dialogs.inputQuery("Teste de Defesa", "Modificadores", "",
            				function (valorPreenchido)
            					if (valorPreenchido == nil) then valorPreenchido = 0 end;									
            					local rolagem = Firecast.interpretarRolagem("1d20+"..self.def_mod.text.."+"..valorPreenchido);
            					local mesaDoPersonagem = Firecast.getMesaDe(sheet);								
            					mesaDoPersonagem.chat:rolarDados(rolagem, "Teste de Defesa",function(rolado) end);
            					
            					end,nil,true);
        end, obj);

    obj._e_event12 = obj.edit16:addEventListener("onChange",
        function (_)
            	if sheet == nil then return end;
            									sheet.base_carga2 = sheet.base_carga * 3;
            									sheet.base_carga3 = sheet.base_carga * 6;
            									sheet.base_carga6 = sheet.base_carga * 10;
            									sheet.base_carga10 = sheet.base_carga * 10;
            									self.calculaPeso();
        end, obj);

    obj._e_event13 = obj.edit18:addEventListener("onChange",
        function (_)
            if sheet == nil then return end;
            			sheet.desloc08 = tonumber((sheet.deslocamento-1));
            			sheet.desloc06 = tonumber((sheet.deslocamento-2));
            			sheet.desloc04 = tonumber((sheet.deslocamento-3));
            			sheet.desloc02 = tonumber((sheet.deslocamento-4));
            			self.calculaPeso();
        end, obj);

    obj._e_event14 = obj.button1:addEventListener("onClick",
        function (_)
            self.rcListaVantagens:append();
        end, obj);

    obj._e_event15 = obj.rcListaVantagens:addEventListener("onSelect",
        function (_)
            calculaPericias();
        end, obj);

    obj._e_event16 = obj.button2:addEventListener("onClick",
        function (_)
            calculaPericias()
        end, obj);

    obj._e_event17 = obj.dataLink1:addEventListener("onChange",
        function (_, field, oldValue, newValue)
            if sheet == nil then return end;		
            		calculaPericias()
        end, obj);

    obj._e_event18 = obj.button3:addEventListener("onClick",
        function (_)
            calculaPericias()
        end, obj);

    obj._e_event19 = obj.button4:addEventListener("onClick",
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

    obj._e_event20 = obj.button5:addEventListener("onClick",
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

    obj._e_event21 = obj.button6:addEventListener("onClick",
        function (_)
            sheet.orderbyPericias = 0;
            						self.rclListaDosItens:sort();
        end, obj);

    obj._e_event22 = obj.button7:addEventListener("onClick",
        function (_)
            sheet.orderbyPericias = 1;
            						self.rclListaDosItens:sort();
        end, obj);

    obj._e_event23 = obj.button8:addEventListener("onClick",
        function (_)
            sheet.orderbyPericias = 2;
            						self.rclListaDosItens:sort();
        end, obj);

    obj._e_event24 = obj.button9:addEventListener("onClick",
        function (_)
            sheet.orderbyPericias = 3;
            						self.rclListaDosItens:sort();
        end, obj);

    obj._e_event25 = obj.button10:addEventListener("onClick",
        function (_)
            sheet.orderbyPericias = 4;
            						self.rclListaDosItens:sort();
        end, obj);

    obj._e_event26 = obj.button11:addEventListener("onClick",
        function (_)
            self.rclListaDosItens:append();
        end, obj);

    obj._e_event27 = obj.rclListaDosItens:addEventListener("onSelect",
        function (_)
            calculaPericias();
        end, obj);

    obj._e_event28 = obj.rclListaDosItens:addEventListener("onCompare",
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

    obj._e_event29 = obj.button12:addEventListener("onClick",
        function (_)
            self.calculaCusto();
            						self.calculaPeso();
        end, obj);

    obj._e_event30 = obj.edit23:addEventListener("onChange",
        function (_)
            self.calculaPeso();
        end, obj);

    obj._e_event31 = obj.button13:addEventListener("onClick",
        function (_)
            self.rclListaPossesMoveis:append();
            					sheet.campoPossesMoveis.pm1 = {posse_nome="Mochila Pequena", posse_local = "", posse_notas = "Suporta 20kg de carga", posse_qtd = 1, posse_custo = 60, posse_peso = 1.5};
            					sheet.campoPossesMoveis.pm2 = {posse_nome="Odre", posse_local = "Mochila", posse_notas = "Capacidade 4 Litros (4 kg)", posse_qtd = 1, posse_custo = 10, posse_peso =0.12};
            					sheet.campoPossesMoveis.pm3 = {posse_nome="Doses de água", posse_local = "Odre", posse_notas = "", posse_qtd = 8, posse_custo = 0, posse_peso =0.5};
            					sheet.campoPossesMoveis.pm4 = {posse_nome="Equipamento Básico Pessoal", posse_local = "Mochila", posse_notas = "Caixa de fogo e utensílios", posse_qtd = 1, posse_custo = 5, posse_peso = 0.5};
            					sheet.campoPossesMoveis.pm5 = {posse_nome="Algibeira", posse_local = "Mochila", posse_notas = "Capacidade 1,5 kg (150 moedas)", posse_qtd = 1, posse_custo = 10, posse_peso =0.1};		
            					sheet.campoPossesMoveis.pm6 = {posse_nome="Moedas de Cobre", posse_local = "Algibeira", posse_notas = "", posse_qtd = 0, posse_custo = 1, posse_peso =0.01};
            					sheet.campoPossesMoveis.pm7 = {posse_nome="Moedas de Prata", posse_local = "Algibeira", posse_notas = "", posse_qtd = 0, posse_custo = 10, posse_peso =0.01};
            					sheet.campoPossesMoveis.pm8 = {posse_nome="Moedas de Ouro", posse_local = "Algibeira", posse_notas = "", posse_qtd = 0, posse_custo = 200, posse_peso =0.01};
            					sheet.campoPossesMoveis.pm9 = {posse_nome="Rações de Viagem", posse_local = "Mochila", posse_notas = "Refeição de carne seca, queijo, etc.", posse_qtd = 9, posse_custo = 2, posse_peso =0.25};
            					sheet.campoPossesMoveis.pm10 = {posse_nome="Pelagem quente", posse_local = "Mochila", posse_notas = "A winter bedroll", posse_qtd = 1, posse_custo = 50, posse_peso =4};
            					sheet.campoPossesMoveis.pm11 = {posse_nome="Barraca, 1 pessoa", posse_local = "Mochila", posse_notas = "Inclui cordas", posse_qtd = 1, posse_custo = 50, posse_peso =2.5};
            					sheet.campoPossesMoveis.pm12 = {posse_nome="Cobertor", posse_local = "Mochila", posse_notas = "", posse_qtd = 1, posse_custo = 20, posse_peso = 2};
            					sheet.campoPossesMoveis.pm13 = {posse_nome="Linha e Anzol", posse_local = "Mochila", posse_notas = "Básico para pesca", posse_qtd = 1, posse_custo = 50, posse_peso =0.05};
        end, obj);

    obj._e_event32 = obj.button14:addEventListener("onClick",
        function (_)
            self.calculaCusto();
            						self.calculaPeso();
        end, obj);

    obj._e_event33 = obj.button15:addEventListener("onClick",
        function (_)
            self.rclListaArmasCaC:append();
        end, obj);

    obj._e_event34 = obj.rclListaArmasCaC:addEventListener("onSelect",
        function (_)
            self.calculaPeso();
            						self.calculaCusto();
        end, obj);

    obj._e_event35 = obj.button16:addEventListener("onClick",
        function (_)
            self.rclListaArmaduras:append();
        end, obj);

    obj._e_event36 = obj.rclListaArmaduras:addEventListener("onSelect",
        function (_)
            self.calculaPeso();
            						self.calculaCusto();
        end, obj);

    obj._e_event37 = obj.button17:addEventListener("onClick",
        function (_)
            sheet.orderbyMochila = 0;
            						self.rclListaPossesMoveis:sort();
        end, obj);

    obj._e_event38 = obj.button18:addEventListener("onClick",
        function (_)
            sheet.orderbyMochila = 1;
            						self.rclListaPossesMoveis:sort();
        end, obj);

    obj._e_event39 = obj.button19:addEventListener("onClick",
        function (_)
            sheet.orderbyMochila = 2;
            						self.rclListaPossesMoveis:sort();
        end, obj);

    obj._e_event40 = obj.button20:addEventListener("onClick",
        function (_)
            sheet.orderbyMochila = 3;
            						self.rclListaPossesMoveis:sort();
        end, obj);

    obj._e_event41 = obj.button21:addEventListener("onClick",
        function (_)
            sheet.orderbyMochila = 4;
            						self.rclListaPossesMoveis:sort();
        end, obj);

    obj._e_event42 = obj.button22:addEventListener("onClick",
        function (_)
            sheet.orderbyMochila = 5;
            						self.rclListaPossesMoveis:sort();
        end, obj);

    obj._e_event43 = obj.button23:addEventListener("onClick",
        function (_)
            self.rclListaPossesMoveis:append();
        end, obj);

    obj._e_event44 = obj.rclListaPossesMoveis:addEventListener("onSelect",
        function (_)
            self.calculaPeso();
            						self.calculaCusto();
        end, obj);

    obj._e_event45 = obj.rclListaPossesMoveis:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            self.calculaPeso();
            						self.calculaCusto();
            						
            						if (sheet.orderbyMochila == 0) then
            							return Utils.compareStringPtBr(nodeA.posse_nome, nodeB.posse_nome);
            						elseif (sheet.orderbyMochila == 1) then
            							return Utils.compareStringPtBr(nodeA.posse_local, nodeB.posse_local);
            						elseif (sheet.orderbyMochila == 2) then
            							return Utils.compareStringPtBr(nodeA.posse_notas, nodeB.posse_notas);
            							
            						elseif (sheet.orderbyMochila == 3) then
            							if (	(tonumber(nodeA.posse_qtd) or 0) < (tonumber(nodeB.posse_qtd) or 0))	then
            								return -1;
            							elseif	((tonumber(nodeA.posse_qtd) or 0) > (tonumber(nodeB.posse_qtd) or 0) )then
            								return 1;
            							else
            								return Utils.compareStringPtBr(nodeA.posse_nome, nodeB.posse_nome);
            							end;
            							
            						elseif (sheet.orderbyMochila == 4) then
            							if (	(tonumber(nodeA.posse_custo) or 0) < (tonumber(nodeB.posse_custo) or 0)	)then
            								return -1;
            							elseif (	(tonumber(nodeA.posse_custo) or 0) > (tonumber(nodeB.posse_custo) or 0)	)then
            								return 1;
            							else
            								return Utils.compareStringPtBr(nodeA.posse_nome, nodeB.posse_nome);
            							end;
            							
            						elseif (sheet.orderbyMochila == 5) then
            							if (	(tonumber(nodeA.posse_peso) or 0) < (tonumber(nodeB.posse_peso) or 0)	)then
            								return -1;
            							elseif (	(tonumber(nodeA.posse_peso) or 0) > (tonumber(nodeB.posse_peso) or 0)	)then
            								return 1;
            							else
            								return Utils.compareStringPtBr(nodeA.posse_nome, nodeB.posse_nome);
            							end;		
            						
            						end;
        end, obj);

    obj._e_event46 = obj.button24:addEventListener("onClick",
        function (_)
            self.rclListaPossesMoveisFM:append();
        end, obj);

    obj._e_event47 = obj.rclListaPossesMoveisFM:addEventListener("onSelect",
        function (_)
            self.calculaPeso();
            						self.calculaCusto();
        end, obj);

    obj._e_event48 = obj.button25:addEventListener("onClick",
        function (_)
            self.rclListaOutrasPosses:append();
        end, obj);

    obj._e_event49 = obj.rclListaOutrasPosses:addEventListener("onSelect",
        function (_)
            self.calculaCusto();
        end, obj);

    obj._e_event50 = obj.button26:addEventListener("onClick",
        function (_)
            calculaPericias();
            						calculaMagias();
        end, obj);

    obj._e_event51 = obj.button27:addEventListener("onClick",
        function (_)
            sheet.orderby = 0;
            						self.rclListaMagias:sort();
        end, obj);

    obj._e_event52 = obj.button28:addEventListener("onClick",
        function (_)
            sheet.orderby = 1;
            						self.rclListaMagias:sort();
        end, obj);

    obj._e_event53 = obj.button29:addEventListener("onClick",
        function (_)
            sheet.orderby = 2;
            						self.rclListaMagias:sort();
        end, obj);

    obj._e_event54 = obj.button30:addEventListener("onClick",
        function (_)
            sheet.orderby = 3;
            						self.rclListaMagias:sort();
        end, obj);

    obj._e_event55 = obj.button31:addEventListener("onClick",
        function (_)
            sheet.orderby = 4;
            						self.rclListaMagias:sort();
        end, obj);

    obj._e_event56 = obj.button32:addEventListener("onClick",
        function (_)
            sheet.orderby = 5;
            						self.rclListaMagias:sort();
        end, obj);

    obj._e_event57 = obj.button33:addEventListener("onClick",
        function (_)
            sheet.orderby = 6;
            						self.rclListaMagias:sort();
        end, obj);

    obj._e_event58 = obj.button34:addEventListener("onClick",
        function (_)
            self.rclListaMagias:append();
        end, obj);

    obj._e_event59 = obj.rclListaMagias:addEventListener("onSelect",
        function (_)
            calculaPericias();
            						  calculaMagias();
        end, obj);

    obj._e_event60 = obj.rclListaMagias:addEventListener("onCompare",
        function (_, nodeA, nodeB)
            calculaPericias();
            						
            						if (sheet.orderby == 0) then
            							return Utils.compareStringPtBr(nodeA.magia, nodeB.magia);
            						elseif (sheet.orderby == 1) then
            							return Utils.compareStringPtBr(nodeA.atributo, nodeB.atributo);
            						elseif (sheet.orderby == 2) then
            							return Utils.compareStringPtBr(nodeA.mod, nodeB.mod);
            						elseif (sheet.orderby == 3) then
            							return Utils.compareStringPtBr(nodeA.nivel_magia, nodeB.nivel_magia);
            						elseif (sheet.orderby == 4) then
            							return Utils.compareStringPtBr(nodeA.mana, nodeB.mana);
            						elseif (sheet.orderby == 5) then
            							return Utils.compareStringPtBr(nodeA.magia_pt, nodeB.magia_pt);
            						elseif (sheet.orderby == 6) then
            							return Utils.compareStringPtBr(nodeA.notas, nodeB.notas);						
            						else
            							return Utils.compareStringPtBr(nodeA.magia, nodeB.magia);
            						end;
        end, obj);

    obj._e_event61 = obj.button35:addEventListener("onClick",
        function (_)
            self.rclListaDasRolagens:append();
        end, obj);

    function obj:_releaseEvents()
        __o_rrpgObjs.removeEventListenerById(self._e_event61);
        __o_rrpgObjs.removeEventListenerById(self._e_event60);
        __o_rrpgObjs.removeEventListenerById(self._e_event59);
        __o_rrpgObjs.removeEventListenerById(self._e_event58);
        __o_rrpgObjs.removeEventListenerById(self._e_event57);
        __o_rrpgObjs.removeEventListenerById(self._e_event56);
        __o_rrpgObjs.removeEventListenerById(self._e_event55);
        __o_rrpgObjs.removeEventListenerById(self._e_event54);
        __o_rrpgObjs.removeEventListenerById(self._e_event53);
        __o_rrpgObjs.removeEventListenerById(self._e_event52);
        __o_rrpgObjs.removeEventListenerById(self._e_event51);
        __o_rrpgObjs.removeEventListenerById(self._e_event50);
        __o_rrpgObjs.removeEventListenerById(self._e_event49);
        __o_rrpgObjs.removeEventListenerById(self._e_event48);
        __o_rrpgObjs.removeEventListenerById(self._e_event47);
        __o_rrpgObjs.removeEventListenerById(self._e_event46);
        __o_rrpgObjs.removeEventListenerById(self._e_event45);
        __o_rrpgObjs.removeEventListenerById(self._e_event44);
        __o_rrpgObjs.removeEventListenerById(self._e_event43);
        __o_rrpgObjs.removeEventListenerById(self._e_event42);
        __o_rrpgObjs.removeEventListenerById(self._e_event41);
        __o_rrpgObjs.removeEventListenerById(self._e_event40);
        __o_rrpgObjs.removeEventListenerById(self._e_event39);
        __o_rrpgObjs.removeEventListenerById(self._e_event38);
        __o_rrpgObjs.removeEventListenerById(self._e_event37);
        __o_rrpgObjs.removeEventListenerById(self._e_event36);
        __o_rrpgObjs.removeEventListenerById(self._e_event35);
        __o_rrpgObjs.removeEventListenerById(self._e_event34);
        __o_rrpgObjs.removeEventListenerById(self._e_event33);
        __o_rrpgObjs.removeEventListenerById(self._e_event32);
        __o_rrpgObjs.removeEventListenerById(self._e_event31);
        __o_rrpgObjs.removeEventListenerById(self._e_event30);
        __o_rrpgObjs.removeEventListenerById(self._e_event29);
        __o_rrpgObjs.removeEventListenerById(self._e_event28);
        __o_rrpgObjs.removeEventListenerById(self._e_event27);
        __o_rrpgObjs.removeEventListenerById(self._e_event26);
        __o_rrpgObjs.removeEventListenerById(self._e_event25);
        __o_rrpgObjs.removeEventListenerById(self._e_event24);
        __o_rrpgObjs.removeEventListenerById(self._e_event23);
        __o_rrpgObjs.removeEventListenerById(self._e_event22);
        __o_rrpgObjs.removeEventListenerById(self._e_event21);
        __o_rrpgObjs.removeEventListenerById(self._e_event20);
        __o_rrpgObjs.removeEventListenerById(self._e_event19);
        __o_rrpgObjs.removeEventListenerById(self._e_event18);
        __o_rrpgObjs.removeEventListenerById(self._e_event17);
        __o_rrpgObjs.removeEventListenerById(self._e_event16);
        __o_rrpgObjs.removeEventListenerById(self._e_event15);
        __o_rrpgObjs.removeEventListenerById(self._e_event14);
        __o_rrpgObjs.removeEventListenerById(self._e_event13);
        __o_rrpgObjs.removeEventListenerById(self._e_event12);
        __o_rrpgObjs.removeEventListenerById(self._e_event11);
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

        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.layout83 ~= nil then self.layout83:destroy(); self.layout83 = nil; end;
        if self.label119 ~= nil then self.label119:destroy(); self.label119 = nil; end;
        if self.button15 ~= nil then self.button15:destroy(); self.button15 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.layout64 ~= nil then self.layout64:destroy(); self.layout64 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.label97 ~= nil then self.label97:destroy(); self.label97 = nil; end;
        if self.label77 ~= nil then self.label77:destroy(); self.label77 = nil; end;
        if self.label128 ~= nil then self.label128:destroy(); self.label128 = nil; end;
        if self.rectangle35 ~= nil then self.rectangle35:destroy(); self.rectangle35 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.layout94 ~= nil then self.layout94:destroy(); self.layout94 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.label96 ~= nil then self.label96:destroy(); self.label96 = nil; end;
        if self.label92 ~= nil then self.label92:destroy(); self.label92 = nil; end;
        if self.rectangle46 ~= nil then self.rectangle46:destroy(); self.rectangle46 = nil; end;
        if self.layout47 ~= nil then self.layout47:destroy(); self.layout47 = nil; end;
        if self.alterion_2023_5 ~= nil then self.alterion_2023_5:destroy(); self.alterion_2023_5 = nil; end;
        if self.label148 ~= nil then self.label148:destroy(); self.label148 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label75 ~= nil then self.label75:destroy(); self.label75 = nil; end;
        if self.button16 ~= nil then self.button16:destroy(); self.button16 = nil; end;
        if self.rectangle47 ~= nil then self.rectangle47:destroy(); self.rectangle47 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.label158 ~= nil then self.label158:destroy(); self.label158 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.label70 ~= nil then self.label70:destroy(); self.label70 = nil; end;
        if self.label143 ~= nil then self.label143:destroy(); self.label143 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.label164 ~= nil then self.label164:destroy(); self.label164 = nil; end;
        if self.label122 ~= nil then self.label122:destroy(); self.label122 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout62 ~= nil then self.layout62:destroy(); self.layout62 = nil; end;
        if self.layout89 ~= nil then self.layout89:destroy(); self.layout89 = nil; end;
        if self.button35 ~= nil then self.button35:destroy(); self.button35 = nil; end;
        if self.rectangle59 ~= nil then self.rectangle59:destroy(); self.rectangle59 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label125 ~= nil then self.label125:destroy(); self.label125 = nil; end;
        if self.def_mod ~= nil then self.def_mod:destroy(); self.def_mod = nil; end;
        if self.label146 ~= nil then self.label146:destroy(); self.label146 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.layout88 ~= nil then self.layout88:destroy(); self.layout88 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.layout71 ~= nil then self.layout71:destroy(); self.layout71 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label99 ~= nil then self.label99:destroy(); self.label99 = nil; end;
        if self.label107 ~= nil then self.label107:destroy(); self.label107 = nil; end;
        if self.label161 ~= nil then self.label161:destroy(); self.label161 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.label163 ~= nil then self.label163:destroy(); self.label163 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.label82 ~= nil then self.label82:destroy(); self.label82 = nil; end;
        if self.rectangle33 ~= nil then self.rectangle33:destroy(); self.rectangle33 = nil; end;
        if self.rectangle51 ~= nil then self.rectangle51:destroy(); self.rectangle51 = nil; end;
        if self.label162 ~= nil then self.label162:destroy(); self.label162 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.layout52 ~= nil then self.layout52:destroy(); self.layout52 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.button21 ~= nil then self.button21:destroy(); self.button21 = nil; end;
        if self.alterion_2023_2 ~= nil then self.alterion_2023_2:destroy(); self.alterion_2023_2 = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.button26 ~= nil then self.button26:destroy(); self.button26 = nil; end;
        if self.label76 ~= nil then self.label76:destroy(); self.label76 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.rectangle55 ~= nil then self.rectangle55:destroy(); self.rectangle55 = nil; end;
        if self.layout42 ~= nil then self.layout42:destroy(); self.layout42 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.layout61 ~= nil then self.layout61:destroy(); self.layout61 = nil; end;
        if self.label109 ~= nil then self.label109:destroy(); self.label109 = nil; end;
        if self.label106 ~= nil then self.label106:destroy(); self.label106 = nil; end;
        if self.label103 ~= nil then self.label103:destroy(); self.label103 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.label94 ~= nil then self.label94:destroy(); self.label94 = nil; end;
        if self.rectangle48 ~= nil then self.rectangle48:destroy(); self.rectangle48 = nil; end;
        if self.layout55 ~= nil then self.layout55:destroy(); self.layout55 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.layout78 ~= nil then self.layout78:destroy(); self.layout78 = nil; end;
        if self.label111 ~= nil then self.label111:destroy(); self.label111 = nil; end;
        if self.label91 ~= nil then self.label91:destroy(); self.label91 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.tabControl1 ~= nil then self.tabControl1:destroy(); self.tabControl1 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.rectangle61 ~= nil then self.rectangle61:destroy(); self.rectangle61 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.rectangle52 ~= nil then self.rectangle52:destroy(); self.rectangle52 = nil; end;
        if self.label116 ~= nil then self.label116:destroy(); self.label116 = nil; end;
        if self.label139 ~= nil then self.label139:destroy(); self.label139 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.rectangle50 ~= nil then self.rectangle50:destroy(); self.rectangle50 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.rectangle58 ~= nil then self.rectangle58:destroy(); self.rectangle58 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.label147 ~= nil then self.label147:destroy(); self.label147 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.von_mod ~= nil then self.von_mod:destroy(); self.von_mod = nil; end;
        if self.rclListaPossesMoveisFM ~= nil then self.rclListaPossesMoveisFM:destroy(); self.rclListaPossesMoveisFM = nil; end;
        if self.label89 ~= nil then self.label89:destroy(); self.label89 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.rclListaOutrasPosses ~= nil then self.rclListaOutrasPosses:destroy(); self.rclListaOutrasPosses = nil; end;
        if self.button33 ~= nil then self.button33:destroy(); self.button33 = nil; end;
        if self.rclListaDasRolagens ~= nil then self.rclListaDasRolagens:destroy(); self.rclListaDasRolagens = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.rectangle42 ~= nil then self.rectangle42:destroy(); self.rectangle42 = nil; end;
        if self.label115 ~= nil then self.label115:destroy(); self.label115 = nil; end;
        if self.label159 ~= nil then self.label159:destroy(); self.label159 = nil; end;
        if self.scrollBox5 ~= nil then self.scrollBox5:destroy(); self.scrollBox5 = nil; end;
        if self.richEdit2 ~= nil then self.richEdit2:destroy(); self.richEdit2 = nil; end;
        if self.layout51 ~= nil then self.layout51:destroy(); self.layout51 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.label127 ~= nil then self.label127:destroy(); self.label127 = nil; end;
        if self.label142 ~= nil then self.label142:destroy(); self.label142 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.tab3 ~= nil then self.tab3:destroy(); self.tab3 = nil; end;
        if self.int_mod ~= nil then self.int_mod:destroy(); self.int_mod = nil; end;
        if self.layout69 ~= nil then self.layout69:destroy(); self.layout69 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.button28 ~= nil then self.button28:destroy(); self.button28 = nil; end;
        if self.scrollBox7 ~= nil then self.scrollBox7:destroy(); self.scrollBox7 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.layout60 ~= nil then self.layout60:destroy(); self.layout60 = nil; end;
        if self.label73 ~= nil then self.label73:destroy(); self.label73 = nil; end;
        if self.layout59 ~= nil then self.layout59:destroy(); self.layout59 = nil; end;
        if self.layout72 ~= nil then self.layout72:destroy(); self.layout72 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.label90 ~= nil then self.label90:destroy(); self.label90 = nil; end;
        if self.layout90 ~= nil then self.layout90:destroy(); self.layout90 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.tab2 ~= nil then self.tab2:destroy(); self.tab2 = nil; end;
        if self.button30 ~= nil then self.button30:destroy(); self.button30 = nil; end;
        if self.rclListaMagias ~= nil then self.rclListaMagias:destroy(); self.rclListaMagias = nil; end;
        if self.label93 ~= nil then self.label93:destroy(); self.label93 = nil; end;
        if self.edit24 ~= nil then self.edit24:destroy(); self.edit24 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.rectangle38 ~= nil then self.rectangle38:destroy(); self.rectangle38 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.label129 ~= nil then self.label129:destroy(); self.label129 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.rclListaArmasCaC ~= nil then self.rclListaArmasCaC:destroy(); self.rclListaArmasCaC = nil; end;
        if self.rectangle45 ~= nil then self.rectangle45:destroy(); self.rectangle45 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.button32 ~= nil then self.button32:destroy(); self.button32 = nil; end;
        if self.label86 ~= nil then self.label86:destroy(); self.label86 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.rectangle53 ~= nil then self.rectangle53:destroy(); self.rectangle53 = nil; end;
        if self.button27 ~= nil then self.button27:destroy(); self.button27 = nil; end;
        if self.label133 ~= nil then self.label133:destroy(); self.label133 = nil; end;
        if self.edit21 ~= nil then self.edit21:destroy(); self.edit21 = nil; end;
        if self.button24 ~= nil then self.button24:destroy(); self.button24 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.layout76 ~= nil then self.layout76:destroy(); self.layout76 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.rectangle62 ~= nil then self.rectangle62:destroy(); self.rectangle62 = nil; end;
        if self.label102 ~= nil then self.label102:destroy(); self.label102 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.label132 ~= nil then self.label132:destroy(); self.label132 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.label81 ~= nil then self.label81:destroy(); self.label81 = nil; end;
        if self.layout97 ~= nil then self.layout97:destroy(); self.layout97 = nil; end;
        if self.label166 ~= nil then self.label166:destroy(); self.label166 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.layout70 ~= nil then self.layout70:destroy(); self.layout70 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle30 ~= nil then self.rectangle30:destroy(); self.rectangle30 = nil; end;
        if self.layout67 ~= nil then self.layout67:destroy(); self.layout67 = nil; end;
        if self.rclListaPossesMoveis ~= nil then self.rclListaPossesMoveis:destroy(); self.rclListaPossesMoveis = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.label79 ~= nil then self.label79:destroy(); self.label79 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.rectangle40 ~= nil then self.rectangle40:destroy(); self.rectangle40 = nil; end;
        if self.rectangle36 ~= nil then self.rectangle36:destroy(); self.rectangle36 = nil; end;
        if self.label108 ~= nil then self.label108:destroy(); self.label108 = nil; end;
        if self.button31 ~= nil then self.button31:destroy(); self.button31 = nil; end;
        if self.alterion_2023_7 ~= nil then self.alterion_2023_7:destroy(); self.alterion_2023_7 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.rcListaVantagens ~= nil then self.rcListaVantagens:destroy(); self.rcListaVantagens = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.button18 ~= nil then self.button18:destroy(); self.button18 = nil; end;
        if self.scrollBox4 ~= nil then self.scrollBox4:destroy(); self.scrollBox4 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.layout48 ~= nil then self.layout48:destroy(); self.layout48 = nil; end;
        if self.layout73 ~= nil then self.layout73:destroy(); self.layout73 = nil; end;
        if self.label124 ~= nil then self.label124:destroy(); self.label124 = nil; end;
        if self.label84 ~= nil then self.label84:destroy(); self.label84 = nil; end;
        if self.layout98 ~= nil then self.layout98:destroy(); self.layout98 = nil; end;
        if self.tab1 ~= nil then self.tab1:destroy(); self.tab1 = nil; end;
        if self.alterion_2023_4 ~= nil then self.alterion_2023_4:destroy(); self.alterion_2023_4 = nil; end;
        if self.layout75 ~= nil then self.layout75:destroy(); self.layout75 = nil; end;
        if self.rectangle34 ~= nil then self.rectangle34:destroy(); self.rectangle34 = nil; end;
        if self.label110 ~= nil then self.label110:destroy(); self.label110 = nil; end;
        if self.rectangle37 ~= nil then self.rectangle37:destroy(); self.rectangle37 = nil; end;
        if self.layout58 ~= nil then self.layout58:destroy(); self.layout58 = nil; end;
        if self.label151 ~= nil then self.label151:destroy(); self.label151 = nil; end;
        if self.label138 ~= nil then self.label138:destroy(); self.label138 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.layout63 ~= nil then self.layout63:destroy(); self.layout63 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.label71 ~= nil then self.label71:destroy(); self.label71 = nil; end;
        if self.layout41 ~= nil then self.layout41:destroy(); self.layout41 = nil; end;
        if self.label160 ~= nil then self.label160:destroy(); self.label160 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label144 ~= nil then self.label144:destroy(); self.label144 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.label68 ~= nil then self.label68:destroy(); self.label68 = nil; end;
        if self.button20 ~= nil then self.button20:destroy(); self.button20 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.layout68 ~= nil then self.layout68:destroy(); self.layout68 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label140 ~= nil then self.label140:destroy(); self.label140 = nil; end;
        if self.rectangle57 ~= nil then self.rectangle57:destroy(); self.rectangle57 = nil; end;
        if self.edit26 ~= nil then self.edit26:destroy(); self.edit26 = nil; end;
        if self.label69 ~= nil then self.label69:destroy(); self.label69 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label105 ~= nil then self.label105:destroy(); self.label105 = nil; end;
        if self.label154 ~= nil then self.label154:destroy(); self.label154 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.layout54 ~= nil then self.layout54:destroy(); self.layout54 = nil; end;
        if self.label126 ~= nil then self.label126:destroy(); self.label126 = nil; end;
        if self.layout50 ~= nil then self.layout50:destroy(); self.layout50 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label145 ~= nil then self.label145:destroy(); self.label145 = nil; end;
        if self.scrollBox2 ~= nil then self.scrollBox2:destroy(); self.scrollBox2 = nil; end;
        if self.label72 ~= nil then self.label72:destroy(); self.label72 = nil; end;
        if self.label88 ~= nil then self.label88:destroy(); self.label88 = nil; end;
        if self.tab5 ~= nil then self.tab5:destroy(); self.tab5 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.layout92 ~= nil then self.layout92:destroy(); self.layout92 = nil; end;
        if self.rectangle28 ~= nil then self.rectangle28:destroy(); self.rectangle28 = nil; end;
        if self.label131 ~= nil then self.label131:destroy(); self.label131 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.button29 ~= nil then self.button29:destroy(); self.button29 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.atq_mod ~= nil then self.atq_mod:destroy(); self.atq_mod = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.rectangle26 ~= nil then self.rectangle26:destroy(); self.rectangle26 = nil; end;
        if self.label78 ~= nil then self.label78:destroy(); self.label78 = nil; end;
        if self.alterion_2023_6 ~= nil then self.alterion_2023_6:destroy(); self.alterion_2023_6 = nil; end;
        if self.label101 ~= nil then self.label101:destroy(); self.label101 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.label167 ~= nil then self.label167:destroy(); self.label167 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.label114 ~= nil then self.label114:destroy(); self.label114 = nil; end;
        if self.rectangle44 ~= nil then self.rectangle44:destroy(); self.rectangle44 = nil; end;
        if self.label135 ~= nil then self.label135:destroy(); self.label135 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.edit23 ~= nil then self.edit23:destroy(); self.edit23 = nil; end;
        if self.label155 ~= nil then self.label155:destroy(); self.label155 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.tab7 ~= nil then self.tab7:destroy(); self.tab7 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label120 ~= nil then self.label120:destroy(); self.label120 = nil; end;
        if self.des_mod ~= nil then self.des_mod:destroy(); self.des_mod = nil; end;
        if self.label130 ~= nil then self.label130:destroy(); self.label130 = nil; end;
        if self.layout49 ~= nil then self.layout49:destroy(); self.layout49 = nil; end;
        if self.richEdit1 ~= nil then self.richEdit1:destroy(); self.richEdit1 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.scrollBox3 ~= nil then self.scrollBox3:destroy(); self.scrollBox3 = nil; end;
        if self.label152 ~= nil then self.label152:destroy(); self.label152 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.rectangle60 ~= nil then self.rectangle60:destroy(); self.rectangle60 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.rectangle32 ~= nil then self.rectangle32:destroy(); self.rectangle32 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.label117 ~= nil then self.label117:destroy(); self.label117 = nil; end;
        if self.for_mod ~= nil then self.for_mod:destroy(); self.for_mod = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.edit25 ~= nil then self.edit25:destroy(); self.edit25 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout79 ~= nil then self.layout79:destroy(); self.layout79 = nil; end;
        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label123 ~= nil then self.label123:destroy(); self.label123 = nil; end;
        if self.tab6 ~= nil then self.tab6:destroy(); self.tab6 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.layout43 ~= nil then self.layout43:destroy(); self.layout43 = nil; end;
        if self.label95 ~= nil then self.label95:destroy(); self.label95 = nil; end;
        if self.rectangle56 ~= nil then self.rectangle56:destroy(); self.rectangle56 = nil; end;
        if self.label83 ~= nil then self.label83:destroy(); self.label83 = nil; end;
        if self.label165 ~= nil then self.label165:destroy(); self.label165 = nil; end;
        if self.label98 ~= nil then self.label98:destroy(); self.label98 = nil; end;
        if self.label113 ~= nil then self.label113:destroy(); self.label113 = nil; end;
        if self.layout80 ~= nil then self.layout80:destroy(); self.layout80 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.layout57 ~= nil then self.layout57:destroy(); self.layout57 = nil; end;
        if self.layout82 ~= nil then self.layout82:destroy(); self.layout82 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.layout65 ~= nil then self.layout65:destroy(); self.layout65 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label112 ~= nil then self.label112:destroy(); self.label112 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.label121 ~= nil then self.label121:destroy(); self.label121 = nil; end;
        if self.layout95 ~= nil then self.layout95:destroy(); self.layout95 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.rectangle29 ~= nil then self.rectangle29:destroy(); self.rectangle29 = nil; end;
        if self.layout93 ~= nil then self.layout93:destroy(); self.layout93 = nil; end;
        if self.label169 ~= nil then self.label169:destroy(); self.label169 = nil; end;
        if self.layout81 ~= nil then self.layout81:destroy(); self.layout81 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout45 ~= nil then self.layout45:destroy(); self.layout45 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.rclListaDosItens ~= nil then self.rclListaDosItens:destroy(); self.rclListaDosItens = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.layout77 ~= nil then self.layout77:destroy(); self.layout77 = nil; end;
        if self.layout46 ~= nil then self.layout46:destroy(); self.layout46 = nil; end;
        if self.layout56 ~= nil then self.layout56:destroy(); self.layout56 = nil; end;
        if self.label150 ~= nil then self.label150:destroy(); self.label150 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.layout66 ~= nil then self.layout66:destroy(); self.layout66 = nil; end;
        if self.button34 ~= nil then self.button34:destroy(); self.button34 = nil; end;
        if self.label136 ~= nil then self.label136:destroy(); self.label136 = nil; end;
        if self.rectangle54 ~= nil then self.rectangle54:destroy(); self.rectangle54 = nil; end;
        if self.rectangle25 ~= nil then self.rectangle25:destroy(); self.rectangle25 = nil; end;
        if self.label74 ~= nil then self.label74:destroy(); self.label74 = nil; end;
        if self.label149 ~= nil then self.label149:destroy(); self.label149 = nil; end;
        if self.button22 ~= nil then self.button22:destroy(); self.button22 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.rectangle43 ~= nil then self.rectangle43:destroy(); self.rectangle43 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.layout44 ~= nil then self.layout44:destroy(); self.layout44 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.alterion_2023_1 ~= nil then self.alterion_2023_1:destroy(); self.alterion_2023_1 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label157 ~= nil then self.label157:destroy(); self.label157 = nil; end;
        if self.layout74 ~= nil then self.layout74:destroy(); self.layout74 = nil; end;
        if self.tab4 ~= nil then self.tab4:destroy(); self.tab4 = nil; end;
        if self.label137 ~= nil then self.label137:destroy(); self.label137 = nil; end;
        if self.label80 ~= nil then self.label80:destroy(); self.label80 = nil; end;
        if self.alterion_2023_3 ~= nil then self.alterion_2023_3:destroy(); self.alterion_2023_3 = nil; end;
        if self.label118 ~= nil then self.label118:destroy(); self.label118 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label100 ~= nil then self.label100:destroy(); self.label100 = nil; end;
        if self.label156 ~= nil then self.label156:destroy(); self.label156 = nil; end;
        if self.button23 ~= nil then self.button23:destroy(); self.button23 = nil; end;
        if self.layout53 ~= nil then self.layout53:destroy(); self.layout53 = nil; end;
        if self.rclListaArmaduras ~= nil then self.rclListaArmaduras:destroy(); self.rclListaArmaduras = nil; end;
        if self.rectangle49 ~= nil then self.rectangle49:destroy(); self.rectangle49 = nil; end;
        if self.label168 ~= nil then self.label168:destroy(); self.label168 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.rectangle27 ~= nil then self.rectangle27:destroy(); self.rectangle27 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.button17 ~= nil then self.button17:destroy(); self.button17 = nil; end;
        if self.label85 ~= nil then self.label85:destroy(); self.label85 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.button25 ~= nil then self.button25:destroy(); self.button25 = nil; end;
        if self.scrollBox6 ~= nil then self.scrollBox6:destroy(); self.scrollBox6 = nil; end;
        if self.rectangle31 ~= nil then self.rectangle31:destroy(); self.rectangle31 = nil; end;
        if self.label153 ~= nil then self.label153:destroy(); self.label153 = nil; end;
        if self.layout84 ~= nil then self.layout84:destroy(); self.layout84 = nil; end;
        if self.layout40 ~= nil then self.layout40:destroy(); self.layout40 = nil; end;
        if self.layout87 ~= nil then self.layout87:destroy(); self.layout87 = nil; end;
        if self.label87 ~= nil then self.label87:destroy(); self.label87 = nil; end;
        if self.label104 ~= nil then self.label104:destroy(); self.label104 = nil; end;
        if self.layout96 ~= nil then self.layout96:destroy(); self.layout96 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.edit22 ~= nil then self.edit22:destroy(); self.edit22 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.rectangle39 ~= nil then self.rectangle39:destroy(); self.rectangle39 = nil; end;
        if self.rectangle41 ~= nil then self.rectangle41:destroy(); self.rectangle41 = nil; end;
        if self.label141 ~= nil then self.label141:destroy(); self.label141 = nil; end;
        if self.button19 ~= nil then self.button19:destroy(); self.button19 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.layout86 ~= nil then self.layout86:destroy(); self.layout86 = nil; end;
        if self.label134 ~= nil then self.label134:destroy(); self.label134 = nil; end;
        if self.layout85 ~= nil then self.layout85:destroy(); self.layout85 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.layout91 ~= nil then self.layout91:destroy(); self.layout91 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newalterion_2023()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_alterion_2023();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _alterion_2023 = {
    newEditor = newalterion_2023, 
    new = newalterion_2023, 
    name = "alterion_2023", 
    dataType = "alterion_2023", 
    formType = "sheetTemplate", 
    formComponentName = "form", 
    title = "Alterion 2023", 
    description=""};

alterion_2023 = _alterion_2023;
Firecast.registrarForm(_alterion_2023);
Firecast.registrarDataType(_alterion_2023);

return _alterion_2023;
