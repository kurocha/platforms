
#
#  This file is part of the "Teapot" project, and is released under the MIT license.
#

teapot_version "1.0.0"

define_configuration "platforms" do |configuration|
	configuration.public!
	
	# Provides variant-debug and variant-release:
	configuration.require "variants"

	# Provides suitable packages for building on darwin:
	host(/darwin/) do
		configuration.require "platform-darwin-osx"
		configuration.require "platform-darwin-ios"
		
		configuration.require "build-clang"
		configuration.require "build-darwin"
	end

	# Provides suitable packages for building on linux:
	host(/linux/) do
		configuration.require "platform-linux"
		
		configuration.require "build-clang"
		configuration.require "build-linux"
	end

	# Provides suitable packages for building on windows:
	host(/windows/) do
		configuration.require "platform-windows"
	end
	
	# Provides generic operations for copying files, headers, etc:
	configuration.require "build-files"
end
