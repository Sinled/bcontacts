gulp = require 'gulp'
del = require 'del'
stylus = require 'gulp-stylus'
autoprefixer = require 'gulp-autoprefixer'

options =
  stylesFolder: 'styles'
  staticFolder: '../static'

gulp.task 'default', ['clean', 'styles']

gulp.task 'clean', -> del ["#{options.staticFolder}/*"], force: true

gulp.task 'styles', ->
  gulp.src "#{options.stylesFolder}/*.styl"
    .pipe stylus()
    .pipe autoprefixer
      browsers: ['last 2 versions']
      cascade: false
    .pipe gulp.dest "#{options.staticFolder}/#{options.stylesFolder}"

