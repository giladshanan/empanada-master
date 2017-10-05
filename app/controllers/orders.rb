get "/orders/new" do
  @order = Order.new
  erb :"orders/new"
end

post "/orders" do
  @empanadas = []
  params[:order][:"1"].to_i.times { @empanadas << Empanada.create(empanada_type_id: 1 ) } #number of beef
  params[:order][:"2"].to_i.times { @empanadas << Empanada.create(empanada_type_id: 2 ) } #number of malbec beef
  params[:order][:"3"].to_i.times { @empanadas << Empanada.create(empanada_type_id: 3 ) } #number of spinach
  params[:order][:"4"].to_i.times { @empanadas << Empanada.create(empanada_type_id: 4 ) } #number of corn
  params[:order][:"5"].to_i.times { @empanadas << Empanada.create(empanada_type_id: 5 ) } #number of nutella
  @order = Order.new(eater: current_user, empanadas: @empanadas)
  p @order.empanadas
  "order"
  # erb :"orders/new"
end
