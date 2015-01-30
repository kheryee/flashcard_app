enable :session

def login?
  !session[:username].nil?
end

def username
  return session[:username]
end

get '/logout' do
  session.clear
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

get '/homepage' do
  @deck = Deck.all
  erb :homepage
end

get '/deck' do  
  @deck = Deck.find(params[:id])
  @card = @deck.cards[rand]
  erb :deck
end

# post '/deck' do
#   round = Round.create
# end

get '/deck/:id' do
  @deck = Deck.find(params[:id])
  @card = @deck.cards.first
  puts @card
  erb :start
end  
  
post '/start' do
  @deck = Deck.find(params[:id])
  @card = @deck.cards[rand]
  erb :start
end
  
  
  