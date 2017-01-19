class Maybe
  def self.Just(val)
    Maybe.new(val)
  end

  def self.Nothing
    @@nothing ||= Maybe.new(nil)
  end

  def fmap(block)
    if self == Maybe.Nothing
      return Maybe.Nothing
    else
      return Maybe.Just(block.call(val))
    end
  end

  protected

  attr_reader :val

  private

  def initialize(val)
    @val = val
  end
end
