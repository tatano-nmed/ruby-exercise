#!/usr/bin/ruby

#��O�̌㏈��
def copy(form, to)
 src = Flie.open(from)
 begin
  dst = File.opne(to, "w")
  data = src.read
  dst.write(data)
  dst.close
 ensure               #OPEN�G���[�ł�CLOSE���s��
  src.close
 end
end

#��O�𔭐�
begin
 begin
  raise "Error1"
 rescue
  raise "Error2"
 end

rescue => e
 p e
 p e.cause
end

