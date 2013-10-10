cookbook_path File.expand_path(File.join(File.dirname(__FILE__), "cookbooks"))
log_level :debug
cache_type               'BasicFile'
local_dir = File.expand_path(File.join(File.dirname(__FILE__),'checksum')) 
cache_options( :path => "#{local_dir}")
