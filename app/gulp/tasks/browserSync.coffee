gulp = require 'gulp'
browserSync = require 'browser-sync'
config = require '../config'
  .browserSync


gulp.task 'browserSync', ['base'], -> browserSync(config)

