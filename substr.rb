dictionary = ["below","down","go","going","horn","how","howdy","it","i","low",
              "own","part","partner","sit"]

def substring(str, dict)
  str.downcase!
  ret = {}
  dict.each do |word|
      if str.include?(word)
        # Add one to the word's counter
        ret[word] = str.scan(/#{word}/).count
      end
  end
  # Output the results
  puts ret
end

substring("below", dictionary)
substring("Howdy partner, sit down! How's it going?", dictionary)
