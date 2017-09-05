require 'mkmf'
have_library( 'stdc++' );

# Give it a name
extension_name = 'mytest'

# The destination
dir_config(extension_name)

# Do the work
create_makefile(extension_name)
