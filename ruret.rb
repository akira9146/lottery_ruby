#ruby -Ks
member=[]#抽選参加者配列
ok=[]#当選者配列
flag=1#ループ判定用フラグ
size=0#当選者配列のサイズ
random=0#当落乱数
target=0#当選人数
members=0#抽選参加人数
s = gets.chomp.split(",")
members=s[0].to_i
target=s[1].to_i
members.times{|x|
  member << gets
  random=rand(2)
  if random==1
    ok << member[x]
  end
}
random=0
size=ok.length
while flag==1 and size!=target
  if size>target
    size.times{|y|
      random=rand(2)
      if random==0
        ok.slice!(y)
      end
  }    
  elsif size==0
    member.each{|z|
      ok << member[z]
    }
  else
    flag=0
  end
  size=ok.length
end
size.times{|num|
  print "当選したのは",ok[num]
}
