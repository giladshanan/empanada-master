get "/orders" do
  @orders = Order.all
  erb :"orders/index"
end

get "/orders/new" do
  @order = Order.new
  erb :"orders/new"
end

post "/orders" do
  @empanadas = []
  @empanadas << OrderedEmpanada.create(empanada_type_id: 1, quantity: params[:beef])
  @empanadas << OrderedEmpanada.create(empanada_type_id: 2, quantity: params[:malbec_beef])
  @empanadas << OrderedEmpanada.create(empanada_type_id: 3, quantity: params[:spinach])
  @empanadas << OrderedEmpanada.create(empanada_type_id: 4, quantity: params[:corn])
  @empanadas << OrderedEmpanada.create(empanada_type_id: 5, quantity: params[:nutella])

  @order = Order.new(eater: current_user, ordered_empanadas: @empanadas, paid: false, payment_type: params[:payment_type], delivery_date: params[:date].to_date)
  @order.save
  redirect "/users/#{current_user.id}"
end


