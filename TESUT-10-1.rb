#!/usr/bin/ruby

#�G���[�����Ɨ�O
ltotal = 0
wtotal = 0
ctotal = 0

ARGV.each do |file|
 begin
  input = File.open (file)   #�t�@�C�����J��
  l = 0                      #file���̍s��
  w = 0                      #file���̒P�ꐔ
  c = 0                      #file���̕�����
  input.each_line do |line|
   l += 1
   c += line.size
   line.sub!(/^\s+/,"")      #�擪�̋󔒂��폜
   ary = line.split(/\s+/)   #�󔒕����ŕ���
   w += ary.size
 end
 input.close
 printf("%8d %8d %8d %s\n",l, w, c, file)
 ltotal += 1
 wtotal += w
 ctotal += c

 rescue => ex
  puts ex.message      #��O�̃��b�Z�[�W�o��
 end
end

printf("%8d %8d %8d %s\n",ltotal, wtotal, ctotal,"total")

