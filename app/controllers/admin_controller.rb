class AdminController < ApplicationController
   before_filter :authenticate_user!
   before_filter :admin_user

  def admin_page
  	# @say_hi_nam = params['my_name']
   #  @say_hi_pass = params['my_password']
   #  if @say_hi_nam == 'Mo' && @say_hi_pass == '1129'
   #     session['admin'] =true
   #  else
   #    session['admin'] = false
   #  end
   #  if session['admin'] == false
   #  	redirect_to '/non_admin_page'
   #  end

  end

  def non_admin_page
  end

private
  def admin_user
    if current_user.admin != true
      redirect_to(welcome_page_path, alert: "You are not an Admin")
    end
  end

end
