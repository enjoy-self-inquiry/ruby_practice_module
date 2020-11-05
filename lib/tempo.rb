#Comparableモジュールと<=>演算子を定義することで、独自のTempoクラスが比較演算子を使って大小を比較できるようにする。
class Tempo
  include Comparable

  attr_reader :bpm

  #bpmはBeats Per Minuteの略称
  def initialize(bpm)
    @bpm = bpm
  end

  #<=>はComparableモジュールで使われる演算子(メソッド)

  def <=>(other)
    if other.is_a?(Tempo)
      #bpm同士を<=>で比較した結果を返す
      bpm <=> other.bpm
    else
      #比較不可能な場合はnilを返す
      nil
    end
  end

  def inspect
    "#{bpm}bpm"
  end
end

t_120 = Tempo.new(120) #=>120bpm
t_180 = Tempo.new(180) #=>180bpm

puts t_120 > t_180 #=>false
puts t_120 <= t_180 #=>true
puts t_120 == t_180 #=>false

tempos = [Tempo.new(100), Tempo.new(60), Tempo.new(200)]
p tempos#=>[100bpm, 60bpm, 200bpm]

#sortメソッドの内部では、並び替えの際に<=>演算子が使われる
p tempos.sort #=>[60bpm, 100bpm, 200bpm]
