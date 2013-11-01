$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecutar las espectativas de la clase Fraccion"
task :spec do
        sh "rspec -I. test/rspec_fraccion.rb"
end

desc "Ejecutar codigo de la clase Fraccion"
task :bin do
        sh "ruby lib/Fraccion.rb"
end

desc "Ejecutar con documentacion"
task :test do
        sh "rspec -I. test/rspec_fraccion.rb --format documentation"
end

desc "Ejecutar con formato html"
task :thtml do
        sh "rspec -I. test/rspec_fraccion.rb --format html"
end
