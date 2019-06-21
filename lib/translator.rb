# require modules here
require 'yaml'


def load_library(path)
  # code goes here
  yaml = YAML.load_file(path)
  hash = {'get_meaning' => {}, 'get_emoticon' => {}}
  yaml.each do |meaning, emoticons|
    hash['get_meaning'][emoticons[1]] = meaning
    hash['get_emoticon'][emoticons[0]] = emoticons[1]
  end
  hash
end

def get_japanese_emoticon(path, english_emoticon)
  # code goes here
  emos = load_library(path)
  emos['get_emoticon'].each do |e, j|
    if e == english_emoticon
      return j
    end
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning
  # code goes here
end