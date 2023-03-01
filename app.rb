def decode_char(code)
  morse_codes = {
    ".-"   => "A",
    "-..." => "B",
    "-.-." => "C",
    "-.."  => "D",
    "."    => "E",
    "..-." => "F",
    "--."  => "G",
    "...." => "H",
    ".."   => "I",
    ".---" => "J",
    "-.-"  => "K",
    ".-.." => "L",
    "--"   => "M",
    "-."   => "N",
    "---"  => "O",
    ".--." => "P",
    "--.-" => "Q",
    ".-."  => "R",
    "..."  => "S",
    "-"    => "T",
    "..-"  => "U",
    "...-" => "V",
    ".--"  => "W",
    "-..-" => "X",
    "-.--" => "Y",
    "--.." => "Z"
  }
  
  morse_codes[code] || ""
end


def decode_word(code)
  codes = code.split(" ")
  
  result = ""
  codes.each do |c|
    decoded_char = decode_char(c)
    result += decoded_char if decoded_char
  end
  
  result 
end
