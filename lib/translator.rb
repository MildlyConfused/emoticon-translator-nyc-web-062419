# require modules here
require 'yaml'


def load_library(path)
  # code goes here
  yam = YAML.load_file(path)
  return_hash = {'get_meaning' => {}, 'get_emoticon' => {}}
  yam.each do |meaning, emoticons|
    return_hash['get_meaning'][emoticons[1]] = meaning
    return_hash['get_emoticon'][emoticons[0]] = emoticons[1]
  end
  return_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end