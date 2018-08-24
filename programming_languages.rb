languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}
def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, language_data|
    style = style.to_s
    style = style.split
    language_data.each do |language, type_data|
      type_data.each do |type_name, type|
        if new_hash.keys.include? language
          repeat_language = language
          if language = new_language
            puts new_language
        end 
        else
          new_hash[language] = {:type => type, :style => style}
        end     
      end
    end
  end
  puts new_hash
end

reformat_languages(languages)
