class ValidWord
  attr_reader :letters

  def initialize(letters)
    @letters = letters.downcase
  end

  def am_i_valid
    letter_counter
    if all_distinct_characters || remove_one_character_to_make_valid
      "Yes"
    else
      "No"
    end
  end

  def letter_counter
    letters.chars.each_with_object(Hash.new(0)) { |letter, hash| hash[letter] +=1}
  end

  def all_distinct_characters
    letter_counter.values.uniq.count == 1
  end

  def remove_one_character_to_make_valid
    letter_counter.values.one? {|value| value % 2 != 0 }
  end
end
