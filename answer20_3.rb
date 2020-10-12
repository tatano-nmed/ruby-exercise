#第２０章練習問題（３）カレンダーを作成する

require "date"

module Calendar
 WEEK_TABLE = [
  [99, 99, 99, 99, 99, 99,  1,  2,  3,  4,  5,  6,  7],
  [ 2,  3,  4,  5,  6,  7,  8,  9, 10, 11, 12, 13, 14],
  [ 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21],
  [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28],
  [23, 24, 25, 26, 27, 28, 29, 30, 31, 99, 99, 99, 99],
  [30, 31, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99],
 ]

 module_function

 def cal(year, month)
  first = Date.new(year, month, 1)   #指定した月の1日
  end_of_month = ((first >> 1 ) - 1).day  #月末日（翌月の1日の前日）
  start = 6 - first.wday                #当月１日の曜日（0から6）からstartを決定

  puts first.strftime("%B %Y").center(21)   #%B 月(October),%Y 西暦年
  puts " Su Mo Tu We Th Fr St"
  WEEK_TABLE.each do |week|
    buf = ""
    week[start, 7].each do |day|
     if day > end_of_month
       buf << "   "
     else
       buf << sprintf("%3d", day)   #day を整数10進数３文字で整形
     end
    end
    puts buf
   end
  end
end

if arg = ARGV.first
  d = Date.parse(arg)   #文字列から日付を取り出す("2020.11.11"）->2020-11-01でカレンダーを作成）
else
  d = Date.today
end

Calendar.cal(d.year, d.month)
