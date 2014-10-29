gulp = require 'gulp'
del = require 'del'
stylus = require 'gulp-stylus'
autoprefixer = require 'gulp-autoprefixer'
refresh = require 'gulp-livereload'
lr = require 'tiny-lr'
server = lr()

options =
  stylesFolder: 'styles'
  staticFolder: '../static'




gulp.task 'clean', -> del ["#{options.staticFolder}/*"], force: true


gulp.task 'lr-server', ->
  server.listen 35729, (err) ->
    if err
      console.log(err);


gulp.task 'watch', ->
  gulp.watch "#{options.stylesFolder}/*.styl", ['styles']


gulp.task 'styles', ->
  gulp.src "#{options.stylesFolder}/*.styl"
    .pipe stylus()
    .pipe autoprefixer
      browsers: ['last 2 versions']
      cascade: false
    .pipe gulp.dest "#{options.staticFolder}/#{options.stylesFolder}"
    .pipe refresh server




gulp.task 'default', ['lr-server', 'clean', 'styles', 'watch']
