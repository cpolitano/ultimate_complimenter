require 'twilio-ruby'

class Notification
  attr_accessor :to_number

  def initialize
    account_sid = :twilio_account_sid
    auth_token = :twilio_account_token
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  from = "+12407244715"

  def text
    # Sends a text to your phone number

  end

  def random_compliment
    # Generates a random compliment to send to the textee
    compliments = []

    @client.account.messages.create(
      :from => from,
      :to => key,
      :body => "compliments.sample"
     ) 
    puts "Sent message to #{value}"
    end
  end

end