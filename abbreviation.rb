class Abbreviator

  def self.abbreviate(string)
    arr = string.split(/(\s)|([\.\,])/)
    arr = arr.reject { |c| c == ""}
    result = Array.new
    arr.each do |word|
      if word.match(/[\-\.\,]/)
        result2 = Array.new
        arr2 = word.split(/[\-]/)
        arr2.each do |section|
          if section.length > 3
            section = section[0] + (section.length - 2).to_s + section[-1]
          end
          result2.push(section)
        end
        word = result2.join('-')
      elsif word.length > 3
        word = word[0] + (word.length - 2).to_s + word[-1]
      end
      result.push(word)
    end
    return result.join()
  end

end
