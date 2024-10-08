# NEWSITE

This is an experiment to migrate the [elixir-lang.org](https://elixir-lang.org)
website from [Jekyll](git@github.com:andyl/elixir-lang.github.com.git) to
[Tableau](https://github.com/elixir-tools/tableau).

See Website Issue [#1771](https://github.com/elixir-lang/elixir-lang.github.com/issues/1771) for more info.

Approach: 
- just migrate a couple pages for starters 
- start by using liquid templates (using the [solid](https://github.com/edgurgel/solid) template engine)
- put the new website content under a directory NEWSITE 
- migrate to HEEX if no show-stoppers are uncovered

Tasks: 
- [x] fork and clone the [website repo](https://github.com/elixir-lang/elixir-lang.github.com)
- [ ] setup the `experiment` branch for prototyping 
- [ ] create a new prototype tableau site under NEWSITE directory 
- [ ] get `_pages` and `_posts` working with HEEX and CSS 
- [ ] copy styling from old site
- [ ] get liquid templates working 
- [ ] copy liquid layouts from old site
- [ ] get `_pages` and `_posts` working with LIQUID and CSS

