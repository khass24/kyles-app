class Api::MyExamplesController < ApplicationController
  def fortune
    fortune = [
                "A beautiful, smart, and loving person will be coming into your life.", 
                "A dubious friend may be an enemy in camouflage.", 
                "A faithful friend is a strong defense.", 
                "A feather in the hand is better than a bird in the air.", 
                "A fresh start will put you on your way."]

    @your_fortune = fortune.sample
    render "kyle_view.json.jbuilder"
  end

  def random_numbers
    possible_numbers = (1..60).to_a
    picked_numbers = possible_numbers.sample(6)

    @final_numbers = "Your lucky numbers for today are #{random_numbers.join(", ")}"

    render "kyle_view_random.json.jbuilder"
  end
end
