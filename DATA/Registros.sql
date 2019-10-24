use ventas;
insert into CLIENTE
	(IDCLI,NOMCLI,APECLI,CIUCLI,ESTCLI,UBICLI,BALCLI)
values
	("C0954327","Sheri","Gordon","Littleton","CO","80129-5543",230.00),
	("C1010398","Jim","Glussman","Denver","CO","80111-0033",200.00),
	("C2388597","Beth","Taylor","Seattle","WA","98103-1121",500.00),
	("C3340959","Betty","Wise","Seattle","WA","98178-3311",200.00),
	("C3499503","Bob","Mann","Monroe","WA","98013-1095",0.00),
	("C8543321","Ron","Thompson","Renton","WA","98666-1289",85.00);
    select * from CLIENTE;
insert into EMPLEADO
	(IDEMP,NOMEMP,APEEMP,CELEMP,EMAEMP)
values
	("E1329594","Landi","Santos","(303)789-1234","LSantos@bigco.com"),
	("E8544399","Joe","Jenkins","(303)221-9875","JJenkins@bigco.com"),
	("E8843211","Amy","Tang","(303)556-4321","ATang@bigo.com"),
	("E9345771","Colin","White","(303)221-4453","CWhite@bigco.com"),
	("E9884325","Thomas","Johnson","(303)556-9987","TJohnson@bigco.com"),
	("E9954302","Mary","Hill","(303)556-9871","MHill@bigco.com");
	select * from EMPLEADO;
insert into ORDEN
	(IDORD,FECORD,IDCLI,IDEMP)
values
	("01116324","13-01-23","C0954327","E8544399"),
    ("02334661","13-01-14","C0954327","E1329594"),
    ("03331222","13-01-13","C1010398","E9345771"),
    ("02233457","13-01-12","C2388597","E9884325"),
    ("04714645","13-01-11","C2388597","E1329594"),
    ("05511365","13-01-22","C3340959","E9884325"),
    ("07989497","13-01-16","C3499503","E9345771"),
    ("01656777","13-02-11","C8543321","E9345771"),
    ("07959898","13-02-19","C8543321","E8544399");

    select * from ORDEN;



