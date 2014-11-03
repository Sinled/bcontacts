gulp = require 'gulp'
sass = require 'gulp-ruby-sass'
autoprefixer = require 'gulp-autoprefixer'
config = require '../config'
  .sass


gulp.task 'sass', ->
  gulp.src config.src
    .pipe sass({sourcemap: false})
    .pipe autoprefixer config.autoprefixer
    .pipe gulp.dest config.dest
