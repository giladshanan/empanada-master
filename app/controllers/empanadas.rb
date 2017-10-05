get '/empanadas' do
  @empanadas = Empanada.all
  erb :"empanadas/index"
end
