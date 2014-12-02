src = './src'
dest = '../static'


module.exports =
  browserSync:
    browser: "google chrome"
    proxy: "localhost:8081"
    open: false

    files: [
      "#{dest}/**"
      # Exclude Map files
      "!#{dest}/**.map" ]

  styles:
    src: "#{src}/styles/*.styl"
    watchSrc: "#{src}/styles/**/*.styl"
    dest: "#{dest}/styles"

  scripts:
    src: "#{src}/scripts/**/[^_]*.js"
    watchSrc: "#{src}/scripts/**/[^_]*.js"
    dest: "#{dest}/scripts"

  autoprefixer:
    browsers: ['last 2 versions']
    cascade: false

  clean:
    dest: [
      "#{dest}/styles/*"
      "#{dest}/scripts/*"
      "#{dest}/images/*"
    ]
