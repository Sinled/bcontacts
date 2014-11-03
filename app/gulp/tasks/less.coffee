gulp = require 'gulp'
less = require 'gulp-less'
autoprefixer = require 'gulp-autoprefixer'
config = require '../config'
  .less


gulp.task 'less', ->
  gulp.src config.src
    .pipe less()
    .pipe autoprefixer config.autoprefixer
    .pipe gulp.dest config.dest
