// ************************************************************
// 			  	TestHello
// ************************************************************

/*Instance DIA_Gregorius_TestHello (C_INFO)
{
	npc = PIR_66001_Gregorius;
	nr = 1;
	condition = DIA_Gregorius_TestHello_Condition;
	information = DIA_Gregorius_TestHello_Info;
	description = "";
	important = TRUE;
	permanent	= FALSE;
};

Func int DIA_Gregorius_TestHello_Condition()
{
	return TRUE;
};

Func void DIA_Gregorius_TestHello_Info()
{
	AI_Output (other, self, "DIA_Gregorius_TestHello_15_0"); // Hello
	AI_Output (self, other, "DIA_Gregorius_TestHello_1_1"); // Hi
}; */

// ************************************************************
// 			  	EXIT
// ************************************************************
INSTANCE DIA_Gregorius_EXIT(C_INFO)
{
	npc			= PIR_66001_Gregorius;
	nr			= 999;
	condition	= DIA_Gregorius_EXIT_Condition;
	information	= DIA_Gregorius_EXIT_Info;
	permanent	= TRUE;
	description = "ENDE";
};
                       
FUNC INT DIA_Gregorius_EXIT_Condition()
{
	
		return TRUE;
	
};
FUNC VOID DIA_Gregorius_EXIT_Info()
{	
	AI_StopProcessInfos	(self);
};
// ************************************************************
// 			  	Intro
// ************************************************************

Instance DIA_Gregorius_Intro (C_INFO)
{
	npc = PIR_66001_Gregorius;
	nr = 1;
	condition = DIA_Gregorius_Intro_Condition;
	information = DIA_Gregorius_Intro_Info;
	description = "";
	important = TRUE;
};

Func int DIA_Gregorius_Intro_Condition()
{
	return TRUE;
};

Func void DIA_Gregorius_Intro_Info()
{
	AI_Output (self, other, "DIA_Gregorius_Intro_1_6"); // Na endlich bist du wach, ich dachte schon du kommst garnicht mehr zu dir. 
	AI_Output (other, self, "DIA_Gregorius_Intro_15_0"); // Arggghh.. wo bin ich? Mein Kopf...
	AI_Output (self, other, "DIA_Gregorius_Intro_1_7"); // Du bist in Sicherheit. Hier können dich die Garisten erstmal nicht finden.
	AI_Output (other, self, "DIA_Gregorius_Intro_15_1"); // Oh danke dir ich bin.. 
	AI_Output (self, other, "DIA_Gregorius_Intro_1_8"); // Ein Sträfling der keine Lust auf die Kolonie hat. Ich kenne dein schmutziges Geheimnis so wie du aussiehst.
	AI_Output (other, self, "DIA_Gregorius_Intro_15_2"); // Warum hast du mich gerettet?
	AI_Output (self, other, "DIA_Gregorius_Intro_1_9"); // Du lagst da wie ein Häufchen Elend und tatest mir irgendwie Leid.
	AI_Output (self, other, "DIA_Gregorius_Intro_1_10"); // Du könntest mir aber nützlich sein. Gleich in der Nähe hier ist ein großer Bauernhof. Dem Großbauern dort quillt das Gold fast zu den Ohren raus und ich bin knapp bei Kasse. 
	AI_Output (other, self, "DIA_Gregorius_Intro_15_3"); // Warte, soll ich ihn etwa für dich beklauen? 
	AI_Output (self, other, "DIA_Gregorius_Intro_1_11"); // Mensch scheint als ob dein Hirn doch noch funktioniert! Ich habe es vor ein paar Tagen schon selbst versucht da einzusteigen, jedoch falle ich da leider auf wie ein bunter Hund!
	AI_Output (self, other, "DIA_Gregorius_Intro_1_12"); // Du sollst für mich herausfinden, was es dort alles zu holen gibt und dann bringst du mir alles Gold und Silber was du finden kannst, kapiert?
	AI_Output (other, self, "DIA_Gregorius_Intro_15_4"); // Und wenn nicht? 
	AI_Output (self, other, "DIA_Gregorius_Intro_1_13"); // Hör ma! Erstens habe ich dich gerettet, ein bisschen Dankbarkeit wäre angebracht.
	AI_Output (self, other, "DIA_Gregorius_Intro_1_14"); // Zweitens, habe ich einige Kontakte zur Stadtmiliz im Hafen. Schließlich bin ich Gregorius Stahlbart! Du hast sicher schon von mir gehört.
	AI_Output (other, self, "DIA_Gregorius_Intro_15_5"); // Nicht wirklich.
	AI_Output (self, other, "DIA_Gregorius_Intro_1_15"); // Naja, wird bestimmt noch. Sobald ich Kapitän bin...
	AI_Output (self, other, "DIA_Gregorius_Intro_1_16"); // Aufjedenfall buchten dich die Miliz sofort wieder ein und zack, bist auf dem Weg in die Kolonie! 
	 Info_ClearChoices(DIA_Gregorius_Intro);
	Info_AddChoice	(DIA_Gregorius_Intro, "Wie soll ich das anstellen?", DIA_Gregorius_Intro_How );
};

Func void DIA_Gregorius_Intro_How()
{
	Info_ClearChoices (DIA_Gregorius_Intro);
	AI_Output (other, self, "DIA_Gregorius_Intro_How_15_17"); // Wie soll ich das anstellen? 
	AI_Output (self, other, "DIA_Gregorius_Intro_How_1_19"); // So wie du aussiehst, erkennt man auf 100 Metern, dass du ein Kolonieflüchtling bist. Die Bauern nehmen euch auf, weil ihr billige Arbeitskräfte seid. 
	AI_Output (self, other, "DIA_Gregorius_Intro_How_1_20"); // Im Gegenzug geben sie euch Klamotten damit ihr nicht auffallt und verpfeifen euch nicht. Zu allerst sollst du dorthin gehen und herausfinden, was es da alles zu holen gibt, klar?
	AI_Output (other, self, "DIA_Gregorius_Intro_How_15_18"); //  Wo ist der Bauernhof?
	AI_Output (self, other, "DIA_Gregorius_Intro_How_1_21"); // Geh gleich gerade aus weiter, du kannst es eigentlich nicht verfehlen. 
	MIS_GREGS_TREASURY = LOG_RUNNING;
	Log_CreateTopic 	(TOPIC_GREGS_TREASURY, LOG_MISSION	);
	Log_SetTopicStatus 	(TOPIC_GREGS_TREASURY	, LOG_RUNNING	);
	B_LogEntry 	(TOPIC_GREGS_TREASURY	, "Gregorius hat mich gerettet, allerdings verlangt er von mir, den Bauernhof auszurauben und dafür Informationen zu sammeln, was es da zu holen gibt. Ich sollte mich da mal umschauen.");
	
	};