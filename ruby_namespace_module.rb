#モジュール構文の中にクラス定義を書くと、同名のクラスがあっても名前の衝突は発生しない。
module Baseball
  #これはBaseballモジュールに属するSecondクラス
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  #これはClockモジュールに属するSecondクラス
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

#モジュールに属するクラスを参照する際は"モジュール名::クラス名"と記述する。
Baseball::Second.new('Alice', 13)
Clock::Second.new(13)
