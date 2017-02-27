class Message < ActiveRecord::Base
  before_create :send_sms

private
  def send_sms
    response = RestClient::Request.new(
      :method => :post,
      :url => 'https://api.twilio.com/2010-04-01/Accounts/AC92343d189fc553f58a92f9895da8ced5/Messages.json',
      :user => 'AC92343d189fc553f58a92f9895da8ced5',
      :password => 'deea8aec73dd023526f404d2c72b79fe',
      :payload => { :Body => body,
                    :From => from,
                    :To => to}
    ).execute
  end
end
