require 'rubygems'
begin
  require 'rspec'
  require 'rspec-rails'
rescue MissingSourceFile => e
  require 'spec'
end
def require_all_files_under(directory)
  Dir.open(directory) do |dir|
    dir.entries.each do |file_name|
      file = "#{dir.path}/#{file_name}"
      require "#{dir.path}/#{file_name.gsub(/\.rb/, '')}" if file_name =~ /\.rb$/
      require_all_files_under(file) if File.directory?(file) && file_name != "." && file_name != ".."
    end
  end
end
current_dir = "#{File.expand_path(File.dirname(__FILE__))}/rspec_more"
require_all_files_under(current_dir)

