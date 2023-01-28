require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_alterion_2023_4()
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
    obj:setName("alterion_2023_4");
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
    obj.layout1:setLeft(880);
    obj.layout1:setTop(5);
    obj.layout1:setHeight(30);
    obj.layout1:setWidth(300);
    obj.layout1:setName("layout1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setAlign("left");
    obj.rectangle2:setWidth(250);
    obj.rectangle2:setHeight(30);
    obj.rectangle2:setColor("white");
    obj.rectangle2:setStrokeSize(1.0);
    obj.rectangle2:setName("rectangle2");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setLeft(880);
    obj.layout2:setTop(5);
    obj.layout2:setHeight(30);
    obj.layout2:setWidth(300);
    obj.layout2:setName("layout2");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout2);
    obj.label1:setAlign("left");
    obj.label1:setMargins({left = 5});
    obj.label1:setVertTextAlign("center");
    obj.label1:setWidth(140);
    obj.label1:setText("Pontos iniciais:");
    obj.label1:setFontColor("#000000");
    obj.label1:setFontSize(15);
    obj.label1:setName("label1");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.layout2);
    obj.edit1:setField("pt_iniciais");
    obj.edit1:setAlign("left");
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setFontColor("#8000A0");
    obj.edit1:setType("number");
    obj.edit1:setFontSize(20);
    obj.edit1:setTransparent(true);
    obj.edit1:setName("edit1");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setLeft(880);
    obj.layout3:setTop(40);
    obj.layout3:setHeight(30);
    obj.layout3:setWidth(300);
    obj.layout3:setName("layout3");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout3);
    obj.rectangle3:setAlign("left");
    obj.rectangle3:setWidth(250);
    obj.rectangle3:setHeight(30);
    obj.rectangle3:setColor("white");
    obj.rectangle3:setStrokeSize(1.0);
    obj.rectangle3:setName("rectangle3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.rectangle1);
    obj.layout4:setLeft(880);
    obj.layout4:setTop(40);
    obj.layout4:setHeight(30);
    obj.layout4:setWidth(300);
    obj.layout4:setName("layout4");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout4);
    obj.label2:setAlign("left");
    obj.label2:setMargins({left = 5});
    obj.label2:setVertTextAlign("center");
    obj.label2:setWidth(140);
    obj.label2:setText("Pontos ganhos:");
    obj.label2:setFontColor("#000000");
    obj.label2:setFontSize(15);
    obj.label2:setName("label2");

    obj.edit2 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit2:setParent(obj.layout4);
    obj.edit2:setField("pt_ganhos");
    obj.edit2:setType("number");
    obj.edit2:setAlign("left");
    obj.edit2:setVertTextAlign("center");
    obj.edit2:setFontColor("#8000A0");
    obj.edit2:setFontSize(20);
    obj.edit2:setTransparent(true);
    obj.edit2:setName("edit2");

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setLeft(880);
    obj.layout5:setTop(80);
    obj.layout5:setHeight(30);
    obj.layout5:setWidth(300);
    obj.layout5:setName("layout5");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout5);
    obj.rectangle4:setAlign("left");
    obj.rectangle4:setWidth(250);
    obj.rectangle4:setHeight(30);
    obj.rectangle4:setColor("white");
    obj.rectangle4:setStrokeSize(1.0);
    obj.rectangle4:setName("rectangle4");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setLeft(880);
    obj.layout6:setTop(80);
    obj.layout6:setHeight(30);
    obj.layout6:setWidth(300);
    obj.layout6:setName("layout6");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout6);
    obj.label3:setAlign("left");
    obj.label3:setMargins({left = 5});
    obj.label3:setVertTextAlign("center");
    obj.label3:setWidth(140);
    obj.label3:setText("Pontos totais:");
    obj.label3:setFontColor("#000000");
    obj.label3:setFontSize(15);
    obj.label3:setName("label3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout6);
    obj.label4:setField("pt_total");
    obj.label4:setAlign("left");
    obj.label4:setVertTextAlign("center");
    obj.label4:setFontColor("#FF0000");
    obj.label4:setFontSize(20);
    obj.label4:setName("label4");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.rectangle1);
    obj.layout7:setLeft(880);
    obj.layout7:setTop(120);
    obj.layout7:setHeight(30);
    obj.layout7:setWidth(300);
    obj.layout7:setName("layout7");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout7);
    obj.rectangle5:setAlign("left");
    obj.rectangle5:setWidth(250);
    obj.rectangle5:setHeight(30);
    obj.rectangle5:setColor("white");
    obj.rectangle5:setStrokeSize(1.0);
    obj.rectangle5:setName("rectangle5");

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setLeft(880);
    obj.layout8:setTop(120);
    obj.layout8:setHeight(30);
    obj.layout8:setWidth(300);
    obj.layout8:setName("layout8");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout8);
    obj.label5:setAlign("left");
    obj.label5:setMargins({left = 5});
    obj.label5:setVertTextAlign("center");
    obj.label5:setWidth(140);
    obj.label5:setText("Total Gasto:");
    obj.label5:setFontColor("#000000");
    obj.label5:setFontSize(15);
    obj.label5:setName("label5");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout8);
    obj.label6:setField("totalGasto");
    obj.label6:setAlign("left");
    obj.label6:setVertTextAlign("center");
    obj.label6:setFontColor("#FF0000");
    obj.label6:setFontSize(20);
    obj.label6:setName("label6");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setLeft(880);
    obj.layout9:setTop(160);
    obj.layout9:setHeight(30);
    obj.layout9:setWidth(300);
    obj.layout9:setName("layout9");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout9);
    obj.rectangle6:setAlign("left");
    obj.rectangle6:setWidth(250);
    obj.rectangle6:setHeight(30);
    obj.rectangle6:setColor("white");
    obj.rectangle6:setStrokeSize(1.0);
    obj.rectangle6:setName("rectangle6");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setLeft(880);
    obj.layout10:setTop(160);
    obj.layout10:setHeight(30);
    obj.layout10:setWidth(300);
    obj.layout10:setName("layout10");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout10);
    obj.label7:setAlign("left");
    obj.label7:setMargins({left = 5});
    obj.label7:setVertTextAlign("center");
    obj.label7:setWidth(140);
    obj.label7:setText("Pontos a gastar:");
    obj.label7:setFontColor("#000000");
    obj.label7:setFontSize(15);
    obj.label7:setName("label7");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout10);
    obj.label8:setField("aGastar");
    obj.label8:setAlign("left");
    obj.label8:setVertTextAlign("center");
    obj.label8:setFontColor("#FF0000");
    obj.label8:setFontSize(20);
    obj.label8:setName("label8");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle1);
    obj.button1:setTop(50);
    obj.button1:setLeft(600);
    obj.button1:setText("CALCULAR PONTOS");
    obj.button1:setWidth(200);
    obj.button1:setHeight(105);
    obj.button1:setFontSize(18);
    obj.button1:setFontColor("#FF5050");
    lfm_setPropAsString(obj.button1, "fontStyle",  "bold");
    obj.button1:setName("button1");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.rectangle1);
    obj.layout11:setLeft(15);
    obj.layout11:setTop(20);
    obj.layout11:setHeight(30);
    obj.layout11:setWidth(300);
    obj.layout11:setName("layout11");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout11);
    obj.label9:setAlign("left");
    obj.label9:setMargins({left = 5});
    obj.label9:setVertTextAlign("center");
    obj.label9:setWidth(40);
    obj.label9:setText("INT:");
    obj.label9:setFontColor("#000000");
    obj.label9:setFontSize(20);
    obj.label9:setName("label9");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout11);
    obj.label10:setField("int");
    obj.label10:setAlign("left");
    obj.label10:setVertTextAlign("center");
    obj.label10:setWidth(40);
    obj.label10:setFontColor("#000000");
    obj.label10:setFontSize(20);
    obj.label10:setName("label10");

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setLeft(15);
    obj.layout12:setTop(60);
    obj.layout12:setHeight(50);
    obj.layout12:setWidth(360);
    obj.layout12:setName("layout12");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout12);
    obj.label11:setAlign("left");
    obj.label11:setMargins({left = 5});
    obj.label11:setVertTextAlign("center");
    obj.label11:setWidth(120);
    obj.label11:setText("Nível Arcano:");
    obj.label11:setFontColor("#000000");
    obj.label11:setFontSize(20);
    obj.label11:setName("label11");

    obj.edit3 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit3:setParent(obj.layout12);
    obj.edit3:setAlign("left");
    obj.edit3:setMargins({left = 5});
    obj.edit3:setVertTextAlign("center");
    obj.edit3:setHorzTextAlign("center");
    obj.edit3:setWidth(50);
    obj.edit3:setField("nivelArcano");
    obj.edit3:setFontColor("#000000");
    obj.edit3:setFontSize(20);
    obj.edit3:setName("edit3");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.rectangle1);
    obj.label12:setVisible(false);
    obj.label12:setField("orderby");
    obj.label12:setName("label12");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.rectangle1);
    obj.button2:setTop(230);
    obj.button2:setLeft(150);
    obj.button2:setText("^");
    obj.button2:setWidth(20);
    obj.button2:setHeight(20);
    obj.button2:setFontSize(18);
    lfm_setPropAsString(obj.button2, "fontStyle",  "bold");
    obj.button2:setName("button2");
    obj.button2:setFontColor("black");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.rectangle1);
    obj.button3:setTop(230);
    obj.button3:setLeft(290);
    obj.button3:setText("^");
    obj.button3:setWidth(20);
    obj.button3:setHeight(20);
    obj.button3:setFontSize(18);
    lfm_setPropAsString(obj.button3, "fontStyle",  "bold");
    obj.button3:setName("button3");
    obj.button3:setFontColor("black");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.rectangle1);
    obj.button4:setTop(230);
    obj.button4:setLeft(355);
    obj.button4:setText("^");
    obj.button4:setWidth(20);
    obj.button4:setHeight(20);
    obj.button4:setFontSize(18);
    lfm_setPropAsString(obj.button4, "fontStyle",  "bold");
    obj.button4:setName("button4");
    obj.button4:setFontColor("black");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.rectangle1);
    obj.button5:setTop(230);
    obj.button5:setLeft(410);
    obj.button5:setText("^");
    obj.button5:setWidth(20);
    obj.button5:setHeight(20);
    obj.button5:setFontSize(18);
    lfm_setPropAsString(obj.button5, "fontStyle",  "bold");
    obj.button5:setName("button5");
    obj.button5:setFontColor("black");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.rectangle1);
    obj.button6:setTop(230);
    obj.button6:setLeft(450);
    obj.button6:setText("^");
    obj.button6:setWidth(20);
    obj.button6:setHeight(20);
    obj.button6:setFontSize(18);
    lfm_setPropAsString(obj.button6, "fontStyle",  "bold");
    obj.button6:setName("button6");
    obj.button6:setFontColor("black");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.rectangle1);
    obj.button7:setTop(230);
    obj.button7:setLeft(515);
    obj.button7:setText("^");
    obj.button7:setWidth(20);
    obj.button7:setHeight(20);
    obj.button7:setFontSize(18);
    lfm_setPropAsString(obj.button7, "fontStyle",  "bold");
    obj.button7:setName("button7");
    obj.button7:setFontColor("black");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.rectangle1);
    obj.button8:setTop(230);
    obj.button8:setLeft(750);
    obj.button8:setText("^");
    obj.button8:setWidth(20);
    obj.button8:setHeight(20);
    obj.button8:setFontSize(18);
    lfm_setPropAsString(obj.button8, "fontStyle",  "bold");
    obj.button8:setName("button8");
    obj.button8:setFontColor("black");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.rectangle1);
    obj.label13:setTop(200);
    obj.label13:setLeft(200);
    obj.label13:setVertTextAlign("center");
    obj.label13:setText("Magias");
    obj.label13:setFontColor("#000000");
    obj.label13:setFontSize(18);
    obj.label13:setMargins({left = 50});
    obj.label13:setHeight(30);
    obj.label13:setWidth(800);
    obj.label13:setName("label13");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setTop(240);
    obj.layout13:setHeight(800);
    obj.layout13:setWidth(1160);
    obj.layout13:setLeft(5);
    obj.layout13:setName("layout13");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout13);
    obj.layout14:setAlign("top");
    obj.layout14:setHeight(40);
    obj.layout14:setMargins({bottom=4 , left=5});
    obj.layout14:setName("layout14");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.layout14);
    obj.button9:setText("+");
    obj.button9:setWidth(40);
    obj.button9:setAlign("left");
    obj.button9:setFontSize(25);
    obj.button9:setName("button9");
    obj.button9:setFontColor("black");

    obj.rclListaMagias = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaMagias:setParent(obj.layout13);
    obj.rclListaMagias:setName("rclListaMagias");
    obj.rclListaMagias:setField("campoMagias");
    obj.rclListaMagias:setTemplateForm("frmMagias");
    obj.rclListaMagias:setAlign("client");
    obj.rclListaMagias:setSelectable(true);

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setTop(250);
    obj.layout15:setHeight(25);
    obj.layout15:setWidth(1100);
    obj.layout15:setLeft(38);
    obj.layout15:setName("layout15");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout15);
    obj.label14:setAlign("left");
    obj.label14:setVertTextAlign("center");
    obj.label14:setHorzTextAlign("center");
    obj.label14:setText("Magia");
    obj.label14:setWidth(230);
    obj.label14:setFontSize(18);
    obj.label14:setFontColor("#000000");
    obj.label14:setName("label14");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout15);
    obj.label15:setAlign("left");
    obj.label15:setVertTextAlign("center");
    obj.label15:setHorzTextAlign("center");
    obj.label15:setText("Atributo");
    obj.label15:setWidth(70);
    obj.label15:setFontSize(16);
    obj.label15:setMargins({left = 5});
    obj.label15:setFontColor("#000000");
    obj.label15:setName("label15");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout15);
    obj.label16:setAlign("left");
    obj.label16:setVertTextAlign("center");
    obj.label16:setHorzTextAlign("center");
    obj.label16:setText("nível");
    obj.label16:setWidth(40);
    obj.label16:setFontSize(18);
    obj.label16:setMargins({left = 5});
    obj.label16:setFontColor("#000000");
    obj.label16:setName("label16");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.layout15);
    obj.label17:setAlign("left");
    obj.label17:setVertTextAlign("center");
    obj.label17:setHorzTextAlign("center");
    obj.label17:setText("mod");
    obj.label17:setWidth(40);
    obj.label17:setFontSize(16);
    obj.label17:setMargins({left = 5});
    obj.label17:setFontColor("#000000");
    obj.label17:setName("label17");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.layout15);
    obj.label18:setAlign("left");
    obj.label18:setVertTextAlign("center");
    obj.label18:setHorzTextAlign("center");
    obj.label18:setText("nível efetivo");
    obj.label18:setWidth(100);
    obj.label18:setFontSize(18);
    obj.label18:setMargins({left = 5});
    obj.label18:setFontColor("#000000");
    obj.label18:setName("label18");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.layout15);
    obj.label19:setAlign("left");
    obj.label19:setVertTextAlign("center");
    obj.label19:setHorzTextAlign("center");
    obj.label19:setText("mana");
    obj.label19:setWidth(55);
    obj.label19:setFontSize(18);
    obj.label19:setMargins({left = 5});
    obj.label19:setFontColor("#000000");
    obj.label19:setName("label19");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.layout15);
    obj.label20:setAlign("left");
    obj.label20:setVertTextAlign("center");
    obj.label20:setHorzTextAlign("center");
    obj.label20:setText("pts");
    obj.label20:setWidth(55);
    obj.label20:setFontSize(18);
    obj.label20:setMargins({left = 5});
    obj.label20:setFontColor("#000000");
    obj.label20:setName("label20");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.layout15);
    obj.label21:setAlign("left");
    obj.label21:setVertTextAlign("center");
    obj.label21:setHorzTextAlign("center");
    obj.label21:setText("Notas");
    obj.label21:setWidth(400);
    obj.label21:setFontSize(18);
    obj.label21:setMargins({left = 5});
    obj.label21:setFontColor("#000000");
    obj.label21:setName("label21");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.layout15);
    obj.label22:setAlign("left");
    obj.label22:setVertTextAlign("center");
    obj.label22:setHorzTextAlign("center");
    obj.label22:setText("Página");
    obj.label22:setWidth(55);
    obj.label22:setFontSize(16);
    obj.label22:setMargins({left = 5});
    obj.label22:setFontColor("#000000");
    obj.label22:setName("label22");


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
	 


    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            calculaPericias();
            						calculaMagias();
        end, obj);

    obj._e_event1 = obj.button2:addEventListener("onClick",
        function (_)
            sheet.orderby = 0;
            						self.rclListaMagias:sort();
        end, obj);

    obj._e_event2 = obj.button3:addEventListener("onClick",
        function (_)
            sheet.orderby = 1;
            						self.rclListaMagias:sort();
        end, obj);

    obj._e_event3 = obj.button4:addEventListener("onClick",
        function (_)
            sheet.orderby = 2;
            						self.rclListaMagias:sort();
        end, obj);

    obj._e_event4 = obj.button5:addEventListener("onClick",
        function (_)
            sheet.orderby = 3;
            						self.rclListaMagias:sort();
        end, obj);

    obj._e_event5 = obj.button6:addEventListener("onClick",
        function (_)
            sheet.orderby = 4;
            						self.rclListaMagias:sort();
        end, obj);

    obj._e_event6 = obj.button7:addEventListener("onClick",
        function (_)
            sheet.orderby = 5;
            						self.rclListaMagias:sort();
        end, obj);

    obj._e_event7 = obj.button8:addEventListener("onClick",
        function (_)
            sheet.orderby = 6;
            						self.rclListaMagias:sort();
        end, obj);

    obj._e_event8 = obj.button9:addEventListener("onClick",
        function (_)
            self.rclListaMagias:append();
        end, obj);

    obj._e_event9 = obj.rclListaMagias:addEventListener("onSelect",
        function (_)
            calculaPericias();
            						  calculaMagias();
        end, obj);

    obj._e_event10 = obj.rclListaMagias:addEventListener("onCompare",
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
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.rclListaMagias ~= nil then self.rclListaMagias:destroy(); self.rclListaMagias = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.edit3 ~= nil then self.edit3:destroy(); self.edit3 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.edit2 ~= nil then self.edit2:destroy(); self.edit2 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newalterion_2023_4()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_alterion_2023_4();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _alterion_2023_4 = {
    newEditor = newalterion_2023_4, 
    new = newalterion_2023_4, 
    name = "alterion_2023_4", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

alterion_2023_4 = _alterion_2023_4;
Firecast.registrarForm(_alterion_2023_4);

return _alterion_2023_4;
