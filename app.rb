def decode_char(code)
  morse_codes = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F',
                  '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
                  '--' => 'M', '-.' => 'N', '---' => 'O',
                  '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
                  '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y', '--..' => 'Z',
                  '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4', '.....' => '5', '-....' => '6',
                  '--...' => '7', '---..' => '8', '----.' => '9', '-----' => '0' }

  morse_codes[code] || ''
end

def decode_word(code)
  codes = code.split

  result = ''
  codes.each do |c|
    decoded_char = decode_char(c)
    result += decoded_char if decoded_char
  end

  result
end

def decode_message(code)
  words = code.split('   ')

  result = ''
  words.each do |w|
    decoded_word = decode_word(w)
    result += "#{decoded_word} " if decoded_word
  end

  result.strip
end
