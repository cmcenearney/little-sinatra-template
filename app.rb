require 'sinatra'

Dir.glob(File.join("lib", "**", "*.rb")).each do |src_file|
  require_relative src_file
end

get "/hello" do
	"Hello from Sinatra-land!"	
end