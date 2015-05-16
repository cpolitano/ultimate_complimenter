require 'rubygems'
require 'twilio-ruby'
require_relative '../../credential'

class Notification
  attr_accessor :to_number

  def initialize
    account_sid = Credential.credentials[:twilio_account_sid]
    auth_token = Credential.credentials[:twilio_account_token]
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def text
    # Sends a text to your phone number
    message = @client.account.messages.create(
      :from => "7033822830",
      :to => "7038998683",
      :body => "#{random_compliment}"
      )
    puts message.to
  end

  def random_compliment
    # Generates a random compliment to send to the textee
    compliments = [
      "You are a shining star!",
      "Everything is awesome.",
      "You are the sound of one hand clapping.",
      "Your code is so DRY it makes me thirsty.",
      "You is smart. You is kind. You is important.",
      "Leap and the nets will appear.",
      "You are stronger than you think!",
      "You have a beautiful soul.",
      "A journey of a thousand miles begins with a single step.",
      "You are so much sunshine in every square inch."
    ]
    compliments.sample
  end

end
