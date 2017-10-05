get '/empanadas' do
  @empanada_types = EmpanadaType.all
  erb :"empanada_types/index"
end
