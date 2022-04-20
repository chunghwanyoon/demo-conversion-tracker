class WebCommonException < Exception
  def initialize(message, code, data = {}, callback = -> { })
    @message = message
    @code = code
    @data = data
    callback.call()
  end

  attr_reader :message
  attr_reader :code
  attr_reader :data

  def to_s
    self.message
  end
end
