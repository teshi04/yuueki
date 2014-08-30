# coding: utf-8

post '/yuueki' do
  yuueki_words = ["有益", "@", "天気", "スレイン・トロイヤード", "花金"]
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
