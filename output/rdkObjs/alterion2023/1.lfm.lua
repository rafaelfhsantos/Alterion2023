require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_alterion_2023_1()
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
    obj:setName("alterion_2023_1");
    obj:setTheme("light");
    obj:setAlign("client");

    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
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

    function obj:_releaseEvents()
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

        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.layout39 ~= nil then self.layout39:destroy(); self.layout39 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.int_mod ~= nil then self.int_mod:destroy(); self.int_mod = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.edit9 ~= nil then self.edit9:destroy(); self.edit9 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.layout30 ~= nil then self.layout30:destroy(); self.layout30 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.edit7 ~= nil then self.edit7:destroy(); self.edit7 = nil; end;
        if self.edit12 ~= nil then self.edit12:destroy(); self.edit12 = nil; end;
        if self.rectangle21 ~= nil then self.rectangle21:destroy(); self.rectangle21 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.rectangle16 ~= nil then self.rectangle16:destroy(); self.rectangle16 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.layout24 ~= nil then self.layout24:destroy(); self.layout24 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.rectangle19 ~= nil then self.rectangle19:destroy(); self.rectangle19 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout23 ~= nil then self.layout23:destroy(); self.layout23 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.rectangle22 ~= nil then self.rectangle22:destroy(); self.rectangle22 = nil; end;
        if self.layout38 ~= nil then self.layout38:destroy(); self.layout38 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.edit14 ~= nil then self.edit14:destroy(); self.edit14 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.edit4 ~= nil then self.edit4:destroy(); self.edit4 = nil; end;
        if self.layout25 ~= nil then self.layout25:destroy(); self.layout25 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.def_mod ~= nil then self.def_mod:destroy(); self.def_mod = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.edit11 ~= nil then self.edit11:destroy(); self.edit11 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.rectangle17 ~= nil then self.rectangle17:destroy(); self.rectangle17 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.edit5 ~= nil then self.edit5:destroy(); self.edit5 = nil; end;
        if self.edit19 ~= nil then self.edit19:destroy(); self.edit19 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.layout32 ~= nil then self.layout32:destroy(); self.layout32 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.layout37 ~= nil then self.layout37:destroy(); self.layout37 = nil; end;
        if self.rectangle15 ~= nil then self.rectangle15:destroy(); self.rectangle15 = nil; end;
        if self.layout26 ~= nil then self.layout26:destroy(); self.layout26 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.edit8 ~= nil then self.edit8:destroy(); self.edit8 = nil; end;
        if self.layout27 ~= nil then self.layout27:destroy(); self.layout27 = nil; end;
        if self.layout36 ~= nil then self.layout36:destroy(); self.layout36 = nil; end;
        if self.layout28 ~= nil then self.layout28:destroy(); self.layout28 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.layout19 ~= nil then self.layout19:destroy(); self.layout19 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.edit10 ~= nil then self.edit10:destroy(); self.edit10 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.atq_mod ~= nil then self.atq_mod:destroy(); self.atq_mod = nil; end;
        if self.edit16 ~= nil then self.edit16:destroy(); self.edit16 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.layout34 ~= nil then self.layout34:destroy(); self.layout34 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.rectangle20 ~= nil then self.rectangle20:destroy(); self.rectangle20 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.edit13 ~= nil then self.edit13:destroy(); self.edit13 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.layout20 ~= nil then self.layout20:destroy(); self.layout20 = nil; end;
        if self.dataLink1 ~= nil then self.dataLink1:destroy(); self.dataLink1 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.rectangle23 ~= nil then self.rectangle23:destroy(); self.rectangle23 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.layout31 ~= nil then self.layout31:destroy(); self.layout31 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.edit17 ~= nil then self.edit17:destroy(); self.edit17 = nil; end;
        if self.des_mod ~= nil then self.des_mod:destroy(); self.des_mod = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.layout29 ~= nil then self.layout29:destroy(); self.layout29 = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.layout35 ~= nil then self.layout35:destroy(); self.layout35 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.edit15 ~= nil then self.edit15:destroy(); self.edit15 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.rectangle18 ~= nil then self.rectangle18:destroy(); self.rectangle18 = nil; end;
        if self.rectangle14 ~= nil then self.rectangle14:destroy(); self.rectangle14 = nil; end;
        if self.edit6 ~= nil then self.edit6:destroy(); self.edit6 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.rcListaVantagens ~= nil then self.rcListaVantagens:destroy(); self.rcListaVantagens = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.von_mod ~= nil then self.von_mod:destroy(); self.von_mod = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout33 ~= nil then self.layout33:destroy(); self.layout33 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout22 ~= nil then self.layout22:destroy(); self.layout22 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.for_mod ~= nil then self.for_mod:destroy(); self.for_mod = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.layout21 ~= nil then self.layout21:destroy(); self.layout21 = nil; end;
        if self.edit18 ~= nil then self.edit18:destroy(); self.edit18 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        if self.rectangle24 ~= nil then self.rectangle24:destroy(); self.rectangle24 = nil; end;
        if self.edit20 ~= nil then self.edit20:destroy(); self.edit20 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newalterion_2023_1()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_alterion_2023_1();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _alterion_2023_1 = {
    newEditor = newalterion_2023_1, 
    new = newalterion_2023_1, 
    name = "alterion_2023_1", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

alterion_2023_1 = _alterion_2023_1;
Firecast.registrarForm(_alterion_2023_1);

return _alterion_2023_1;
