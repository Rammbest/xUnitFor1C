﻿&НаКлиенте
Перем КонтекстЯдра;

// { Plugin interface

&НаКлиенте
Функция ОписаниеПлагина(ВозможныеТипыПлагинов) Экспорт
	Возврат ОписаниеПлагинаНаСервере(ВозможныеТипыПлагинов);
КонецФункции

&НаКлиенте
Процедура Инициализация(КонтекстЯдраПараметр) Экспорт
	КонтекстЯдра = КонтекстЯдраПараметр;
КонецПроцедуры

&НаСервере
Функция ОписаниеПлагинаНаСервере(ВозможныеТипыПлагинов)
	Возврат Объект().ОписаниеПлагина(ВозможныеТипыПлагинов);
КонецФункции

// } Plugin interface

// { Settings interface

&НаКлиенте
Функция ПолучитьНастройки() Экспорт
	Если Объект.Настройки = Неопределено Тогда
		ПутьФайлаНастроек = КонтекстЯдра.ПутьФайлаНастроек();
		
		Объект.Настройки = Новый Структура();
		ФайлНастроек = Новый Файл(ПутьФайлаНастроек);
		Если ФайлНастроек.Существует() Тогда
			ЧтениеJSON = Новый ЧтениеJSON;
			ЧтениеJSON.ОткрытьФайл(ПутьФайлаНастроек);

			Настройки = ПрочитатьJSON(ЧтениеJSON, Ложь);
		КонецЕсли;
		Объект.Настройки = Новый ФиксированнаяСтруктура(Настройки);
	КонецЕсли; 
	Возврат Объект.Настройки;
КонецФункции

&НаКлиенте
Функция ПолучитьНастройку(Знач КлючНастройки) Экспорт
	
	ПолучитьНастройки();
	
	Результат = Неопределено;
	Объект.Настройки.Свойство(КлючНастройки, Результат);
	Возврат Результат;

КонецФункции

// } Settings interface

&НаСервере
Функция Объект()
	Возврат РеквизитФормыВЗначение("Объект");
КонецФункции

// } Settings interface
.Настройки = Новый ФиксированнаяСтруктура(Настройки);
	КонецЕсли; 
	Возврат Объект.Настройки;
КонецФункции

&НаКлиенте
Функция ПолучитьНастройку(Знач КлючНастройки) Экспорт
	
	ПолучитьНастройки();
	
	Результат = Неопределено;
	Объект.Настройки.Свойство(КлючНастройки, Результат);
	Возврат Результат;

КонецФункции

// } Settings interface

&НаСервере
Функция Объект()
	Возврат РеквизитФормыВЗначение(""Объект"");
КонецФункции

// } Settings interface
",
{4,1,
{9,
{1},0,"Объект",
{1,0},
{"Pattern",
{"#",85629dd2-6be4-49c6-9a69-13411102aa57}
},
{0,
{0,
{"B",1},0}
},
{0,
{0,
{"B",1},0}
},
{0,0},
{0,0},1,0,0,0,
{0,0},
{0,0}
},0,0,
{#base64:77u/PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxTZXR0
aW5ncyB4bWxucz0iaHR0cDovL3Y4LjFjLnJ1LzguMS9kYXRhLWNvbXBvc2l0aW9u
LXN5c3RlbS9zZXR0aW5ncyIgeG1sbnM6ZGNzY29yPSJodHRwOi8vdjguMWMucnUv
OC4xL2RhdGEtY29tcG9zaXRpb24tc3lzdGVtL2NvcmUiIHhtbG5zOnN0eWxlPSJo
dHRwOi8vdjguMWMucnUvOC4xL2RhdGEvdWkvc3R5bGUiIHhtbG5zOnN5cz0iaHR0
cDovL3Y4LjFjLnJ1LzguMS9kYXRhL3VpL2ZvbnRzL3N5c3RlbSIgeG1sbnM6djg9
Imh0dHA6Ly92OC4xYy5ydS84LjEvZGF0YS9jb3JlIiB4bWxuczp2OHVpPSJodHRw
Oi8vdjguMWMucnUvOC4xL2RhdGEvdWkiIHhtbG5zOndlYj0iaHR0cDovL3Y4LjFj
LnJ1LzguMS9kYXRhL3VpL2NvbG9ycy93ZWIiIHhtbG5zOndpbj0iaHR0cDovL3Y4
LjFjLnJ1LzguMS9kYXRhL3VpL2NvbG9ycy93aW5kb3dzIiB4bWxuczp4cz0iaHR0
cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEiIHhtbG5zOnhzaT0iaHR0cDov
L3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2UiPg0KCTxvdXRwdXRQ
YXJhbWV0ZXJzLz4NCjwvU2V0dGluZ3M+}
},
{0,0},
{0,0},
{0,0},
{0,0},0,0}