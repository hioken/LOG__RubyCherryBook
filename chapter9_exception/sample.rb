puts 'Start.'
module Greeter
  def hello
    'hello'
  end
end

begin
  Greeter.new
rescue
  puts "例外処理"
end
puts 'End.'
