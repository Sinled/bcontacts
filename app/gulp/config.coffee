src = './src'
dest = '../static'


module.exports =
  styles:
    src: "#{src}/styles/*.styl"
    dest: "#{dest}/styles"

  autoprefixer:
    browsers: ['last 2 versions']
    cascade: false

  clean:
    dest: ["#{dest}/*"]
