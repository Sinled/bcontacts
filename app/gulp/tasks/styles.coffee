gulp = require 'gulp'
stylus = require 'gulp-stylus'
autoprefixer = require 'gulp-autoprefixer'
config = require '../config'


gulp.task 'styles', ->
  gulp.src config.styles.src
    .pipe stylus()
    .pipe autoprefixer config.autoprefixer
    .pipe gulp.dest config.styles.dest
