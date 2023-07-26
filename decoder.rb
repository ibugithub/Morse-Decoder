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

def decode_char(code)
  MORSE_CODE[code]
end

def decode_word(word)
  decoded_word = ''
  word.split.each do |character|
    char = decode_char(character)
    decoded_word += char
  end
  decoded_word
end

def decode(code)
  decoded_sentence = ''
  code.split('   ').each do |word|
    decoded_word = decode_word(word)
    decoded_sentence += decoded_word + ' '
  end
  decoded_sentence.strip
end

# Test cases
p decode_char('.-') # Output: "A"
p decode_word('-- -.--') # Output: "MY"
p decode("-- -.-- -. .- -- .") # Output: "MY NAME"
