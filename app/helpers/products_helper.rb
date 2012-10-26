module ProductsHelper
  
  def t_word(item)
    string = []
    frase = Translation.find_by_original_and_phrase(item,true)
    if !frase.nil?
      frase.translate.to_s
    else  
    item.split(' ').each do |word|
      word_searched = Translation.find_by_original(word)
      if !word_searched.nil?
        string << word.gsub(/#{word.upcase}/,"#{word_searched.translate.to_s}")
      else
        string << word    
      end       
    end
    string.join(" ").to_s
    
    end
      
       
  end
end
