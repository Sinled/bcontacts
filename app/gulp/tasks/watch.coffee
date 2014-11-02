gulp = require 'gulp'
config = require '../config'


gulp.task 'watch', ->
  gulp.watch config.styles.src, ['styles']

  console.log 'Watching...'
