# coding: utf-8
require 'yaml'

get '/yuueki' do
  path = File.expand_path(File.dirname(__FILE__))
  yuueki_words = YAML::load(open(path + "/word.conf"))
  
  text = params[:q]
  yuueki = false
  
  yuueki_words.each do |yuueki_word|
    if text.include?(yuueki_word)

      yuueki = true
      break
    end
  end

  yuueki.to_s
end
