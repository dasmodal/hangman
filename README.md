# Виселица | Hangman
Консольная реализация бумажной игры [Виселица](https://ru.wikipedia.org/wiki/%D0%92%D0%B8%D1%81%D0%B5%D0%BB%D0%B8%D1%86%D0%B0_(%D0%B8%D0%B3%D1%80%D0%B0) 'Статья на wiki')([Hangman](https://en.wikipedia.org/wiki/Hangman_(game) 'Article on the wiki')) на Ruby.

Правила игры: вам нужно отгадать все буквы в загаданном слове, пока человечка не повесят.

Для запуска игры убедитесь что у вас установлены [ruby](https://www.ruby-lang.org/en/documentation/installation/ 'гайд по установке') и [git](https://git-scm.com/book/ru/v2/%D0%92%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5-%D0%A3%D1%81%D1%82%D0%B0%D0%BD%D0%BE%D0%B2%D0%BA%D0%B0-Git 'гайд по установки git').

## Процесс игры
[![Peek-2022-06-22-11-55.gif](https://s8.gifyu.com/images/Peek-2022-06-22-11-55.gif)](https://gifyu.com/image/SHfUl)
------

### Инструкция по запуску
1. Скопируйте ссылку на репозиторий.

2. Склонируете репозиторий на локальный компьютер, введя в теминале:
```
git clone https://github.com/dasmodal/hangman.git
```
а затем перейдите в каталог с игрой
```
cd hangman/
```

3. Запустите bundle в каталоге с игрой, введя в терминале:
```
bundle install
```

4. Осталось только запустить игру:
```
ruby main.rb
```

### Добавление новых слов
Откройте файл по пути ```./data/words.txt```.

Добавьте слова, каждое на новой строке:
```
СЧАСТЬЕ
ДЖУНГЛИ
НОВОЕСЛОВО
```
