get '/empanadas' do
  @empanada_types = EmpanadaType.all
  erb :"empanadas/index"
end
