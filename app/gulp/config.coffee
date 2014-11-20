src = './src'
dest = '../static'


module.exports =
  browserSync:
    proxy: "localhost:8081"

    files: [
      "#{dest}/**"
      # Exclude Map files
      "!#{dest}/**.map" ]

  styles:
    src: "#{src}/styles/*.styl"
    watchSrc: "#{src}/styles/**/*.styl"
    dest: "#{dest}/styles"

  scripts:
    src: "#{src}/scripts/*.js"
    watchSrc: "#{src}/scripts/**/*.js"
    dest: "#{dest}/scripts"

  autoprefixer:
    browsers: ['last 2 versions']
    cascade: false

  clean:
    dest: ["#{dest}/*"]
