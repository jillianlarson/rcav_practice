class CalculationsController < ApplicationController
  #def instructions
    #render("instructions.html.erb")
  #end
  def roots
    @user_move = params["move"]
    rooted_number=Math.sqrt(@user_move.to_f)
    @outcome = "The square root of " + @user_move + " is " + rooted_number.to_s

    render("move.html.erb")

  end
  def random
    @user_move1 = params["move1"]
    @user_move2 = params["move2"]
    randomed_number=@user_move1.to_f + Random.rand(@user_move2.to_f-@user_move1.to_f)
    @outcome = "A random number between " + @user_move1 + " and " + @user_move2 + " is " + randomed_number.to_s
    render("move.html.erb")
  end
  def payment
    @user_move1 = params["move1"].to_f
    user_rate=@user_move1*0.0001
    one_hundred_times_user_rate = @user_move1*0.01
    @user_move2 = params["move2"].to_f
    @user_move3 = params["move3"].to_f
    payment_amt = user_rate*@user_move3/(1-(1+user_rate)**-@user_move2)
    @outcome = "A " + @user_move2.to_s + " year loan of $" + @user_move3.to_s + ", with an annual interest rate of " + one_hundred_times_user_rate.to_s + "%, requires a monthly payment of $" + payment_amt.to_s
    render("move.html.erb")
  end
end

