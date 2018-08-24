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
            repeat_language = language
            style_list = new_hash[repeat_language][:style] << style
            new_hash[language] = {:type => type, :style => style_list}
        else
          style_list = []
          style_list << style
          new_hash[language] = {:type => type, :style => style_list}
        end     
      end
    end
  end
  new_hash
end
