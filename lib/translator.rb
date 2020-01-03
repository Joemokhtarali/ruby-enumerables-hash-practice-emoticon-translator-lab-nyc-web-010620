# require modules here
require "yaml"
require "pry"

def load_library(path)
  result = {
    :get_meaning => {},      
    :get_emoticon => {} 
  }
  emoticons = YAML.load_file(path)
  emoticons.each do |key, value|  # value[1]  
     result[:get_meaning][value[1]] = key 
     result[:get_emoticon][value[0]] = value[1]
    # binding.pry   
  end 
  
  return result
end

def get_japanese_emoticon(path, emoticon)
   hash = load_library(path)
    binding.pry
end 

def get_english_meaning
  # code goes here
end