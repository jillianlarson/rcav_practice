Rails.application.routes.draw do

#get("/", { :controller => "calculations", :action => "instructions" })

#get("/flexible/:move", { :controller => "calculations", :action => "flexible" })

get("/square_root/:move", { :controller => "calculations", :action => "roots" })
get("/random/:move1/:move2", { :controller => "calculations", :action => "random" })
get("/payment/:move1/:move2/:move3", { :controller => "calculations", :action => "payment" })
end
