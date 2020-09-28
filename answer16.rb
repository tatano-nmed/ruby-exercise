#16章練習問題
#(1)
def get_local(str)
 str =~ /^([^@]+)@(.*)$/    # ^ 先頭から、（[^@]+) @以外の文字を１回以上の繰り返し　(.*)&　任意文字を０回以上繰り返し 末尾まで
 localpost = $1
 domain = $2
 return [localpost, domain]
end

p get_local("info@exampl.com")  #=>["info", "exampl.com"]

#(2) gsubメソッドで文字を置き換える

tst = "正規表現は難しい！なんて難しいんだ！"
puts tst.gsub(/難しいんだ/, "簡単なんだ").gsub(/難しい/, "簡単だ") 

#先に/難しいんだ/を変更してから、/難しい/を変更する
#反対だと、先にすべての/難しい/を/簡単だ/に置き換えるので後のほうが対象とならない

#(3)アルファベットとハイフンからなる文字列でハイフンで区切られた部分をCaptializeする

def word_capitalize(str)
 return str.split(/\-/).collect{|w| w.capitalize}.join('-')
end
p word_capitalize("in-reply-to")  #=>"In-Reply-To"

#collect 各要素に対してブロックを実行した結果を配列にする　"-"で分ける
#w.capitalize 最初の小文字を大文字に置き換える。（大文字は小文字に）
#File.join('-') 引数で与えられた文字列を'-'で連結する（第18章）

