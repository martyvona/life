Fork of in-browser pure Javascript Conway's game of [life](https://github.com/copy/life) by Fabian Hemmer, with modifications to support running the [digital clock](https://codegolf.stackexchange.com/a/111932) by [dim](https://codegolf.stackexchange.com/users/64412/dim) to actually tell time.

https://martyvona.github.io/life/min/index.html?pattern=digitalclock&step=64&steps_per_sec=3&reset_after_step=259200&goto_step=200+3*pm_now_sec&run=1&fps=6&noui=1

Omit the "noui=1" option to show the UI if you want to play with it, e.g. change the speed, load other patterns, etc.

To reset the clock to the current local time simply reload the page.

## Modifications

* add `auto_start=1` URL parameter
* add `steps_per_sec=STEPS` to sync the step speed to wall clock time
* add `goto_step=OFFSET+STEP*MULT` to fast-forward a specfic number of steps before running
    * `OFFSET+` is optional; if present, `OFFSET` is an integer (positive or negative) number of steps
    * `STEP` is required; a non-negative number of steps
    * `*MULT` is optional; if present it can be either `*now_sec`, which will be replaced with the number of seconds sicne the most recent midnight (12:00 AM) in local wall-clock time at page load, or `*pm_now_sec`, which will be replaced with the number of seconds since the most recent noon (12:00 PM)
* add `reset_after_step=STEP` to auto rewind to the initial state (after the `goto_step` fast forward, if any) after a given number of steps
* add digital clock pattern
* bugfix noui option
* restore generation number on rewind
