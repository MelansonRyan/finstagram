get '/' do
  @posts = Post.order(created_at: :desc)
  erb(:index)
end

get '/signup' do
  @user = User.new
  erb (:signup)
end

post '/signup' do
  #Grabbing the user's input values here
  email = params[:email]
  avatar_url = params[:avatar_url]
  username = params[:username]
  password = params[:password]
  
  # instantiate and save a new user
  @user = User.new({email: email, avatar_url: avatar_url, username: username, password: password})
  if @user.save
    "User #{username} saved!"
  else
    erb(:signup)
  end
end
     
            
        
    




    
