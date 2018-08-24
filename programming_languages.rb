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
        puts type
        puts type_name
        puts style
        puts language
      end 
    end
  end
end

reformat_languages(languages)
