
### Обязательно поставить ###

!) Sublime Text 3               - Саблайм

1) Package Control              - Установщик пакетов View > Show Console:

	import urllib.request,os,hashlib; h = '6f4c264a24d933ce70df5dedcf1dcaee' + 'ebe013ee18cced0ef93d5f746d80ef60'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)

2) Go To Definition               - Переход к методам

### Полезные плагины ###

3) Git                          - Плагин для Гита

4) SublimeLinter                - Подсветка синтаксиса

4.a) SublimeLinter-php          - Синтаксис PHP

4.b) SublimeLinter-gjslint          - Синтаксис JS

5) Laravel 5 Snippets           - Сниппеты для ларавеля

5.a) LaravelBladeHightliter     - Подсветка синтаксиса blade файлов

5.b) BladeSnippets              - Снипеты blade файлов

6) ApplySyntax 					- Автоопределение синтаксиса

### Косметические плагины ###

0) Material Monokai Soda

1) Boxy Ocean 					- Тема

2) MaterialTheme                - Визуальные темы саблайма

3) Materialize					- Визуальные темы саблайма

4) ColorSublime                 - Цвета подсветки синтаксиса

### Еще ###

All Autocomplete

AutoFileName

DocBlockr

Trailing Spaces

Zen Tabs (в настнойках количество влкадок не забыть поставить)

Markdown Extended

Markdown HTML Preview

BracketHighlighter

jQuery
