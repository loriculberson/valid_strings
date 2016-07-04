require_relative '../lib/valid_word'

RSpec.describe ValidWord do

  it "recognizes valid words" do
    test_string = "aabb"
    valid_word = ValidWord.new(test_string)

    expect(valid_word.am_i_valid).to eql("Yes")
  end

  it "recognizes invalid words" do
    test_string = "aabbcd"
    valid_word = ValidWord.new(test_string)

    expect(valid_word.am_i_valid).to eql("No")
  end

  it "recognizes invalid uppercase words" do
    test_string = "AABBCCDDEF"
    valid_word = ValidWord.new(test_string)

    expect(valid_word.am_i_valid).to eql("No")
  end

  it "recognizes words that can be valid by removing one character" do
    test_string = "aabbc"
    valid_word = ValidWord.new(test_string)

    expect(valid_word.am_i_valid).to eql("Yes")
  end
end
