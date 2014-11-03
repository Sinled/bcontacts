src = './src'
dest = '../static'


module.exports =
  browserSync:
    # server:
    #   # We're serving the src folder as well
    #   # for sass sourcemap linking
    #   baseDir: [dest, src]

    # we need proxy to work with python server
    proxy: "localhost:8081"

    files: [
      "#{dest}/**"
      # Exclude Map files
      "!#{dest}/**.map" ]

  styles:
    src: "#{src}/styles/*.styl"
    watchSrc: "#{src}/styles/**/*.styl"
    dest: "#{dest}/styles"

  libsass:
    src: "#{src}/libsass/*.scss"
    watchSrc: "#{src}/libsass/**/*.scss"
    dest: "#{dest}/libsass"

  sass:
    src: "#{src}/sass/*.scss"
    watchSrc: "#{src}/sass/**/*.scss"
    dest: "#{dest}/sass"

  less:
    src: "#{src}/less/*.less"
    watchSrc: "#{src}/less/**/*.less"
    dest: "#{dest}/less"

  scripts:
    src: "#{src}/scripts/*.js"
    watchSrc: "#{src}/styles/**/*.js"
    dest: "#{dest}/scripts"

  autoprefixer:
    browsers: ['last 2 versions']
    cascade: false

  clean:
    dest: ["#{dest}/*"]
