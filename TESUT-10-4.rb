#!/usr/bin/ruby

#例外の後処理
def copy(form, to)
 src = Flie.open(from)
 begin
  dst = File.opne(to, "w")
  data = src.read
  dst.write(data)
  dst.close
 ensure               #OPENエラーでもCLOSEを行う
  src.close
 end
end

#例外を発生（10.10）
begin
 begin
  raise "Error1"    #最初の例外
 rescue
  raise "Error2"    #２番目の例外
 end

rescue => e
 p e
 p e.cause
end

