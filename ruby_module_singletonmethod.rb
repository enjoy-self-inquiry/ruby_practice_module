#モジュールはクラスと違ってインスタンスが作れないため、
#newする必要がまったくない「単なるメソッドの集まり」を作りたい
#ケースに向いている。
module Loggable
  class << self
    def log(text)
      puts "[LOG]#{text}"
    end

    #以下、ほかの特異メソッドを定義
  end
end

Loggable.log('Hello.') #=>[LOG]Hello.
