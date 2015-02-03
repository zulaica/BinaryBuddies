require "bundler/setup"
Bundler.require :default

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get "/" do
  @buddies = BinaryBuddy.all
  erb(:index)
end

post "/buddies" do
  buddy_name = params.fetch("name")
  BinaryBuddy.create(name: buddy_name)
  redirect "/"
end
