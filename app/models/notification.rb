require 'twilio-ruby'
require_relative '../../credentials'

class Notification
  attr_accessor :to_number

  def initialize
    account_sid = Credentials.credentials[:twilio_account_sid]
    auth_token = Credentials.credentials[:twilio_account_token]
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def text
    # Sends a text to your phone number
    message = @client.account.messages.create(:from => "+12407244715",
      :to => "+17038998683",
      :body => "#{random_compliment}"
      )
    puts message.to
  end

  def random_compliment
    # Generates a random compliment to send to the textee
    compliments = ["You are a shining star!","Everything is awesome.","You are the sound of one hand clapping.","Your code is so DRY it makes me thirsty."]
    compliments.sample
  end

end
