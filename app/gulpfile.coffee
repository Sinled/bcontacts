gulp = require 'gulp'
config = require './gulp/config'
requireDir = require 'require-dir'

requireDir './gulp/tasks', recurse: true


gulp.task 'base', ['styles', 'scripts']

gulp.task 'watch', ['base', 'browserSync'], ->
  gulp.watch config.styles.watchSrc, ['styles']
  gulp.watch config.scripts.watchSrc, ['scripts']

gulp.task 'default', ['clean', 'base']
