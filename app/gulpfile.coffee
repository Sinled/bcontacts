gulp = require 'gulp'
del = require 'del'
stylus = require 'gulp-stylus'

appFolders =
  stylesFolder: 'styles'
  staticFolder: '../static'

gulp.task 'default', ['clean', 'stylus']

gulp.task 'clean', -> del(
  ["../static/**"], force: true)

gulp.task 'stylus', ->
  gulp.src "#{appFolders.stylesFolder}/*.styl"
    .pipe stylus set: ['compress']
    .pipe gulp.dest "#{appFolders.staticFolder}/#{appFolders.stylesFolder}"

