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

def decode_words(words)
  splited_words = []
  words.split('   ').each do |word|
    splited_words << word
  end
  splited_words
end

def decode_chars(words)
  decoded_chars = ''
  words.each do |word|
    word.split.each do |char|
      decoded_chars += MORSE_CODE[char]
    end
    decoded_chars += ' '
  end
  decoded_chars
end

def decode(code)
  decode_chars(decode_words(code))
end

ibuscode = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
puts decode(ibuscode)
