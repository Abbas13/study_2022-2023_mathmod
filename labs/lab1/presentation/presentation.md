---
## Front matter
lang: ru-RU
title: Лабораторная работа №1
subtitle: Работа с Git, GitHub, а также Markdown
author:
  - Майсаров А. М.
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 15 апреля 2023

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---

# Информация

## Докладчик

:::::::::::::: {.columns align=center}
::: {.column width="70%"}

  * Майсаров Аббас Мурадович
  * студент уч. группы НФИбд-01-20
  * Российский университет дружбы народов
  * [1032200530@pfur.ru](mailto:1032200530@pfur.ru)
:::
::::::::::::::

# Вводная часть

## Актуальность

- Важно уметь работать с Git'ом
- Научная презентация --- рабочий инструмент исследователя, создаваемый с помощью Markdown
- Необходимо создавать текстовые работы быстро
- Желательна минимизация усилий для создания презентации

## Объект и предмет исследования

- Git: работа с репозиториями
- GitHub: использование в качестве центрального сервера
- Markdown: написание текстовых работ

## Цели и задачи

- Создать репозиторий курса по шаблону, осуществить коммиты
- Написать отчет, используя язык Markdown

## Материалы и методы

- Распределенная система управления версиями [Git](https://git-scm.com/)
- Процессор `pandoc` для входного формата Markdown
- Результирующие форматы
	- `pdf`
	- `html`
  - `docx`
- Автоматизация процесса создания: `Makefile`

# Процесс выполнения работы

# Работа с Git и GitHub

## Создание директории

![](image/Screenshot_1.png)

## Генерирация пары SSH-ключей

![](image/Screenshot_2.png)

## Устанавливка пакета gh

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![](image/Screenshot_2.png)

:::
::::::::::::::

## Копирование шаблонного репозитория

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![](image/Screenshot_2.png)

:::
::::::::::::::

## Просмотр всех доступных целей make и списка доступных курсов

![](image/Screenshot_2.png)


# Настройка конвертации файлов .md в .pdf, .docx, .html

## Установка необходимых пакетов

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![](image/Screenshot_2.png)

:::
::::::::::::::

## Устранение ошибки конвертации. 

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![](image/Screenshot_2.png)
:::
::::::::::::::

# Результаты

- Создан и настроен репозиторий курса
- Написан отчет на языке разметки Markdown
- Успешно установлены дополнительные пакеты для дальнейшей работы

## Вывод

Вспомнил основы взаимодействия с Git и GitHub, а также Markdown. Создал репозиторий для выполнения лабораторных работ из шаблона. Добавил первые коммиты. Создал данный отчет.
