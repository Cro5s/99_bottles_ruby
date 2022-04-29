class Bottles
  def verse(num_bottles)
    Bottles.no_bottles if (num_bottles == 0)
    new_bottle_count = (num_bottles - 1).zero? ? 'no more' : num_bottles - 1
    bottle_plurality = num_bottles - 1 == 1  || num_bottles == 1 ? 'bottle' : 'bottles'
    first_verse = "#{num_bottles} #{bottle_plurality} of beer on the wall, #{num_bottles} #{bottle_plurality} of beer.\n"
    second_verse = "Take one down and pass it around, #{new_bottle_count} #{bottle_plurality} of beer on the wall.\n"
    "#{first_verse}#{second_verse}"
  end

  def self.no_bottles
    first_verse = 'No more bottles of beer on the wall, no more bottles of beer.\n'
    second_verse = "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
   return "#{first_verse}#{second_verse}"
  end
end
