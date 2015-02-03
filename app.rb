require "bundler/setup"
Bundler.require :default

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get "/" do
  @buddies = BinaryBuddy.all
  erb(:index)
end

post "/buddies" do
  buddy_name = params["name"]
  BinaryBuddy.create(name: buddy_name)

  redirect "/"
end

post "/users" do
  user_name = params["name"].upcase # Upcasing here to help with the find part of find_or_create_by.
  the_user = User.find_or_create_by(name: user_name)
  @user_id = the_user.id

  url = "/users/" + @user_id.to_s
  redirect(url)
end

get "/users/:id" do
  erb(:user)
end
