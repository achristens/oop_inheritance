require './multilinguist.rb'

class QuoteCollector < Multilinguist
  # Each instance of this class should have the ability to select a random quote to share in the local language.
  @@quotes = []

  # Instance Method
  def add_quote(new_quote)
    @@quotes << new_quote
  end

  # Class Method
  def self.all_quotes
    @@quotes
  end

  def share_quote
    puts say_in_local_language("Here's a quote for you, #{@@quotes.sample}.")
  end

end

me = QuoteCollector.new

puts me.inspect
me.add_quote("The grass is always greener")
me.add_quote("Raining like cats and dogs")
me.add_quote("The pot calling the kettle black")

puts QuoteCollector.all_quotes

me.travel_to("India")
me.share_quote
me.travel_to("Italy")
me.share_quote
