#18章（１）
def print_librarise
 $:.each do |path|          #$: Rubyが利用するライブラリが置かれているディレクトリの名前が配列で格納
 next unless FileTest.directory?(path)  #path がディレクトリないときに実行する
  Dir.open(path) do |dir|
   dir.each do |name|
    if name =~ /\.rb$/i    #.rbで終わるファイル名を対象
       puts name
    end
   end
 end
 end
end

print_librarise

puts "===="

#(2) ファイルとディレクトリに保存されているデータの大きさを表示する

require "find"

def du(path)
 result = 0
 Find.find(path){|f|   #pathで指定したディレクトリ以下のファイルのパスを１件ずつfに渡す
 if File.file?(f)      #ファイルの時、サイズを集計する
   result += File.size(f)
  end
 }
 printf("%d %s\n", result, path)
end

du(ARGV[0] || ".")
