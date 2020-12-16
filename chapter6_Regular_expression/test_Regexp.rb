=begin
text1 = <<TEXT
I love Ruby.
Python is a great language.
Java and Javascript ard different.
English
japanese
TEXT

puts "text1 : #{text1.scan(/[A-Z][A-Za-z]+/)}"


text2 = <<TEXT
私の郵便番号は2395020です。
私の住所は6330201 兵庫県西脇市伊多波町だよ。
TEXT

puts "text2 : #{text2.gsub(/(\d{3})(\d{4})/, '\1-\2')}"


text = <<-TEXT
名前：伊藤淳一
電話：03-1234-5678
住所：兵庫県西脇市板波町1-2-3
TEXT

puts text.scan(/\d-\d/)


text = <<TEXT
<select name="game_console">
<option value="none"></option>
<option value="wii_u">Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
TEXT

p text.scan(/<option value="\w+">[^<>]*<\/option>/).join("\n").gsub(/<option value="([a-z0-9_]+)">([^<>]*)<\/option>/, '\1, \2')


text = <<TEXT
{
  japan:	'yen',
  america:'dollar',
  italy:     'euro'
}
TEXT

puts text.gsub(/:\s*/, ': ')

=end

hash = {:a => {:b => 'c'}}
p hash
