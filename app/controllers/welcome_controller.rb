class WelcomeController < ApplicationController

  def index
    @person = Person.new
  end

  def register_email

    person = Person.new params[:person]


        begin
          gb = Gibbon.new
          response = gb.list_subscribe({id: ENV["MAILCHIMP_LIST_ID"], email_address: person.email, double_optin: false, send_welcome: false, merge_vars: {:ZIPCODE => person.zip_code}})
          render 'welcome/registered_email_success'

        rescue Exception => exc
          render 'welcome/registered_email_success'

        end
        

  end

end