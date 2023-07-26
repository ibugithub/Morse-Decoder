
$morse_code = {
  '.-' => 'A',    '-...' => 'B',  '-.-.' => 'C',
  '-..' => 'D',   '.' => 'E',     '..-.' => 'F',
  '--.' => 'G',   '....' => 'H',  '..' => 'I',
  '.---' => 'J',  '-.-' => 'K',   '.-..' => 'L',
  '--' => 'M',    '-.' => 'N',    '---' => 'O',
  '.--.' => 'P',  '--.-' => 'Q',  '.-.' => 'R',
  '...' => 'S',   '-' => 'T',     '..-' => 'U',
  '...-' => 'V',  '.--' => 'W',   '-..-' => 'X',
  '-.--' => 'Y',  '--..' => 'Z'
}

def decode(code)
  decoded_word = ""
  code.split("   ").each do |word|
    word.split(" ").each do |character|
      char = $morse_code[character]
      decoded_word+=char
    end
    decoded_word+= " "
  end
  return decoded_word
end

ibuscode = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
decoded_msg = decode(ibuscode);
puts decoded_msg