module.exports = (grunt) ->
  require('time-grunt')(grunt)
  require('load-grunt-tasks')(grunt)

  appConfig = grunt.file.readJSON('package.json')

  pathsConfig = (appName)->
    @app = appName || appConfig.name

    return {
      app: @app
      bower: 'bower_components'
      css: 'public/css'
      coffee: 'client_src/coffee'
      sass: 'client_src/sass'
      src_img: 'client_src/img'
      js: 'public/js'
      img: 'public/img/icons'
      fonts: 'public/fonts'
    }

  grunt.initConfig({
    paths: pathsConfig(),
    pkg: appConfig,
    watch:
        grunt:
          files: ['Gruntfile.coffee']
        coffee:
          files: ['app.coffee', '<%= paths.coffee %>/**/*.coffee']
          tasks: ['coffee']
        compass:
          files: [ '<%= paths.sass %>/**/*.scss']
          tasks: ['compass']
    coffee: {
      angular:
        options:
          bare: true
        expand: true
        flatten: false
        cwd: '<%= paths.coffee %>'
        src: ['**/*.coffee']
        dest: 'public/js/'
        ext: '.js'
      server:
        options:
          bare: true
        files:
          'app.js': 'app.coffee'
    }
  })

  grunt.registerTask('runApp', ()->require('./app.js'))

  grunt.registerTask('build', ['coffee'])
  grunt.registerTask('server', ['build', 'runApp','watch'])
