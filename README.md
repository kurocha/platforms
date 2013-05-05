# Platforms

This meta-package provides a configuration which includes all appropriate platforms for a given host.

## Teapot Configuration

To use this package, simply add it to your configuration block:

	define_configuration "my-package" do |configuration|
		configuration.import! "platforms"
		
		#...
	end

