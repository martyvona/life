#!/bin/sh

# http://localhost:8000/index.html?pattern=digitalclock&step=64&steps_per_sec=3&reset_after_step=259200&goto_step=200+3*pm_now_sec&run=1&fps=4&noui=1

python -m http.server 8000

