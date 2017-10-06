get "/orders" do
  @orders = Order.order("delivery_date")
  erb :"orders/index"
end

get "/orders/date/:date" do
  @orders = Order.all.where(delivery_date: params[:date])
  erb :"orders/date"
end

get "/orders/new" do
  @order = Order.new
  erb :"orders/new"
end

post '/orders/notification' do
  tobytime = Party.new
  p tobytime.message(params[:text])
  redirect '/users/1'
end

post '/orders/form' do
  tobytime = Party.new
  p tobytime.send_form
  redirect '/users/1'
end

post "/orders" do
  p params
  @empanadas = []
  @empanadas << OrderedEmpanada.create(empanada_type_id: 1, quantity: params[:beef])
  @empanadas << OrderedEmpanada.create(empanada_type_id: 2, quantity: params[:malbec_beef])
  @empanadas << OrderedEmpanada.create(empanada_type_id: 3, quantity: params[:spinach])
  @empanadas << OrderedEmpanada.create(empanada_type_id: 4, quantity: params[:corn])
  @empanadas << OrderedEmpanada.create(empanada_type_id: 5, quantity: params[:nutella])

  if params[:date]
    delivery_date = params[:date].to_date
  else
    delivery_date ="October 13"
  end

  @order = Order.new(eater: current_user, ordered_empanadas: @empanadas, paid: false, payment_type: params[:payment_type], delivery_date: delivery_date)
  @order.save
  redirect "/users/#{current_user.id}"
end

get "/orders/:id" do
  @order = Order.find(params[:id])
  @order.paid = true
  @order.save
  redirect "/orders/date/#{@order.delivery_date}"
end

