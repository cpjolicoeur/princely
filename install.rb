require 'fileutils'
require 'rubygems'

dir = File.dirname( __FILE__ )
config = File.join( 'config', 'princely.yml' )

FileUtils.cp( File.join( dir, config ), File.join( RAILS_ROOT, config ) ) unless File.exist?( File.join( RAILS_ROOT, config ) ) 

puts IO.read( File.join( dir, 'README' ) )