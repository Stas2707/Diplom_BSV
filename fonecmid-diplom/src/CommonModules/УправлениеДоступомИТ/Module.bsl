
// Заполняет описания поставляемых профилей групп доступа и
// переопределяет параметры обновления профилей и групп доступа.
//
// Для автоматической подготовки содержимого процедуры следует воспользоваться инструментами
// разработчика для подсистемы Управление доступом.
//
// Параметры:
//  ОписанияПрофилей - Массив из см. УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа,
//                               см. УправлениеДоступом.НовоеОписаниеПапкиПрофилейГруппДоступа
//  ПараметрыОбновления - Структура:
//   * ОбновлятьИзмененныеПрофили - Булево - начальное значение Истина.
//   * ЗапретитьИзменениеПрофилей - Булево - начальное значение Истина.
//       Если установить Ложь, тогда поставляемые профили можно не только просматривать, но и редактировать.
//   * ОбновлятьГруппыДоступа     - Булево - начальное значение Истина.
//   * ОбновлятьГруппыДоступаСУстаревшимиНастройками - Булево - начальное значение Ложь.
//       Если установить Истина, то настройки значений, выполненные администратором для
//       вида доступа, который был удален из профиля, будут также удалены из групп доступа.
//
// Пример:
//  ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
//  ОписаниеПрофиля.Имя           = "Менеджер";
//  ОписаниеПрофиля.Идентификатор = "75fa0ecb-98aa-11df-b54f-e0cb4ed5f655";
//  ОписаниеПрофиля.Наименование  = НСтр("ru = 'Менеджер по продажам'", ОбщегоНазначения.КодОсновногоЯзыка());
//  ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
//  ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
//  ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
//  ОписаниеПрофиля.Роли.Добавить("Подсистема_Продажи");
//  ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПокупателей");
//  ОписаниеПрофиля.Роли.Добавить("ПросмотрОтчетаКнигаПокупок");
//  ОписанияПрофилей.Добавить(ОписаниеПрофиля);
//
//  ОписаниеПапки = УправлениеДоступом.НовоеОписаниеПапкиПрофилейГруппДоступа();
//  ОписаниеПапки.Имя           = "ДополнительныеПрофили";
//  ОписаниеПапки.Идентификатор = "69a066e7-ce81-11eb-881c-b06ebfbf08c7";
//  ОписаниеПапки.Наименование  = НСтр("ru = 'Дополнительные профили'", ОбщегоНазначения.КодОсновногоЯзыка());
//  ОписанияПрофилей.Добавить(ОписаниеПапки);
//
//  ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
//  ОписаниеПрофиля.Родитель = "ДополнительныеПрофили";
//  ОписаниеПрофиля.Идентификатор = "70179f20-2315-11e6-9bff-d850e648b60c";
//  ОписаниеПрофиля.Наименование = НСтр("ru = 'Редактирование, отправка по почте, сохранение в файл печатных форм (дополнительно)'",
//  	ОбщегоНазначения.КодОсновногоЯзыка());
//  ОписаниеПрофиля.Описание = НСтр("ru = 'Дополнительно назначается пользователям, которым должна быть доступна возможность редактирования,
//  	|перед печатью, отправка по почте и сохранение в файл сформированных печатных форм.'");
//  ОписаниеПрофиля.Роли.Добавить("РедактированиеПечатныхФорм");
//  ОписанияПрофилей.Добавить(ОписаниеПрофиля);
//
Процедура ПриЗаполненииПоставляемыхПрофилейГруппДоступа(ОписанияПрофилей, ПараметрыОбновления) Экспорт
	
	ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
	ОписаниеПрофиля.Имя           = "Менеджер по продажам";
	ОписаниеПрофиля.Идентификатор = "21c30ab2-3d82-4f54-be4c-d303b5f826ea";
	ОписаниеПрофиля.Наименование  = НСтр("ru = 'Менеджер по продажам'", ОбщегоНазначения.КодОсновногоЯзыка());
	ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
	ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
	ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
	ОписаниеПрофиля.Роли.Добавить("ВыводНаПринтерФайлБуферОбмена");
	ОписаниеПрофиля.Роли.Добавить("ПросмотрСвязанныеДокументы");
	ОписаниеПрофиля.Роли.Добавить("СохранениеДанныхПользователя");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВариантовОтчетов");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхОтчетовИОбработок");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхСведений");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеУчетныхЗаписейЭлектроннойПочты");
	ОписаниеПрофиля.Роли.Добавить("БазоваяФункциональностьТП");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеКонтрагентов");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПродажи");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВзаиморасчетовСПокупателями");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеНСИ");
	ОписанияПрофилей.Добавить(ОписаниеПрофиля);
	
	ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
	ОписаниеПрофиля.Имя           = "Менеджер по закупкам";
	ОписаниеПрофиля.Идентификатор = "0ab577d8-fbac-45a9-b44f-7a0ca3c96d2c";
	ОписаниеПрофиля.Наименование  = НСтр("ru = 'Менеджер по закупкам'", ОбщегоНазначения.КодОсновногоЯзыка());
	ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
	ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
	ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
	ОписаниеПрофиля.Роли.Добавить("ВыводНаПринтерФайлБуферОбмена");
	ОписаниеПрофиля.Роли.Добавить("ПросмотрСвязанныеДокументы");
	ОписаниеПрофиля.Роли.Добавить("СохранениеДанныхПользователя");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВариантовОтчетов");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхОтчетовИОбработок");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхСведений");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеУчетныхЗаписейЭлектроннойПочты");
	ОписаниеПрофиля.Роли.Добавить("БазоваяФункциональностьТП");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеКонтрагентов");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПокупки");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВзаиморасчетовСПоставщиками");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеНСИ");
	ОписанияПрофилей.Добавить(ОписаниеПрофиля);
	
	ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
	ОписаниеПрофиля.Имя           = "Главный бухгалтер";
	ОписаниеПрофиля.Идентификатор = "0f2150dc-9fcd-4dcd-a1be-e5fe363efa73";
	ОписаниеПрофиля.Наименование  = НСтр("ru = 'Главный бухгалтер'", ОбщегоНазначения.КодОсновногоЯзыка());
	ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
	ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
	ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
	ОписаниеПрофиля.Роли.Добавить("ВыводНаПринтерФайлБуферОбмена");
	ОписаниеПрофиля.Роли.Добавить("ПросмотрСвязанныеДокументы");
	ОписаниеПрофиля.Роли.Добавить("СохранениеДанныхПользователя");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВариантовОтчетов");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхОтчетовИОбработок");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхСведений");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеУчетныхЗаписейЭлектроннойПочты");
	ОписаниеПрофиля.Роли.Добавить("БазоваяФункциональностьТП");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеКонтрагентов");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПокупки");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПродажи");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеНСИ");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзмененияДенежныхДокументов");
	ОписанияПрофилей.Добавить(ОписаниеПрофиля);

	//++ ВКМ от 22.01.2025
	// Добавление дополнительных постовляемых профилей пользователей
	// Профиль "Специалист".
	ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
	ОписаниеПрофиля.Имя           = "Специалист";
	ОписаниеПрофиля.Идентификатор = "39e85336-9f49-4240-ae4c-66994738bd24";
	ОписаниеПрофиля.Наименование  =	НСтр("ru = 'Специалист'", ОбщегоНазначения.КодОсновногоЯзыка());
	ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
	ОписаниеПрофиля.Роли.Добавить("ВКМ_ЧтениеИзменениеДокументовПоОбслуживаниюКлиентов");
	ОписаниеПрофиля.Роли.Добавить("ВКМ_ЧтениеОтчетаВыработкаСпециалистов");
	ОписаниеПрофиля.Роли.Добавить("ВыводНаПринтерФайлБуферОбмена");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеКонтрагентов");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеПапокИФайлов");
	ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
	ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
	ОписаниеПрофиля.Роли.Добавить("ПросмотрСвязанныеДокументы");
	ОписаниеПрофиля.Роли.Добавить("СохранениеДанныхПользователя");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВариантовОтчетов");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхСведений");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеНСИ");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеУчетныхЗаписейЭлектроннойПочты");
	ОписанияПрофилей.Добавить(ОписаниеПрофиля);
	
	// Профиль "Менеджер".
	ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
	ОписаниеПрофиля.Имя           = "Менеджер";
	ОписаниеПрофиля.Идентификатор = "d13521b1-3042-4d0a-ac49-431fb6cd8a53";
	ОписаниеПрофиля.Наименование  =	НСтр("ru = 'Менеджер'", ОбщегоНазначения.КодОсновногоЯзыка());
	ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
	ОписаниеПрофиля.Роли.Добавить("ВКМ_ДобавлениеИзменениеДокументовПоОбслуживаниюКлиентов");
	ОписаниеПрофиля.Роли.Добавить("ВКМ_ИспользованиеТелеграмБота");
	ОписаниеПрофиля.Роли.Добавить("ВКМ_ЧтениеОтчетаВыработкаСпециалистов");
	ОписаниеПрофиля.Роли.Добавить("ВыводНаПринтерФайлБуферОбмена");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеКонтрагентов");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеНСИ");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеПапокИФайлов");
	ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
	ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
	ОписаниеПрофиля.Роли.Добавить("ПросмотрСвязанныеДокументы");
	ОписаниеПрофиля.Роли.Добавить("СохранениеДанныхПользователя");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВариантовОтчетов");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеУчетныхЗаписейЭлектроннойПочты");
	ОписанияПрофилей.Добавить(ОписаниеПрофиля);
	
	// Профиль "Бухгалтер ИТ-фирмы".
	ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
	ОписаниеПрофиля.Идентификатор = "a723c860-5785-4a1d-919c-fe095691abc8";
	ОписаниеПрофиля.Имя           = "Бухгалтер ИТ-фирмы";	
	ОписаниеПрофиля.Наименование  = НСтр("ru = 'Бухгалтер ИТ-фирмы'", ОбщегоНазначения.КодОсновногоЯзыка());
	ОписаниеПрофиля.Роли.Добавить("БазоваяФункциональностьТП");
	ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
	ОписаниеПрофиля.Роли.Добавить("ВКМ_МассовоеСозданиеАктов");
	ОписаниеПрофиля.Роли.Добавить("ВКМ_ЧтениеОтчетовИТБухгалтера");
	ОписаниеПрофиля.Роли.Добавить("ВыводНаПринтерФайлБуферОбмена");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПокупки");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеДокументовПродажи");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеКонтрагентов");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеНСИ");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзмененияДенежныхДокументов");
	ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
	ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
	ОписаниеПрофиля.Роли.Добавить("ПросмотрСвязанныеДокументы");
	ОписаниеПрофиля.Роли.Добавить("СохранениеДанныхПользователя");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВариантовОтчетов");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхОтчетовИОбработок");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеДополнительныхСведений");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеУчетныхЗаписейЭлектроннойПочты");
	ОписанияПрофилей.Добавить(ОписаниеПрофиля);
	
	// Профиль "Кадровик-расчетчик".
	ОписаниеПрофиля = УправлениеДоступом.НовоеОписаниеПрофиляГруппДоступа();
	ОписаниеПрофиля.Имя           = "Кадровик-расчетчик";	
	ОписаниеПрофиля.Идентификатор = "cb6b797a-d454-46c9-808a-9c8a7775ee61";
	ОписаниеПрофиля.Наименование  =	НСтр("ru = 'Кадровик-расчетчик'", ОбщегоНазначения.КодОсновногоЯзыка());
	ОписаниеПрофиля.Роли.Добавить("БазовыеПраваБСП");
	ОписаниеПрофиля.Роли.Добавить("ВКМ_ДобавлениеИзменение_ДокументовПоРасчетуЗарплаты");
	ОписаниеПрофиля.Роли.Добавить("ВКМ_ЧтениеОтчетаВыработкаСпециалистов");
	ОписаниеПрофиля.Роли.Добавить("ВКМ_ЧтениеОтчетовСпециалистаПоКадрам");
	ОписаниеПрофиля.Роли.Добавить("ВыводНаПринтерФайлБуферОбмена");
	ОписаниеПрофиля.Роли.Добавить("ДобавлениеИзменениеПапокИФайлов");
	ОписаниеПрофиля.Роли.Добавить("ЗапускВебКлиента");
	ОписаниеПрофиля.Роли.Добавить("ЗапускТонкогоКлиента");
	ОписаниеПрофиля.Роли.Добавить("ПросмотрСвязанныеДокументы");
	ОписаниеПрофиля.Роли.Добавить("СохранениеДанныхПользователя");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеВариантовОтчетов");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеНСИ");
	ОписаниеПрофиля.Роли.Добавить("ЧтениеУчетныхЗаписейЭлектроннойПочты");
	ОписанияПрофилей.Добавить(ОписаниеПрофиля);
	
	//-- ВКМ
	
КонецПроцедуры
