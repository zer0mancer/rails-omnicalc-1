Rails.application.routes.draw do

  get("/", {:controller => "calculator", :action=> "homepage"})
  get("/square/new", {:controller => "calculator", :action => "square"})
  get("/square/results", {:controller => "calculator", :action => "square_results"})
  get("/square_root/results", {:controller => "calculator", :action => "square__root_results"})
  get("/square_root/new", {:controller => "calculator", :action => "square_root"})
  get("/payment/new", {:controller => "calculator", :action => "payment"})
  get("/payment/results", {:controller => "calculator", :action => "payment_results"})
  get("/random/new", {:controller => "calculator", :action => "random"})
  get("/random/results", {:controller => "calculator", :action => "random_results"})




  
end
