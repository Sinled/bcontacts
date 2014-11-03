gulp = require 'gulp'
sass = require 'gulp-sass'
autoprefixer = require 'gulp-autoprefixer'
config = require '../config'
  .sass


gulp.task 'libsass', ->
  gulp.src config.src
    .pipe sass()
    .pipe autoprefixer config.autoprefixer
    .pipe gulp.dest config.dest
