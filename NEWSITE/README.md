# NEWSITE

This is an experiment to migrate the [elixir-lang.org](https://elixir-lang.org)
website from [Jekyll](git@github.com:andyl/elixir-lang.github.com.git) to
[Tableau](https://github.com/elixir-tools/tableau).

See Website Issue [#1771](https://github.com/elixir-lang/elixir-lang.github.com/issues/1771) for more info.

Approach: 
- just migrate a couple pages for starters 
- test with HEEX to see if show-stoppers are uncovered (they weren't)

Tasks - 2024 Oct 07 Mon
- [x] fork and clone the [website repo](https://github.com/elixir-lang/elixir-lang.github.com)
- [x] setup the `experiment` branch for prototyping 
- [x] create a new prototype tableau site under NEWSITE directory (`mix tableau.new ...`)
- [x] copy `_posts` from old-site 
- [x] copy `css`, `js` and `images` from old-site to the `extra` directory
- [x] create `_pages` directory and copy old-site page markdown
- [x] update the `root_layout` with HTML copied from old site
- [x] validate that HEEX pages render properly, with CSS, images and layouts looking OK

Learnings - 2024 Oct 07 Mon 
- HEEX templates are easier to work with than liquid templates (for me)
- Liquid "includes" become function components
- CSS from old site seems to work perfectly 
- it looks like there are already Tableau equivalents for Jekyll plugins (site map, RSS)
- so far no show-stoppers have been uncovered

Next Steps 
- [ ] render main pages 
- [ ] render blog page 
- [ ] render posts
- [ ] convert all liquid directives to HEEX and/or function components

