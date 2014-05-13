class WelcomeController < ApplicationController
  def index
  	if session['visited']
  		@first_visit = false
  		
  	else
  		@first_visit = true
  		
  	end	
  	session['visited'] = true
  end

  def say_hi
    
    @say_hi_pass = params['my_password']
    right_password = '1129'
    if @say_hi_pass == right_password
      #puts message on terminal
      puts "you put in the right password"
       current_user.admin = true
       current_user.save
    else
      redirect_to(welcome_page_path)
    end   
  end

  

end
