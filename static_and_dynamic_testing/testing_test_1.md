### Testing task 2 code:

# Carry out dynamic testing on the code below.
# Correct the errors below that you spotted in task 1.

<!-- brackets and ".rb" are not needed in ruby -->
require_relative('card.rb')
class CardGame

<!-- The ruby style guide states that method names should be snake case (ie. check_for_ace) -->
  def checkforAce(card)
  <!-- This is assigning rather than evaluating. double equals (==) should be used for evaluation. -->
  <!-- This could be refactored to simply: card.value == 1-->
    if card.value = 1
    <!-- return not needed  -->
      return true
    else
      return false
    end
  end

  <!-- method definition keyword is def not dif. Comma needed between parameters -->
  dif highest_card(card1 card2)
  if card1.value > card2.value
  <!-- No variable called card. Return keyword not needed. -->
    return card.name
  else
  <!-- Conditions return different types, should either both return card object or card name -->
    card2
  end
end
<!-- This end finishes the class and should be moved to after the next method -->
end

def self.cards_total(cards)
<!--  local variable needs to be initialised-->
  total
  <!-- This will return the total after each card has been added. The return statement should be move to after the for loop, with the keyword return removed. -->
  for card in cards
    total += card.value
    <!-- Strings cant be added to integers. Total should be converted to string or this should use string interpolation -->
    return "You have a total of" + total
  end
end
