#18�́i�P�j
def print_librarise
 $:.each do |path|          #$: Ruby�����p���郉�C�u�������u����Ă���f�B���N�g���̖��O���z��Ŋi�[
 next unless FileTest.directory?(path)  #path ���f�B���N�g���Ȃ��Ƃ��Ɏ��s����
  Dir.open(path) do |dir|
   dir.each do |name|
    if name =~ /\.rb$/i    #.rb�ŏI���t�@�C������Ώ�
       puts name
    end
   end
 end
 end
end

print_librarise

puts "===="

#(2) �t�@�C���ƃf�B���N�g���ɕۑ�����Ă���f�[�^�̑傫����\������

require "find"

def du(path)
 result = 0
 Find.find(path){|f|   #path�Ŏw�肵���f�B���N�g���ȉ��̃t�@�C���̃p�X���P������f�ɓn��
 if File.file?(f)      #�t�@�C���̎��A�T�C�Y���W�v����
   result += File.size(f)
  end
 }
 printf("%d %s\n", result, path)
end

du(ARGV[0] || ".")
