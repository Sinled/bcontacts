gulp = require 'gulp'
config = require '../config'


gulp.task 'watch', ['browserSync'], ->
  gulp.watch config.styles.src, ['styles']
