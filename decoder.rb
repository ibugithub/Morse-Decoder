MORSE_CODE = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C',
  '-..' => 'D', '.' => 'E', '..-.' => 'F',
  '--.' => 'G', '....' => 'H', '..' => 'I',
  '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O',
  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R',
  '...' => 'S', '-' => 'T', '..-' => 'U',
  '...-' => 'V', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z'
}.freeze

def decode_char(morse_char)
  MORSE_CODE[morse_char]
end

def decode_word(morse_word)
  morse_word.split.map { |morse_char| decode_char(morse_char) }.join
end

def decode(message)
  words = message.split('   ')
  decoded_sentence = words.map { |word| decode_word(word) }.join(' ')
end

# Test the methods
morse_char = '.-'
puts decode_char(morse_char) # Output: "A"

morse_word = '-- -.--'
puts decode_word(morse_word) # Output: "MY"

message = "-- -.--   -. .- -- ."
puts decode(message) # Output: "MY NAME"
