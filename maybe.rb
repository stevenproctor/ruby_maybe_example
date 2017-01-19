class Maybe

  def self.return(val)
    if val == nil
      Maybe.Nothing
    else
      Maybe.new(val)
    end
  end

  def fmap(block)
    if self == nothing
      return nothing
    else
      return Maybe.return(block.call(val))
    end
  end

  def apply(f)
    if f == nothing
      return nothing
    else
      return fmap(f.val)
    end
  end

  protected

  attr_reader :val

  def nothing
    @@nothing ||= Maybe.new(nil)
  end

  private

  def initialize(val)
    @val = val
  end
end
