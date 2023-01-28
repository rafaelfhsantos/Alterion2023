require("firecast.lua");
local __o_rrpgObjs = require("rrpgObjs.lua");
require("rrpgGUI.lua");
require("rrpgDialogs.lua");
require("rrpgLFM.lua");
require("ndb.lua");
require("locale.lua");
local __o_Utils = require("utils.lua");

local function constructNew_alterion_2023_3()
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
    obj:setName("alterion_2023_3");
    obj:setTheme("light");
    obj:setAlign("client");


			
			
			
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
				
				
				
			


    obj.scrollBox1 = GUI.fromHandle(_obj_newObject("scrollBox"));
    obj.scrollBox1:setParent(obj);
    obj.scrollBox1:setAlign("client");
    obj.scrollBox1:setName("scrollBox1");

    obj.rectangle1 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle1:setParent(obj.scrollBox1);
    obj.rectangle1:setWidth(1400);
    obj.rectangle1:setHeight(2500);
    obj.rectangle1:setColor("white");
    obj.rectangle1:setName("rectangle1");

    obj.layout1 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout1:setParent(obj.rectangle1);
    obj.layout1:setTop(5);
    obj.layout1:setHeight(80);
    obj.layout1:setWidth(1300);
    obj.layout1:setLeft(5);
    obj.layout1:setName("layout1");

    obj.rectangle2 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle2:setParent(obj.layout1);
    obj.rectangle2:setLeft(0);
    obj.rectangle2:setColor("white");
    obj.rectangle2:setStrokeSize(1.0);
    obj.rectangle2:setHeight(80);
    obj.rectangle2:setWidth(220);
    obj.rectangle2:setName("rectangle2");

    obj.rectangle3 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle3:setParent(obj.layout1);
    obj.rectangle3:setLeft(223);
    obj.rectangle3:setColor("white");
    obj.rectangle3:setStrokeSize(1.0);
    obj.rectangle3:setHeight(80);
    obj.rectangle3:setWidth(225);
    obj.rectangle3:setName("rectangle3");

    obj.rectangle4 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle4:setParent(obj.layout1);
    obj.rectangle4:setLeft(451);
    obj.rectangle4:setColor("white");
    obj.rectangle4:setStrokeSize(1.0);
    obj.rectangle4:setHeight(80);
    obj.rectangle4:setWidth(215);
    obj.rectangle4:setName("rectangle4");

    obj.rectangle5 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle5:setParent(obj.layout1);
    obj.rectangle5:setLeft(670);
    obj.rectangle5:setColor("white");
    obj.rectangle5:setStrokeSize(1.0);
    obj.rectangle5:setHeight(80);
    obj.rectangle5:setWidth(300);
    obj.rectangle5:setName("rectangle5");

    obj.rectangle6 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle6:setParent(obj.layout1);
    obj.rectangle6:setLeft(670);
    obj.rectangle6:setColor("white");
    obj.rectangle6:setStrokeSize(1.0);
    obj.rectangle6:setHeight(80);
    obj.rectangle6:setWidth(150);
    obj.rectangle6:setName("rectangle6");

    obj.rectangle7 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle7:setParent(obj.layout1);
    obj.rectangle7:setLeft(980);
    obj.rectangle7:setColor("white");
    obj.rectangle7:setStrokeSize(1.0);
    obj.rectangle7:setHeight(80);
    obj.rectangle7:setWidth(300);
    obj.rectangle7:setName("rectangle7");

    obj.rectangle8 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle8:setParent(obj.layout1);
    obj.rectangle8:setLeft(980);
    obj.rectangle8:setColor("white");
    obj.rectangle8:setStrokeSize(1.0);
    obj.rectangle8:setHeight(80);
    obj.rectangle8:setWidth(150);
    obj.rectangle8:setName("rectangle8");

    obj.label1 = GUI.fromHandle(_obj_newObject("label"));
    obj.label1:setParent(obj.layout1);
    obj.label1:setAlign("left");
    obj.label1:setVertTextAlign("center");
    obj.label1:setHorzTextAlign("center");
    obj.label1:setText("Peso Total: ");
    obj.label1:setWidth(100);
    obj.label1:setFontSize(14);
    obj.label1:setMargins({left = 2});
    obj.label1:setFontColor("#000000");
    obj.label1:setName("label1");

    obj.label2 = GUI.fromHandle(_obj_newObject("label"));
    obj.label2:setParent(obj.layout1);
    obj.label2:setAlign("left");
    obj.label2:setVertTextAlign("center");
    obj.label2:setHorzTextAlign("leading");
    obj.label2:setField("peso_total");
    obj.label2:setWidth(120);
    obj.label2:setFontSize(18);
    obj.label2:setMargins({left = 2});
    obj.label2:setFontColor("#00B0B0");
    obj.label2:setName("label2");

    obj.label3 = GUI.fromHandle(_obj_newObject("label"));
    obj.label3:setParent(obj.layout1);
    obj.label3:setAlign("left");
    obj.label3:setVertTextAlign("center");
    obj.label3:setHorzTextAlign("center");
    obj.label3:setText("Peso Total Sem Mochila: ");
    obj.label3:setWidth(100);
    obj.label3:setFontSize(14);
    obj.label3:setMargins({left = 2});
    obj.label3:setFontColor("#000000");
    obj.label3:setName("label3");

    obj.label4 = GUI.fromHandle(_obj_newObject("label"));
    obj.label4:setParent(obj.layout1);
    obj.label4:setAlign("left");
    obj.label4:setVertTextAlign("center");
    obj.label4:setHorzTextAlign("leading");
    obj.label4:setField("peso_total_sm");
    obj.label4:setWidth(120);
    obj.label4:setFontSize(18);
    obj.label4:setMargins({left = 4});
    obj.label4:setFontColor("#00B0B0");
    obj.label4:setName("label4");

    obj.label5 = GUI.fromHandle(_obj_newObject("label"));
    obj.label5:setParent(obj.layout1);
    obj.label5:setAlign("left");
    obj.label5:setVertTextAlign("center");
    obj.label5:setHorzTextAlign("center");
    obj.label5:setText("Custo Total $: ");
    obj.label5:setWidth(100);
    obj.label5:setFontSize(14);
    obj.label5:setMargins({left = 2});
    obj.label5:setFontColor("#000000");
    obj.label5:setName("label5");

    obj.label6 = GUI.fromHandle(_obj_newObject("label"));
    obj.label6:setParent(obj.layout1);
    obj.label6:setAlign("left");
    obj.label6:setVertTextAlign("center");
    obj.label6:setHorzTextAlign("leading");
    obj.label6:setField("custo_total");
    obj.label6:setWidth(120);
    obj.label6:setFontSize(18);
    obj.label6:setMargins({left = 2});
    obj.label6:setFontColor("#A0A000");
    obj.label6:setName("label6");

    obj.label7 = GUI.fromHandle(_obj_newObject("label"));
    obj.label7:setParent(obj.layout1);
    obj.label7:setAlign("left");
    obj.label7:setVertTextAlign("center");
    obj.label7:setHorzTextAlign("center");
    obj.label7:setText("Deslocamento c/ mochila: ");
    obj.label7:setWidth(100);
    obj.label7:setFontSize(14);
    obj.label7:setMargins({left = 2});
    obj.label7:setFontColor("#000000");
    obj.label7:setName("label7");

    obj.label8 = GUI.fromHandle(_obj_newObject("label"));
    obj.label8:setParent(obj.layout1);
    obj.label8:setAlign("left");
    obj.label8:setVertTextAlign("center");
    obj.label8:setHorzTextAlign("center");
    obj.label8:setField("deslocamento_atual");
    obj.label8:setWidth(50);
    obj.label8:setFontSize(25);
    obj.label8:setMargins({left = 2});
    obj.label8:setFontColor("#00CC00");
    obj.label8:setName("label8");

    obj.label9 = GUI.fromHandle(_obj_newObject("label"));
    obj.label9:setParent(obj.layout1);
    obj.label9:setAlign("left");
    obj.label9:setVertTextAlign("center");
    obj.label9:setHorzTextAlign("center");
    obj.label9:setText("Defesa c/ mochila: ");
    obj.label9:setWidth(70);
    obj.label9:setFontSize(14);
    obj.label9:setMargins({left = 20});
    obj.label9:setFontColor("#000000");
    obj.label9:setName("label9");

    obj.label10 = GUI.fromHandle(_obj_newObject("label"));
    obj.label10:setParent(obj.layout1);
    obj.label10:setAlign("left");
    obj.label10:setVertTextAlign("center");
    obj.label10:setHorzTextAlign("center");
    obj.label10:setField("esquiva_atual");
    obj.label10:setWidth(60);
    obj.label10:setFontSize(25);
    obj.label10:setMargins({left = 2});
    obj.label10:setFontColor("#00CC00");
    obj.label10:setName("label10");

    obj.label11 = GUI.fromHandle(_obj_newObject("label"));
    obj.label11:setParent(obj.layout1);
    obj.label11:setAlign("left");
    obj.label11:setVertTextAlign("center");
    obj.label11:setHorzTextAlign("center");
    obj.label11:setText("Deslocamento sem mochila: ");
    obj.label11:setWidth(100);
    obj.label11:setFontSize(14);
    obj.label11:setMargins({left = 2});
    obj.label11:setFontColor("#000000");
    obj.label11:setName("label11");

    obj.label12 = GUI.fromHandle(_obj_newObject("label"));
    obj.label12:setParent(obj.layout1);
    obj.label12:setAlign("left");
    obj.label12:setVertTextAlign("center");
    obj.label12:setHorzTextAlign("center");
    obj.label12:setField("deslocamento_atual_sm");
    obj.label12:setWidth(50);
    obj.label12:setFontSize(25);
    obj.label12:setMargins({left = 2});
    obj.label12:setFontColor("#00CC00");
    obj.label12:setName("label12");

    obj.label13 = GUI.fromHandle(_obj_newObject("label"));
    obj.label13:setParent(obj.layout1);
    obj.label13:setAlign("left");
    obj.label13:setVertTextAlign("center");
    obj.label13:setHorzTextAlign("center");
    obj.label13:setText("Defesa sem mochila: ");
    obj.label13:setWidth(70);
    obj.label13:setFontSize(14);
    obj.label13:setMargins({left = 20});
    obj.label13:setFontColor("#000000");
    obj.label13:setName("label13");

    obj.label14 = GUI.fromHandle(_obj_newObject("label"));
    obj.label14:setParent(obj.layout1);
    obj.label14:setAlign("left");
    obj.label14:setVertTextAlign("center");
    obj.label14:setHorzTextAlign("center");
    obj.label14:setField("esquiva_atual_sm");
    obj.label14:setWidth(60);
    obj.label14:setFontSize(25);
    obj.label14:setMargins({left = 2});
    obj.label14:setFontColor("#00CC00");
    obj.label14:setName("label14");

    obj.layout2 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout2:setParent(obj.rectangle1);
    obj.layout2:setTop(55);
    obj.layout2:setHeight(26);
    obj.layout2:setWidth(1300);
    obj.layout2:setLeft(5);
    obj.layout2:setName("layout2");

    obj.label15 = GUI.fromHandle(_obj_newObject("label"));
    obj.label15:setParent(obj.layout2);
    obj.label15:setLeft(105);
    obj.label15:setVertTextAlign("center");
    obj.label15:setField("carga_Mochila");
    obj.label15:setWidth(200);
    obj.label15:setHeight(25);
    obj.label15:setFontSize(18);
    obj.label15:setFontColor("#DD0000");
    obj.label15:setName("label15");

    obj.label16 = GUI.fromHandle(_obj_newObject("label"));
    obj.label16:setParent(obj.layout2);
    obj.label16:setLeft(335);
    obj.label16:setVertTextAlign("center");
    obj.label16:setField("carga_SemMochila");
    obj.label16:setWidth(200);
    obj.label16:setHeight(25);
    obj.label16:setFontSize(18);
    obj.label16:setFontColor("#DD0000");
    obj.label16:setName("label16");

    obj.button1 = GUI.fromHandle(_obj_newObject("button"));
    obj.button1:setParent(obj.rectangle1);
    obj.button1:setTop(400);
    obj.button1:setLeft(1185);
    obj.button1:setWordWrap(true);
    obj.button1:setText("CALCULAR PESO E CUSTO");
    obj.button1:setWidth(200);
    obj.button1:setHeight(105);
    obj.button1:setFontSize(18);
    obj.button1:setFontColor("#FF5050");
    lfm_setPropAsString(obj.button1, "fontStyle",  "bold");
    obj.button1:setName("button1");

    obj.label17 = GUI.fromHandle(_obj_newObject("label"));
    obj.label17:setParent(obj.rectangle1);
    obj.label17:setTop(1000);
    obj.label17:setLeft(1185);
    obj.label17:setVertTextAlign("center");
    obj.label17:setText("Cap. da Mochila:");
    obj.label17:setWidth(150);
    obj.label17:setHeight(25);
    obj.label17:setFontSize(14);
    obj.label17:setFontColor("#000000");
    obj.label17:setName("label17");

    obj.edit1 = GUI.fromHandle(_obj_newObject("edit"));
    obj.edit1:setParent(obj.rectangle1);
    obj.edit1:setTop(1000);
    obj.edit1:setLeft(1300);
    obj.edit1:setVertTextAlign("center");
    obj.edit1:setHorzTextAlign("center");
    obj.edit1:setField("cap_mochila");
    obj.edit1:setWidth(50);
    obj.edit1:setHeight(25);
    obj.edit1:setType("float");
    obj.edit1:setFontSize(14);
    obj.edit1:setFontColor("#000000");
    obj.edit1:setName("edit1");

    obj.label18 = GUI.fromHandle(_obj_newObject("label"));
    obj.label18:setParent(obj.rectangle1);
    obj.label18:setTop(1030);
    obj.label18:setLeft(1185);
    obj.label18:setVertTextAlign("center");
    obj.label18:setText("Peso da mochila:");
    obj.label18:setWidth(150);
    obj.label18:setHeight(25);
    obj.label18:setFontSize(14);
    obj.label18:setFontColor("#000000");
    obj.label18:setName("label18");

    obj.label19 = GUI.fromHandle(_obj_newObject("label"));
    obj.label19:setParent(obj.rectangle1);
    obj.label19:setTop(1030);
    obj.label19:setLeft(1300);
    obj.label19:setVertTextAlign("center");
    obj.label19:setField("conteudoMochila");
    obj.label19:setWidth(50);
    obj.label19:setHeight(25);
    obj.label19:setFontSize(14);
    obj.label19:setFontColor("#000000");
    obj.label19:setName("label19");

    obj.label20 = GUI.fromHandle(_obj_newObject("label"));
    obj.label20:setParent(obj.rectangle1);
    obj.label20:setTop(1060);
    obj.label20:setLeft(1185);
    obj.label20:setVertTextAlign("center");
    obj.label20:setText("Cap. Restante:");
    obj.label20:setWidth(150);
    obj.label20:setHeight(25);
    obj.label20:setFontSize(14);
    obj.label20:setFontColor("#000000");
    obj.label20:setName("label20");

    obj.label21 = GUI.fromHandle(_obj_newObject("label"));
    obj.label21:setParent(obj.rectangle1);
    obj.label21:setTop(1060);
    obj.label21:setLeft(1300);
    obj.label21:setVertTextAlign("center");
    obj.label21:setField("capRestante");
    obj.label21:setWidth(50);
    obj.label21:setHeight(25);
    obj.label21:setFontSize(14);
    obj.label21:setFontColor("#060");
    lfm_setPropAsString(obj.label21, "fontStyle",  "bold");
    obj.label21:setName("label21");

    obj.button2 = GUI.fromHandle(_obj_newObject("button"));
    obj.button2:setParent(obj.rectangle1);
    obj.button2:setTop(1100);
    obj.button2:setLeft(1185);
    obj.button2:setWordWrap(true);
    obj.button2:setText("Pack Iniciais");
    obj.button2:setWidth(200);
    obj.button2:setHeight(50);
    obj.button2:setFontSize(18);
    obj.button2:setFontColor("#000000");
    lfm_setPropAsString(obj.button2, "fontStyle",  "bold");
    obj.button2:setName("button2");

    obj.button3 = GUI.fromHandle(_obj_newObject("button"));
    obj.button3:setParent(obj.rectangle1);
    obj.button3:setTop(1200);
    obj.button3:setLeft(1185);
    obj.button3:setWordWrap(true);
    obj.button3:setText("CALCULAR PESO E CUSTO");
    obj.button3:setWidth(200);
    obj.button3:setHeight(105);
    obj.button3:setFontSize(18);
    obj.button3:setFontColor("#FF5050");
    lfm_setPropAsString(obj.button3, "fontStyle",  "bold");
    obj.button3:setName("button3");

    obj.label22 = GUI.fromHandle(_obj_newObject("label"));
    obj.label22:setParent(obj.rectangle1);
    obj.label22:setTop(100);
    obj.label22:setLeft(250);
    obj.label22:setVertTextAlign("center");
    obj.label22:setText("ARMAS");
    obj.label22:setFontColor("#000000");
    obj.label22:setFontSize(18);
    obj.label22:setMargins({left = 50});
    obj.label22:setHeight(30);
    obj.label22:setWidth(800);
    obj.label22:setName("label22");

    obj.layout3 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout3:setParent(obj.rectangle1);
    obj.layout3:setTop(130);
    obj.layout3:setHeight(200);
    obj.layout3:setWidth(1100);
    obj.layout3:setLeft(5);
    obj.layout3:setName("layout3");

    obj.layout4 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout4:setParent(obj.layout3);
    obj.layout4:setAlign("top");
    obj.layout4:setHeight(40);
    obj.layout4:setMargins({bottom=4 , left=5});
    obj.layout4:setName("layout4");

    obj.button4 = GUI.fromHandle(_obj_newObject("button"));
    obj.button4:setParent(obj.layout4);
    obj.button4:setText("+");
    obj.button4:setWidth(40);
    obj.button4:setAlign("left");
    obj.button4:setFontSize(25);
    obj.button4:setName("button4");
    obj.button4:setFontColor("black");

    obj.rclListaArmasCaC = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaArmasCaC:setParent(obj.layout3);
    obj.rclListaArmasCaC:setName("rclListaArmasCaC");
    obj.rclListaArmasCaC:setField("campoArmasCaC");
    obj.rclListaArmasCaC:setTemplateForm("frmArmaCaC");
    obj.rclListaArmasCaC:setAlign("client");
    obj.rclListaArmasCaC:setSelectable(true);
    obj.rclListaArmasCaC:setHitTest(true);

    obj.layout5 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout5:setParent(obj.rectangle1);
    obj.layout5:setTop(140);
    obj.layout5:setHeight(20);
    obj.layout5:setWidth(1100);
    obj.layout5:setLeft(35);
    obj.layout5:setName("layout5");

    obj.label23 = GUI.fromHandle(_obj_newObject("label"));
    obj.label23:setParent(obj.layout5);
    obj.label23:setAlign("left");
    obj.label23:setVertTextAlign("center");
    obj.label23:setHorzTextAlign("center");
    obj.label23:setText("Nome");
    obj.label23:setWidth(190);
    obj.label23:setFontSize(14);
    obj.label23:setMargins({left = 2});
    obj.label23:setFontColor("#000000");
    obj.label23:setName("label23");

    obj.label24 = GUI.fromHandle(_obj_newObject("label"));
    obj.label24:setParent(obj.layout5);
    obj.label24:setAlign("left");
    obj.label24:setVertTextAlign("center");
    obj.label24:setHorzTextAlign("center");
    obj.label24:setText("Dano");
    obj.label24:setWidth(170);
    obj.label24:setFontSize(14);
    obj.label24:setMargins({left = 2});
    obj.label24:setFontColor("#000000");
    obj.label24:setName("label24");

    obj.label25 = GUI.fromHandle(_obj_newObject("label"));
    obj.label25:setParent(obj.layout5);
    obj.label25:setAlign("left");
    obj.label25:setVertTextAlign("center");
    obj.label25:setHorzTextAlign("center");
    obj.label25:setText("Tipo");
    obj.label25:setWidth(70);
    obj.label25:setFontSize(14);
    obj.label25:setMargins({left = 2});
    obj.label25:setFontColor("#000000");
    obj.label25:setName("label25");

    obj.label26 = GUI.fromHandle(_obj_newObject("label"));
    obj.label26:setParent(obj.layout5);
    obj.label26:setAlign("left");
    obj.label26:setVertTextAlign("center");
    obj.label26:setHorzTextAlign("center");
    obj.label26:setText("Alcance");
    obj.label26:setWidth(60);
    obj.label26:setFontSize(14);
    obj.label26:setMargins({left = 2});
    obj.label26:setFontColor("#000000");
    obj.label26:setName("label26");

    obj.label27 = GUI.fromHandle(_obj_newObject("label"));
    obj.label27:setParent(obj.layout5);
    obj.label27:setAlign("left");
    obj.label27:setVertTextAlign("center");
    obj.label27:setHorzTextAlign("center");
    obj.label27:setText("Custo $");
    obj.label27:setWidth(100);
    obj.label27:setFontSize(14);
    obj.label27:setMargins({left = 2});
    obj.label27:setFontColor("#000000");
    obj.label27:setName("label27");

    obj.label28 = GUI.fromHandle(_obj_newObject("label"));
    obj.label28:setParent(obj.layout5);
    obj.label28:setAlign("left");
    obj.label28:setVertTextAlign("center");
    obj.label28:setHorzTextAlign("center");
    obj.label28:setText("Peso");
    obj.label28:setWidth(100);
    obj.label28:setFontSize(14);
    obj.label28:setMargins({left = 2});
    obj.label28:setFontColor("#000000");
    obj.label28:setName("label28");

    obj.label29 = GUI.fromHandle(_obj_newObject("label"));
    obj.label29:setParent(obj.layout5);
    obj.label29:setAlign("left");
    obj.label29:setVertTextAlign("center");
    obj.label29:setHorzTextAlign("center");
    obj.label29:setText("FOR");
    obj.label29:setWidth(70);
    obj.label29:setFontSize(14);
    obj.label29:setMargins({left = 2});
    obj.label29:setFontColor("#000000");
    obj.label29:setName("label29");

    obj.label30 = GUI.fromHandle(_obj_newObject("label"));
    obj.label30:setParent(obj.layout5);
    obj.label30:setAlign("left");
    obj.label30:setVertTextAlign("center");
    obj.label30:setHorzTextAlign("center");
    obj.label30:setText("Notas");
    obj.label30:setWidth(230);
    obj.label30:setFontSize(14);
    obj.label30:setMargins({left = 2});
    obj.label30:setFontColor("#000000");
    obj.label30:setName("label30");

    obj.label31 = GUI.fromHandle(_obj_newObject("label"));
    obj.label31:setParent(obj.rectangle1);
    obj.label31:setTop(610);
    obj.label31:setLeft(200);
    obj.label31:setVertTextAlign("center");
    obj.label31:setText("Armaduras");
    obj.label31:setFontColor("#000000");
    obj.label31:setFontSize(18);
    obj.label31:setMargins({left = 50});
    obj.label31:setHeight(30);
    obj.label31:setWidth(800);
    obj.label31:setName("label31");

    obj.layout6 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout6:setParent(obj.rectangle1);
    obj.layout6:setTop(650);
    obj.layout6:setHeight(200);
    obj.layout6:setWidth(1160);
    obj.layout6:setLeft(5);
    obj.layout6:setName("layout6");

    obj.layout7 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout7:setParent(obj.layout6);
    obj.layout7:setAlign("top");
    obj.layout7:setHeight(40);
    obj.layout7:setMargins({bottom=4 , left=5});
    obj.layout7:setName("layout7");

    obj.button5 = GUI.fromHandle(_obj_newObject("button"));
    obj.button5:setParent(obj.layout7);
    obj.button5:setText("+");
    obj.button5:setWidth(40);
    obj.button5:setAlign("left");
    obj.button5:setFontSize(25);
    obj.button5:setName("button5");
    obj.button5:setFontColor("black");

    obj.rclListaArmaduras = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaArmaduras:setParent(obj.layout6);
    obj.rclListaArmaduras:setName("rclListaArmaduras");
    obj.rclListaArmaduras:setField("campoArmaduras");
    obj.rclListaArmaduras:setTemplateForm("frmArmadura");
    obj.rclListaArmaduras:setAlign("client");
    obj.rclListaArmaduras:setSelectable(true);

    obj.layout8 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout8:setParent(obj.rectangle1);
    obj.layout8:setTop(660);
    obj.layout8:setHeight(20);
    obj.layout8:setWidth(1100);
    obj.layout8:setLeft(35);
    obj.layout8:setName("layout8");

    obj.label32 = GUI.fromHandle(_obj_newObject("label"));
    obj.label32:setParent(obj.layout8);
    obj.label32:setAlign("left");
    obj.label32:setVertTextAlign("center");
    obj.label32:setHorzTextAlign("center");
    obj.label32:setText("Armadura");
    obj.label32:setWidth(200);
    obj.label32:setFontSize(14);
    obj.label32:setMargins({left = 2});
    obj.label32:setFontColor("#000000");
    obj.label32:setName("label32");

    obj.label33 = GUI.fromHandle(_obj_newObject("label"));
    obj.label33:setParent(obj.layout8);
    obj.label33:setAlign("left");
    obj.label33:setVertTextAlign("center");
    obj.label33:setHorzTextAlign("center");
    obj.label33:setText("PVs");
    obj.label33:setWidth(50);
    obj.label33:setFontSize(14);
    obj.label33:setMargins({left = 2});
    obj.label33:setFontColor("#000000");
    obj.label33:setName("label33");

    obj.label34 = GUI.fromHandle(_obj_newObject("label"));
    obj.label34:setParent(obj.layout8);
    obj.label34:setAlign("left");
    obj.label34:setVertTextAlign("center");
    obj.label34:setHorzTextAlign("center");
    obj.label34:setText("Custo $");
    obj.label34:setWidth(100);
    obj.label34:setFontSize(14);
    obj.label34:setMargins({left = 2});
    obj.label34:setFontColor("#000000");
    obj.label34:setName("label34");

    obj.label35 = GUI.fromHandle(_obj_newObject("label"));
    obj.label35:setParent(obj.layout8);
    obj.label35:setAlign("left");
    obj.label35:setVertTextAlign("center");
    obj.label35:setHorzTextAlign("center");
    obj.label35:setText("Peso");
    obj.label35:setWidth(80);
    obj.label35:setFontSize(14);
    obj.label35:setMargins({left = 2});
    obj.label35:setFontColor("#000000");
    obj.label35:setName("label35");

    obj.layout9 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout9:setParent(obj.rectangle1);
    obj.layout9:setTop(875);
    obj.layout9:setHeight(80);
    obj.layout9:setWidth(1300);
    obj.layout9:setLeft(5);
    obj.layout9:setName("layout9");

    obj.rectangle9 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle9:setParent(obj.layout9);
    obj.rectangle9:setColor("white");
    obj.rectangle9:setStrokeSize(1.0);
    obj.rectangle9:setHeight(80);
    obj.rectangle9:setWidth(1100);
    obj.rectangle9:setName("rectangle9");

    obj.rectangle10 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle10:setParent(obj.layout9);
    obj.rectangle10:setLeft(670);
    obj.rectangle10:setColor("white");
    obj.rectangle10:setStrokeSize(1.0);
    obj.rectangle10:setHeight(80);
    obj.rectangle10:setWidth(300);
    obj.rectangle10:setName("rectangle10");

    obj.rectangle11 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle11:setParent(obj.layout9);
    obj.rectangle11:setLeft(670);
    obj.rectangle11:setColor("white");
    obj.rectangle11:setStrokeSize(1.0);
    obj.rectangle11:setHeight(80);
    obj.rectangle11:setWidth(150);
    obj.rectangle11:setName("rectangle11");

    obj.rectangle12 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle12:setParent(obj.layout9);
    obj.rectangle12:setLeft(980);
    obj.rectangle12:setColor("white");
    obj.rectangle12:setStrokeSize(1.0);
    obj.rectangle12:setHeight(80);
    obj.rectangle12:setWidth(300);
    obj.rectangle12:setName("rectangle12");

    obj.rectangle13 = GUI.fromHandle(_obj_newObject("rectangle"));
    obj.rectangle13:setParent(obj.layout9);
    obj.rectangle13:setLeft(980);
    obj.rectangle13:setColor("white");
    obj.rectangle13:setStrokeSize(1.0);
    obj.rectangle13:setHeight(80);
    obj.rectangle13:setWidth(150);
    obj.rectangle13:setName("rectangle13");

    obj.label36 = GUI.fromHandle(_obj_newObject("label"));
    obj.label36:setParent(obj.layout9);
    obj.label36:setAlign("left");
    obj.label36:setVertTextAlign("center");
    obj.label36:setHorzTextAlign("center");
    obj.label36:setText("Peso Total: ");
    obj.label36:setWidth(100);
    obj.label36:setFontSize(14);
    obj.label36:setMargins({left = 2});
    obj.label36:setFontColor("#000000");
    obj.label36:setName("label36");

    obj.label37 = GUI.fromHandle(_obj_newObject("label"));
    obj.label37:setParent(obj.layout9);
    obj.label37:setAlign("left");
    obj.label37:setVertTextAlign("center");
    obj.label37:setHorzTextAlign("center");
    obj.label37:setField("peso_total");
    obj.label37:setWidth(120);
    obj.label37:setFontSize(18);
    obj.label37:setMargins({left = 2});
    obj.label37:setFontColor("#005050");
    obj.label37:setName("label37");

    obj.label38 = GUI.fromHandle(_obj_newObject("label"));
    obj.label38:setParent(obj.layout9);
    obj.label38:setAlign("left");
    obj.label38:setVertTextAlign("center");
    obj.label38:setHorzTextAlign("center");
    obj.label38:setText("Peso Total Sem Mochila: ");
    obj.label38:setWidth(100);
    obj.label38:setFontSize(14);
    obj.label38:setMargins({left = 2});
    obj.label38:setFontColor("#000000");
    obj.label38:setName("label38");

    obj.label39 = GUI.fromHandle(_obj_newObject("label"));
    obj.label39:setParent(obj.layout9);
    obj.label39:setAlign("left");
    obj.label39:setVertTextAlign("center");
    obj.label39:setHorzTextAlign("center");
    obj.label39:setField("peso_total_sm");
    obj.label39:setWidth(120);
    obj.label39:setFontSize(18);
    obj.label39:setMargins({left = 2});
    obj.label39:setFontColor("#005050");
    obj.label39:setName("label39");

    obj.label40 = GUI.fromHandle(_obj_newObject("label"));
    obj.label40:setParent(obj.layout9);
    obj.label40:setAlign("left");
    obj.label40:setVertTextAlign("center");
    obj.label40:setHorzTextAlign("center");
    obj.label40:setText("Custo Total $: ");
    obj.label40:setWidth(100);
    obj.label40:setFontSize(14);
    obj.label40:setMargins({left = 2});
    obj.label40:setFontColor("#000000");
    obj.label40:setName("label40");

    obj.label41 = GUI.fromHandle(_obj_newObject("label"));
    obj.label41:setParent(obj.layout9);
    obj.label41:setAlign("left");
    obj.label41:setVertTextAlign("center");
    obj.label41:setHorzTextAlign("center");
    obj.label41:setField("custo_total");
    obj.label41:setWidth(120);
    obj.label41:setFontSize(18);
    obj.label41:setMargins({left = 2});
    obj.label41:setFontColor("#505000");
    obj.label41:setName("label41");

    obj.label42 = GUI.fromHandle(_obj_newObject("label"));
    obj.label42:setParent(obj.layout9);
    obj.label42:setAlign("left");
    obj.label42:setVertTextAlign("center");
    obj.label42:setHorzTextAlign("center");
    obj.label42:setText("Deslocamento c/ mochila: ");
    obj.label42:setWidth(100);
    obj.label42:setFontSize(14);
    obj.label42:setMargins({left = 2});
    obj.label42:setFontColor("#000000");
    obj.label42:setName("label42");

    obj.label43 = GUI.fromHandle(_obj_newObject("label"));
    obj.label43:setParent(obj.layout9);
    obj.label43:setAlign("left");
    obj.label43:setVertTextAlign("center");
    obj.label43:setHorzTextAlign("center");
    obj.label43:setField("deslocamento_atual");
    obj.label43:setWidth(50);
    obj.label43:setFontSize(25);
    obj.label43:setMargins({left = 2});
    obj.label43:setFontColor("#005500");
    obj.label43:setName("label43");

    obj.label44 = GUI.fromHandle(_obj_newObject("label"));
    obj.label44:setParent(obj.layout9);
    obj.label44:setAlign("left");
    obj.label44:setVertTextAlign("center");
    obj.label44:setHorzTextAlign("center");
    obj.label44:setText("Defesa c/ mochila: ");
    obj.label44:setWidth(70);
    obj.label44:setFontSize(14);
    obj.label44:setMargins({left = 20});
    obj.label44:setFontColor("#000000");
    obj.label44:setName("label44");

    obj.label45 = GUI.fromHandle(_obj_newObject("label"));
    obj.label45:setParent(obj.layout9);
    obj.label45:setAlign("left");
    obj.label45:setVertTextAlign("center");
    obj.label45:setHorzTextAlign("center");
    obj.label45:setField("esquiva_atual");
    obj.label45:setWidth(60);
    obj.label45:setFontSize(25);
    obj.label45:setMargins({left = 2});
    obj.label45:setFontColor("#005500");
    obj.label45:setName("label45");

    obj.label46 = GUI.fromHandle(_obj_newObject("label"));
    obj.label46:setParent(obj.layout9);
    obj.label46:setAlign("left");
    obj.label46:setVertTextAlign("center");
    obj.label46:setHorzTextAlign("center");
    obj.label46:setText("Deslocamento sem mochila: ");
    obj.label46:setWidth(100);
    obj.label46:setFontSize(14);
    obj.label46:setMargins({left = 2});
    obj.label46:setFontColor("#000000");
    obj.label46:setName("label46");

    obj.label47 = GUI.fromHandle(_obj_newObject("label"));
    obj.label47:setParent(obj.layout9);
    obj.label47:setAlign("left");
    obj.label47:setVertTextAlign("center");
    obj.label47:setHorzTextAlign("center");
    obj.label47:setField("deslocamento_atual_sm");
    obj.label47:setWidth(50);
    obj.label47:setFontSize(25);
    obj.label47:setMargins({left = 2});
    obj.label47:setFontColor("#005500");
    obj.label47:setName("label47");

    obj.label48 = GUI.fromHandle(_obj_newObject("label"));
    obj.label48:setParent(obj.layout9);
    obj.label48:setAlign("left");
    obj.label48:setVertTextAlign("center");
    obj.label48:setHorzTextAlign("center");
    obj.label48:setText("Defesa sem mochila: ");
    obj.label48:setWidth(70);
    obj.label48:setFontSize(14);
    obj.label48:setMargins({left = 20});
    obj.label48:setFontColor("#000000");
    obj.label48:setName("label48");

    obj.label49 = GUI.fromHandle(_obj_newObject("label"));
    obj.label49:setParent(obj.layout9);
    obj.label49:setAlign("left");
    obj.label49:setVertTextAlign("center");
    obj.label49:setHorzTextAlign("center");
    obj.label49:setField("esquiva_atual_sm");
    obj.label49:setWidth(60);
    obj.label49:setFontSize(25);
    obj.label49:setMargins({left = 2});
    obj.label49:setFontColor("#005500");
    obj.label49:setName("label49");

    obj.label50 = GUI.fromHandle(_obj_newObject("label"));
    obj.label50:setParent(obj.rectangle1);
    obj.label50:setTop(965);
    obj.label50:setLeft(200);
    obj.label50:setVertTextAlign("center");
    obj.label50:setText("MOCHILA");
    obj.label50:setFontColor("#000000");
    obj.label50:setFontSize(18);
    obj.label50:setMargins({left = 50});
    obj.label50:setHeight(30);
    obj.label50:setWidth(800);
    obj.label50:setName("label50");

    obj.label51 = GUI.fromHandle(_obj_newObject("label"));
    obj.label51:setParent(obj.rectangle1);
    obj.label51:setVisible(false);
    obj.label51:setField("orderbyMochila");
    obj.label51:setName("label51");

    obj.button6 = GUI.fromHandle(_obj_newObject("button"));
    obj.button6:setParent(obj.rectangle1);
    obj.button6:setTop(990);
    obj.button6:setLeft(130);
    obj.button6:setText("^");
    obj.button6:setWidth(20);
    obj.button6:setHeight(20);
    obj.button6:setFontSize(18);
    lfm_setPropAsString(obj.button6, "fontStyle",  "bold");
    obj.button6:setName("button6");
    obj.button6:setFontColor("black");

    obj.button7 = GUI.fromHandle(_obj_newObject("button"));
    obj.button7:setParent(obj.rectangle1);
    obj.button7:setTop(990);
    obj.button7:setLeft(300);
    obj.button7:setText("^");
    obj.button7:setWidth(20);
    obj.button7:setHeight(20);
    obj.button7:setFontSize(18);
    lfm_setPropAsString(obj.button7, "fontStyle",  "bold");
    obj.button7:setName("button7");
    obj.button7:setFontColor("black");

    obj.button8 = GUI.fromHandle(_obj_newObject("button"));
    obj.button8:setParent(obj.rectangle1);
    obj.button8:setTop(990);
    obj.button8:setLeft(540);
    obj.button8:setText("^");
    obj.button8:setWidth(20);
    obj.button8:setHeight(20);
    obj.button8:setFontSize(18);
    lfm_setPropAsString(obj.button8, "fontStyle",  "bold");
    obj.button8:setName("button8");
    obj.button8:setFontColor("black");

    obj.button9 = GUI.fromHandle(_obj_newObject("button"));
    obj.button9:setParent(obj.rectangle1);
    obj.button9:setTop(990);
    obj.button9:setLeft(740);
    obj.button9:setText("^");
    obj.button9:setWidth(20);
    obj.button9:setHeight(20);
    obj.button9:setFontSize(18);
    lfm_setPropAsString(obj.button9, "fontStyle",  "bold");
    obj.button9:setName("button9");
    obj.button9:setFontColor("black");

    obj.button10 = GUI.fromHandle(_obj_newObject("button"));
    obj.button10:setParent(obj.rectangle1);
    obj.button10:setTop(990);
    obj.button10:setLeft(840);
    obj.button10:setText("^");
    obj.button10:setWidth(20);
    obj.button10:setHeight(20);
    obj.button10:setFontSize(18);
    lfm_setPropAsString(obj.button10, "fontStyle",  "bold");
    obj.button10:setName("button10");
    obj.button10:setFontColor("black");

    obj.button11 = GUI.fromHandle(_obj_newObject("button"));
    obj.button11:setParent(obj.rectangle1);
    obj.button11:setTop(990);
    obj.button11:setLeft(930);
    obj.button11:setText("^");
    obj.button11:setWidth(20);
    obj.button11:setHeight(20);
    obj.button11:setFontSize(18);
    lfm_setPropAsString(obj.button11, "fontStyle",  "bold");
    obj.button11:setName("button11");
    obj.button11:setFontColor("black");

    obj.layout10 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout10:setParent(obj.rectangle1);
    obj.layout10:setTop(1005);
    obj.layout10:setHeight(400);
    obj.layout10:setWidth(1160);
    obj.layout10:setLeft(5);
    obj.layout10:setName("layout10");

    obj.layout11 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout11:setParent(obj.layout10);
    obj.layout11:setAlign("top");
    obj.layout11:setHeight(40);
    obj.layout11:setMargins({bottom=4 , left=5});
    obj.layout11:setName("layout11");

    obj.button12 = GUI.fromHandle(_obj_newObject("button"));
    obj.button12:setParent(obj.layout11);
    obj.button12:setText("+");
    obj.button12:setWidth(40);
    obj.button12:setAlign("left");
    obj.button12:setFontSize(25);
    obj.button12:setName("button12");
    obj.button12:setFontColor("black");

    obj.rclListaPossesMoveis = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaPossesMoveis:setParent(obj.layout10);
    obj.rclListaPossesMoveis:setName("rclListaPossesMoveis");
    obj.rclListaPossesMoveis:setField("campoPossesMoveis");
    obj.rclListaPossesMoveis:setTemplateForm("frmPosses");
    obj.rclListaPossesMoveis:setAlign("client");
    obj.rclListaPossesMoveis:setSelectable(true);

    obj.layout12 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout12:setParent(obj.rectangle1);
    obj.layout12:setTop(1015);
    obj.layout12:setHeight(20);
    obj.layout12:setWidth(1100);
    obj.layout12:setLeft(35);
    obj.layout12:setName("layout12");

    obj.label52 = GUI.fromHandle(_obj_newObject("label"));
    obj.label52:setParent(obj.layout12);
    obj.label52:setAlign("left");
    obj.label52:setVertTextAlign("center");
    obj.label52:setHorzTextAlign("center");
    obj.label52:setWidth(200);
    obj.label52:setFontSize(13);
    obj.label52:setMargins({left = 2});
    obj.label52:setText("Posse");
    obj.label52:setFontColor("#000000");
    obj.label52:setName("label52");

    obj.label53 = GUI.fromHandle(_obj_newObject("label"));
    obj.label53:setParent(obj.layout12);
    obj.label53:setAlign("left");
    obj.label53:setVertTextAlign("center");
    obj.label53:setHorzTextAlign("center");
    obj.label53:setWidth(150);
    obj.label53:setFontSize(13);
    obj.label53:setMargins({left = 2});
    obj.label53:setText("Local");
    obj.label53:setFontColor("#000000");
    obj.label53:setName("label53");

    obj.label54 = GUI.fromHandle(_obj_newObject("label"));
    obj.label54:setParent(obj.layout12);
    obj.label54:setAlign("left");
    obj.label54:setVertTextAlign("center");
    obj.label54:setHorzTextAlign("center");
    obj.label54:setWidth(305);
    obj.label54:setFontSize(13);
    obj.label54:setMargins({left = 2});
    obj.label54:setText("Notas");
    obj.label54:setFontColor("#000000");
    obj.label54:setName("label54");

    obj.label55 = GUI.fromHandle(_obj_newObject("label"));
    obj.label55:setParent(obj.layout12);
    obj.label55:setAlign("left");
    obj.label55:setVertTextAlign("center");
    obj.label55:setHorzTextAlign("center");
    obj.label55:setWidth(100);
    obj.label55:setFontSize(13);
    obj.label55:setMargins({left = 2});
    obj.label55:setText("Qtd");
    obj.label55:setFontColor("#000000");
    obj.label55:setName("label55");

    obj.label56 = GUI.fromHandle(_obj_newObject("label"));
    obj.label56:setParent(obj.layout12);
    obj.label56:setAlign("left");
    obj.label56:setVertTextAlign("center");
    obj.label56:setHorzTextAlign("center");
    obj.label56:setWidth(100);
    obj.label56:setFontSize(13);
    obj.label56:setMargins({left = 2});
    obj.label56:setText("Custo $");
    obj.label56:setFontColor("#000000");
    obj.label56:setName("label56");

    obj.label57 = GUI.fromHandle(_obj_newObject("label"));
    obj.label57:setParent(obj.layout12);
    obj.label57:setAlign("left");
    obj.label57:setVertTextAlign("center");
    obj.label57:setHorzTextAlign("center");
    obj.label57:setWidth(80);
    obj.label57:setFontSize(13);
    obj.label57:setMargins({left = 2});
    obj.label57:setText("Peso");
    obj.label57:setFontColor("#000000");
    obj.label57:setName("label57");

    obj.label58 = GUI.fromHandle(_obj_newObject("label"));
    obj.label58:setParent(obj.rectangle1);
    obj.label58:setTop(1450);
    obj.label58:setLeft(200);
    obj.label58:setVertTextAlign("center");
    obj.label58:setText("Equipamentos Fora da Mochila");
    obj.label58:setFontColor("#000000");
    obj.label58:setFontSize(18);
    obj.label58:setMargins({left = 50});
    obj.label58:setHeight(30);
    obj.label58:setWidth(800);
    obj.label58:setName("label58");

    obj.layout13 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout13:setParent(obj.rectangle1);
    obj.layout13:setTop(1490);
    obj.layout13:setHeight(400);
    obj.layout13:setWidth(1160);
    obj.layout13:setLeft(5);
    obj.layout13:setName("layout13");

    obj.layout14 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout14:setParent(obj.layout13);
    obj.layout14:setAlign("top");
    obj.layout14:setHeight(40);
    obj.layout14:setMargins({bottom=4 , left=5});
    obj.layout14:setName("layout14");

    obj.button13 = GUI.fromHandle(_obj_newObject("button"));
    obj.button13:setParent(obj.layout14);
    obj.button13:setText("+");
    obj.button13:setWidth(40);
    obj.button13:setAlign("left");
    obj.button13:setFontSize(25);
    obj.button13:setName("button13");
    obj.button13:setFontColor("black");

    obj.rclListaPossesMoveisFM = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaPossesMoveisFM:setParent(obj.layout13);
    obj.rclListaPossesMoveisFM:setName("rclListaPossesMoveisFM");
    obj.rclListaPossesMoveisFM:setField("campoPossesMoveisFM");
    obj.rclListaPossesMoveisFM:setTemplateForm("frmPosses");
    obj.rclListaPossesMoveisFM:setAlign("client");
    obj.rclListaPossesMoveisFM:setSelectable(true);

    obj.layout15 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout15:setParent(obj.rectangle1);
    obj.layout15:setTop(1500);
    obj.layout15:setHeight(20);
    obj.layout15:setWidth(1100);
    obj.layout15:setLeft(35);
    obj.layout15:setName("layout15");

    obj.label59 = GUI.fromHandle(_obj_newObject("label"));
    obj.label59:setParent(obj.layout15);
    obj.label59:setAlign("left");
    obj.label59:setVertTextAlign("center");
    obj.label59:setHorzTextAlign("center");
    obj.label59:setWidth(200);
    obj.label59:setFontSize(13);
    obj.label59:setMargins({left = 2});
    obj.label59:setText("Posse");
    obj.label59:setFontColor("#000000");
    obj.label59:setName("label59");

    obj.label60 = GUI.fromHandle(_obj_newObject("label"));
    obj.label60:setParent(obj.layout15);
    obj.label60:setAlign("left");
    obj.label60:setVertTextAlign("center");
    obj.label60:setHorzTextAlign("center");
    obj.label60:setWidth(150);
    obj.label60:setFontSize(13);
    obj.label60:setMargins({left = 2});
    obj.label60:setText("Local");
    obj.label60:setFontColor("#000000");
    obj.label60:setName("label60");

    obj.label61 = GUI.fromHandle(_obj_newObject("label"));
    obj.label61:setParent(obj.layout15);
    obj.label61:setAlign("left");
    obj.label61:setVertTextAlign("center");
    obj.label61:setHorzTextAlign("center");
    obj.label61:setWidth(305);
    obj.label61:setFontSize(13);
    obj.label61:setMargins({left = 2});
    obj.label61:setText("Notas");
    obj.label61:setFontColor("#000000");
    obj.label61:setName("label61");

    obj.label62 = GUI.fromHandle(_obj_newObject("label"));
    obj.label62:setParent(obj.layout15);
    obj.label62:setAlign("left");
    obj.label62:setVertTextAlign("center");
    obj.label62:setHorzTextAlign("center");
    obj.label62:setWidth(100);
    obj.label62:setFontSize(13);
    obj.label62:setMargins({left = 2});
    obj.label62:setText("Qtd");
    obj.label62:setFontColor("#000000");
    obj.label62:setName("label62");

    obj.label63 = GUI.fromHandle(_obj_newObject("label"));
    obj.label63:setParent(obj.layout15);
    obj.label63:setAlign("left");
    obj.label63:setVertTextAlign("center");
    obj.label63:setHorzTextAlign("center");
    obj.label63:setWidth(100);
    obj.label63:setFontSize(13);
    obj.label63:setMargins({left = 2});
    obj.label63:setText("Custo $");
    obj.label63:setFontColor("#000000");
    obj.label63:setName("label63");

    obj.label64 = GUI.fromHandle(_obj_newObject("label"));
    obj.label64:setParent(obj.layout15);
    obj.label64:setAlign("left");
    obj.label64:setVertTextAlign("center");
    obj.label64:setHorzTextAlign("center");
    obj.label64:setWidth(80);
    obj.label64:setFontSize(13);
    obj.label64:setMargins({left = 2});
    obj.label64:setText("Peso");
    obj.label64:setFontColor("#000000");
    obj.label64:setName("label64");

    obj.label65 = GUI.fromHandle(_obj_newObject("label"));
    obj.label65:setParent(obj.rectangle1);
    obj.label65:setTop(1900);
    obj.label65:setLeft(200);
    obj.label65:setVertTextAlign("center");
    obj.label65:setText("Outras Posses");
    obj.label65:setFontColor("#000000");
    obj.label65:setFontSize(18);
    obj.label65:setMargins({left = 50});
    obj.label65:setHeight(30);
    obj.label65:setWidth(800);
    obj.label65:setName("label65");

    obj.layout16 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout16:setParent(obj.rectangle1);
    obj.layout16:setTop(1940);
    obj.layout16:setHeight(300);
    obj.layout16:setWidth(1050);
    obj.layout16:setLeft(5);
    obj.layout16:setName("layout16");

    obj.layout17 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout17:setParent(obj.layout16);
    obj.layout17:setAlign("top");
    obj.layout17:setHeight(40);
    obj.layout17:setMargins({bottom=4 , left=5});
    obj.layout17:setName("layout17");

    obj.button14 = GUI.fromHandle(_obj_newObject("button"));
    obj.button14:setParent(obj.layout17);
    obj.button14:setText("+");
    obj.button14:setWidth(40);
    obj.button14:setAlign("left");
    obj.button14:setFontSize(25);
    obj.button14:setName("button14");
    obj.button14:setFontColor("black");

    obj.rclListaOutrasPosses = GUI.fromHandle(_obj_newObject("recordList"));
    obj.rclListaOutrasPosses:setParent(obj.layout16);
    obj.rclListaOutrasPosses:setName("rclListaOutrasPosses");
    obj.rclListaOutrasPosses:setField("campoOutrasPosses");
    obj.rclListaOutrasPosses:setTemplateForm("frmOutrasPosses");
    obj.rclListaOutrasPosses:setAlign("client");
    obj.rclListaOutrasPosses:setSelectable(true);

    obj.layout18 = GUI.fromHandle(_obj_newObject("layout"));
    obj.layout18:setParent(obj.rectangle1);
    obj.layout18:setTop(1950);
    obj.layout18:setHeight(20);
    obj.layout18:setWidth(1100);
    obj.layout18:setLeft(35);
    obj.layout18:setName("layout18");

    obj.label66 = GUI.fromHandle(_obj_newObject("label"));
    obj.label66:setParent(obj.layout18);
    obj.label66:setAlign("left");
    obj.label66:setVertTextAlign("center");
    obj.label66:setHorzTextAlign("center");
    obj.label66:setWidth(800);
    obj.label66:setFontSize(16);
    obj.label66:setMargins({left = 2});
    obj.label66:setText("Posse");
    obj.label66:setFontColor("#000000");
    obj.label66:setName("label66");

    obj.label67 = GUI.fromHandle(_obj_newObject("label"));
    obj.label67:setParent(obj.layout18);
    obj.label67:setAlign("left");
    obj.label67:setVertTextAlign("center");
    obj.label67:setHorzTextAlign("center");
    obj.label67:setWidth(100);
    obj.label67:setFontSize(16);
    obj.label67:setMargins({left = 2});
    obj.label67:setText("Custo $");
    obj.label67:setFontColor("#000000");
    obj.label67:setName("label67");

    obj._e_event0 = obj.button1:addEventListener("onClick",
        function (_)
            self.calculaCusto();
            						self.calculaPeso();
        end, obj);

    obj._e_event1 = obj.edit1:addEventListener("onChange",
        function (_)
            self.calculaPeso();
        end, obj);

    obj._e_event2 = obj.button2:addEventListener("onClick",
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

    obj._e_event3 = obj.button3:addEventListener("onClick",
        function (_)
            self.calculaCusto();
            						self.calculaPeso();
        end, obj);

    obj._e_event4 = obj.button4:addEventListener("onClick",
        function (_)
            self.rclListaArmasCaC:append();
        end, obj);

    obj._e_event5 = obj.rclListaArmasCaC:addEventListener("onSelect",
        function (_)
            self.calculaPeso();
            						self.calculaCusto();
        end, obj);

    obj._e_event6 = obj.button5:addEventListener("onClick",
        function (_)
            self.rclListaArmaduras:append();
        end, obj);

    obj._e_event7 = obj.rclListaArmaduras:addEventListener("onSelect",
        function (_)
            self.calculaPeso();
            						self.calculaCusto();
        end, obj);

    obj._e_event8 = obj.button6:addEventListener("onClick",
        function (_)
            sheet.orderbyMochila = 0;
            						self.rclListaPossesMoveis:sort();
        end, obj);

    obj._e_event9 = obj.button7:addEventListener("onClick",
        function (_)
            sheet.orderbyMochila = 1;
            						self.rclListaPossesMoveis:sort();
        end, obj);

    obj._e_event10 = obj.button8:addEventListener("onClick",
        function (_)
            sheet.orderbyMochila = 2;
            						self.rclListaPossesMoveis:sort();
        end, obj);

    obj._e_event11 = obj.button9:addEventListener("onClick",
        function (_)
            sheet.orderbyMochila = 3;
            						self.rclListaPossesMoveis:sort();
        end, obj);

    obj._e_event12 = obj.button10:addEventListener("onClick",
        function (_)
            sheet.orderbyMochila = 4;
            						self.rclListaPossesMoveis:sort();
        end, obj);

    obj._e_event13 = obj.button11:addEventListener("onClick",
        function (_)
            sheet.orderbyMochila = 5;
            						self.rclListaPossesMoveis:sort();
        end, obj);

    obj._e_event14 = obj.button12:addEventListener("onClick",
        function (_)
            self.rclListaPossesMoveis:append();
        end, obj);

    obj._e_event15 = obj.rclListaPossesMoveis:addEventListener("onSelect",
        function (_)
            self.calculaPeso();
            						self.calculaCusto();
        end, obj);

    obj._e_event16 = obj.rclListaPossesMoveis:addEventListener("onCompare",
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

    obj._e_event17 = obj.button13:addEventListener("onClick",
        function (_)
            self.rclListaPossesMoveisFM:append();
        end, obj);

    obj._e_event18 = obj.rclListaPossesMoveisFM:addEventListener("onSelect",
        function (_)
            self.calculaPeso();
            						self.calculaCusto();
        end, obj);

    obj._e_event19 = obj.button14:addEventListener("onClick",
        function (_)
            self.rclListaOutrasPosses:append();
        end, obj);

    obj._e_event20 = obj.rclListaOutrasPosses:addEventListener("onSelect",
        function (_)
            self.calculaCusto();
        end, obj);

    function obj:_releaseEvents()
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

        if self.label33 ~= nil then self.label33:destroy(); self.label33 = nil; end;
        if self.rectangle11 ~= nil then self.rectangle11:destroy(); self.rectangle11 = nil; end;
        if self.label14 ~= nil then self.label14:destroy(); self.label14 = nil; end;
        if self.label44 ~= nil then self.label44:destroy(); self.label44 = nil; end;
        if self.layout15 ~= nil then self.layout15:destroy(); self.layout15 = nil; end;
        if self.layout10 ~= nil then self.layout10:destroy(); self.layout10 = nil; end;
        if self.rectangle9 ~= nil then self.rectangle9:destroy(); self.rectangle9 = nil; end;
        if self.label43 ~= nil then self.label43:destroy(); self.label43 = nil; end;
        if self.label40 ~= nil then self.label40:destroy(); self.label40 = nil; end;
        if self.layout17 ~= nil then self.layout17:destroy(); self.layout17 = nil; end;
        if self.label57 ~= nil then self.label57:destroy(); self.label57 = nil; end;
        if self.label45 ~= nil then self.label45:destroy(); self.label45 = nil; end;
        if self.label55 ~= nil then self.label55:destroy(); self.label55 = nil; end;
        if self.label66 ~= nil then self.label66:destroy(); self.label66 = nil; end;
        if self.label26 ~= nil then self.label26:destroy(); self.label26 = nil; end;
        if self.label23 ~= nil then self.label23:destroy(); self.label23 = nil; end;
        if self.button2 ~= nil then self.button2:destroy(); self.button2 = nil; end;
        if self.label22 ~= nil then self.label22:destroy(); self.label22 = nil; end;
        if self.label32 ~= nil then self.label32:destroy(); self.label32 = nil; end;
        if self.label63 ~= nil then self.label63:destroy(); self.label63 = nil; end;
        if self.label24 ~= nil then self.label24:destroy(); self.label24 = nil; end;
        if self.layout3 ~= nil then self.layout3:destroy(); self.layout3 = nil; end;
        if self.label35 ~= nil then self.label35:destroy(); self.label35 = nil; end;
        if self.label13 ~= nil then self.label13:destroy(); self.label13 = nil; end;
        if self.layout8 ~= nil then self.layout8:destroy(); self.layout8 = nil; end;
        if self.rectangle10 ~= nil then self.rectangle10:destroy(); self.rectangle10 = nil; end;
        if self.layout1 ~= nil then self.layout1:destroy(); self.layout1 = nil; end;
        if self.label27 ~= nil then self.label27:destroy(); self.label27 = nil; end;
        if self.rectangle1 ~= nil then self.rectangle1:destroy(); self.rectangle1 = nil; end;
        if self.layout13 ~= nil then self.layout13:destroy(); self.layout13 = nil; end;
        if self.label59 ~= nil then self.label59:destroy(); self.label59 = nil; end;
        if self.label60 ~= nil then self.label60:destroy(); self.label60 = nil; end;
        if self.label61 ~= nil then self.label61:destroy(); self.label61 = nil; end;
        if self.label64 ~= nil then self.label64:destroy(); self.label64 = nil; end;
        if self.rectangle5 ~= nil then self.rectangle5:destroy(); self.rectangle5 = nil; end;
        if self.label65 ~= nil then self.label65:destroy(); self.label65 = nil; end;
        if self.layout12 ~= nil then self.layout12:destroy(); self.layout12 = nil; end;
        if self.label67 ~= nil then self.label67:destroy(); self.label67 = nil; end;
        if self.button1 ~= nil then self.button1:destroy(); self.button1 = nil; end;
        if self.label8 ~= nil then self.label8:destroy(); self.label8 = nil; end;
        if self.label4 ~= nil then self.label4:destroy(); self.label4 = nil; end;
        if self.label6 ~= nil then self.label6:destroy(); self.label6 = nil; end;
        if self.label31 ~= nil then self.label31:destroy(); self.label31 = nil; end;
        if self.layout9 ~= nil then self.layout9:destroy(); self.layout9 = nil; end;
        if self.label34 ~= nil then self.label34:destroy(); self.label34 = nil; end;
        if self.button13 ~= nil then self.button13:destroy(); self.button13 = nil; end;
        if self.label15 ~= nil then self.label15:destroy(); self.label15 = nil; end;
        if self.label37 ~= nil then self.label37:destroy(); self.label37 = nil; end;
        if self.label41 ~= nil then self.label41:destroy(); self.label41 = nil; end;
        if self.label49 ~= nil then self.label49:destroy(); self.label49 = nil; end;
        if self.rclListaArmasCaC ~= nil then self.rclListaArmasCaC:destroy(); self.rclListaArmasCaC = nil; end;
        if self.label12 ~= nil then self.label12:destroy(); self.label12 = nil; end;
        if self.label16 ~= nil then self.label16:destroy(); self.label16 = nil; end;
        if self.label52 ~= nil then self.label52:destroy(); self.label52 = nil; end;
        if self.label28 ~= nil then self.label28:destroy(); self.label28 = nil; end;
        if self.rectangle8 ~= nil then self.rectangle8:destroy(); self.rectangle8 = nil; end;
        if self.label9 ~= nil then self.label9:destroy(); self.label9 = nil; end;
        if self.label47 ~= nil then self.label47:destroy(); self.label47 = nil; end;
        if self.edit1 ~= nil then self.edit1:destroy(); self.edit1 = nil; end;
        if self.label48 ~= nil then self.label48:destroy(); self.label48 = nil; end;
        if self.label53 ~= nil then self.label53:destroy(); self.label53 = nil; end;
        if self.button4 ~= nil then self.button4:destroy(); self.button4 = nil; end;
        if self.button3 ~= nil then self.button3:destroy(); self.button3 = nil; end;
        if self.rectangle7 ~= nil then self.rectangle7:destroy(); self.rectangle7 = nil; end;
        if self.label1 ~= nil then self.label1:destroy(); self.label1 = nil; end;
        if self.layout4 ~= nil then self.layout4:destroy(); self.layout4 = nil; end;
        if self.label42 ~= nil then self.label42:destroy(); self.label42 = nil; end;
        if self.button7 ~= nil then self.button7:destroy(); self.button7 = nil; end;
        if self.label17 ~= nil then self.label17:destroy(); self.label17 = nil; end;
        if self.label58 ~= nil then self.label58:destroy(); self.label58 = nil; end;
        if self.rclListaArmaduras ~= nil then self.rclListaArmaduras:destroy(); self.rclListaArmaduras = nil; end;
        if self.layout5 ~= nil then self.layout5:destroy(); self.layout5 = nil; end;
        if self.button11 ~= nil then self.button11:destroy(); self.button11 = nil; end;
        if self.layout18 ~= nil then self.layout18:destroy(); self.layout18 = nil; end;
        if self.label56 ~= nil then self.label56:destroy(); self.label56 = nil; end;
        if self.label29 ~= nil then self.label29:destroy(); self.label29 = nil; end;
        if self.button12 ~= nil then self.button12:destroy(); self.button12 = nil; end;
        if self.button6 ~= nil then self.button6:destroy(); self.button6 = nil; end;
        if self.label36 ~= nil then self.label36:destroy(); self.label36 = nil; end;
        if self.rectangle2 ~= nil then self.rectangle2:destroy(); self.rectangle2 = nil; end;
        if self.rectangle3 ~= nil then self.rectangle3:destroy(); self.rectangle3 = nil; end;
        if self.rectangle6 ~= nil then self.rectangle6:destroy(); self.rectangle6 = nil; end;
        if self.button5 ~= nil then self.button5:destroy(); self.button5 = nil; end;
        if self.label21 ~= nil then self.label21:destroy(); self.label21 = nil; end;
        if self.label30 ~= nil then self.label30:destroy(); self.label30 = nil; end;
        if self.label51 ~= nil then self.label51:destroy(); self.label51 = nil; end;
        if self.label10 ~= nil then self.label10:destroy(); self.label10 = nil; end;
        if self.label19 ~= nil then self.label19:destroy(); self.label19 = nil; end;
        if self.button10 ~= nil then self.button10:destroy(); self.button10 = nil; end;
        if self.layout2 ~= nil then self.layout2:destroy(); self.layout2 = nil; end;
        if self.rectangle12 ~= nil then self.rectangle12:destroy(); self.rectangle12 = nil; end;
        if self.label46 ~= nil then self.label46:destroy(); self.label46 = nil; end;
        if self.rclListaPossesMoveis ~= nil then self.rclListaPossesMoveis:destroy(); self.rclListaPossesMoveis = nil; end;
        if self.label39 ~= nil then self.label39:destroy(); self.label39 = nil; end;
        if self.label54 ~= nil then self.label54:destroy(); self.label54 = nil; end;
        if self.label11 ~= nil then self.label11:destroy(); self.label11 = nil; end;
        if self.layout11 ~= nil then self.layout11:destroy(); self.layout11 = nil; end;
        if self.label3 ~= nil then self.label3:destroy(); self.label3 = nil; end;
        if self.label20 ~= nil then self.label20:destroy(); self.label20 = nil; end;
        if self.button9 ~= nil then self.button9:destroy(); self.button9 = nil; end;
        if self.label25 ~= nil then self.label25:destroy(); self.label25 = nil; end;
        if self.label7 ~= nil then self.label7:destroy(); self.label7 = nil; end;
        if self.label50 ~= nil then self.label50:destroy(); self.label50 = nil; end;
        if self.button8 ~= nil then self.button8:destroy(); self.button8 = nil; end;
        if self.label18 ~= nil then self.label18:destroy(); self.label18 = nil; end;
        if self.label2 ~= nil then self.label2:destroy(); self.label2 = nil; end;
        if self.rclListaPossesMoveisFM ~= nil then self.rclListaPossesMoveisFM:destroy(); self.rclListaPossesMoveisFM = nil; end;
        if self.label5 ~= nil then self.label5:destroy(); self.label5 = nil; end;
        if self.layout6 ~= nil then self.layout6:destroy(); self.layout6 = nil; end;
        if self.label38 ~= nil then self.label38:destroy(); self.label38 = nil; end;
        if self.rectangle4 ~= nil then self.rectangle4:destroy(); self.rectangle4 = nil; end;
        if self.rectangle13 ~= nil then self.rectangle13:destroy(); self.rectangle13 = nil; end;
        if self.label62 ~= nil then self.label62:destroy(); self.label62 = nil; end;
        if self.rclListaOutrasPosses ~= nil then self.rclListaOutrasPosses:destroy(); self.rclListaOutrasPosses = nil; end;
        if self.layout14 ~= nil then self.layout14:destroy(); self.layout14 = nil; end;
        if self.layout16 ~= nil then self.layout16:destroy(); self.layout16 = nil; end;
        if self.button14 ~= nil then self.button14:destroy(); self.button14 = nil; end;
        if self.scrollBox1 ~= nil then self.scrollBox1:destroy(); self.scrollBox1 = nil; end;
        if self.layout7 ~= nil then self.layout7:destroy(); self.layout7 = nil; end;
        self:_oldLFMDestroy();
    end;

    obj:endUpdate();

    return obj;
end;

function newalterion_2023_3()
    local retObj = nil;
    __o_rrpgObjs.beginObjectsLoading();

    __o_Utils.tryFinally(
      function()
        retObj = constructNew_alterion_2023_3();
      end,
      function()
        __o_rrpgObjs.endObjectsLoading();
      end);

    assert(retObj ~= nil);
    return retObj;
end;

local _alterion_2023_3 = {
    newEditor = newalterion_2023_3, 
    new = newalterion_2023_3, 
    name = "alterion_2023_3", 
    dataType = "", 
    formType = "undefined", 
    formComponentName = "form", 
    title = "", 
    description=""};

alterion_2023_3 = _alterion_2023_3;
Firecast.registrarForm(_alterion_2023_3);

return _alterion_2023_3;
