module.exports = (grunt) ->
  require('time-grunt')(grunt)
  require('load-grunt-tasks')(grunt)

  appConfig = grunt.file.readJSON('package.json')

  pathsConfig = (appName)->
    @app = appName || appConfig.name

    return {
      app: @app
      bower: 'bower_components'
      css: 'static/css'
      coffee: 'assets/coffee'
      sass: 'assets/sass'
      js: 'static/js'
      img: 'static/img'
      fonts: 'static/fonts'
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
        dest: '<%= paths.js %>'
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
