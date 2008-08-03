# Include hook code here
ActiveScaffold rescue throw "should have included ActiveScaffold plug in first.  Please make sure that this plug-in comes alphabetically after the ActiveScaffold plug-in"

$:.unshift(File.dirname(__FILE__))

require "lib/helpers/view_helpers_extensions.rb"