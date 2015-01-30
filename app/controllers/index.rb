enable :session

def login?
  !session[:username].nil?
end

def username
  return session[:username]
end


get '/' do
#   @decks = Deck.all
  erb :index
end

post '/signup' do
  User.create(
    email: params[:email],
    password: params[:password]
    )
  
  erb :index
end

post '/login' do
  user = User.authenticate(params[:username], params[:password])
  if user
    puts "Signed in"
    session[:username] = user.username
    session[:email] = user.email
    redirect '/'
  else
    @message = "Wrong email/password"
    redirect '/'
  end
end

post '/homepage' do  
  erb :homepage
end

get '/deck' do  

  erb :deck
end

post '/deck' do
  round = Round.create
end


post '/start' do
  @cards = Card.all
  puts @cards
  erb :start
end
  
  
  