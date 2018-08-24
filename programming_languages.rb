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
    language_data.each do |language, type_data|
      type_data.each do |type_name, type|
        if new_hash.keys.include? language
            puts "messing with #{language} before adding to new hash"
            repeat_language = language
            style_list = new_hash[repeat_language][:style] << style
            puts style_list
            new_hash[language] = {:type => type, :style => repeat_style_list}
        else
          puts "adding #{language} to new hash"
          style_list = []
          style_list << style
          new_hash[language] = {:type => type, :style => style_list}
        end     
      end
    end
  end
  new_hash
end

puts reformat_languages(languages)
