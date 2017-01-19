class Maybe
  def self.Just(val)
    Maybe.new(val)
  end

  def self.Nothing
    @@nothing ||= Maybe.new(nil)
  end

  protected

  attr_reader :val

  private

  def initialize(val)
    @val = val
  end
end
