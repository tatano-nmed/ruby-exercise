#第１７章　練習問題
#(1)
def wc(file)
 nline = nword = nchar = 0
 File.open(file){|io|
  io.each{|line|
   words = line.split(/\s+/).reject{|w| w.empty?}   #空白で単語に分ける、先頭の空白は除く
    nline += 1
    nword += words.length     #単語の数の集計
    nchar += line.length      #lineの文字数の集計
   }
  }
 puts "lines=#{nline} words=#{nword} chars=#{nchar}"
end

wc(__FILE__)

