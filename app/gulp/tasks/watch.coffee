gulp = require 'gulp'
config = require '../config'


gulp.task 'watch', ['browserSync'], ->
  gulp.watch config.styles.watchSrc, ['styles']

  gulp.watch config.scripts.watchSrc, ['scripts']
