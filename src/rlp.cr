module RLP
  # Current version
  VERSION = "0.0.1"

  # Use RLP as a namespace
  extend self

  # Value type
  alias Value = Int32 | Int64 | Char

  # Encode a valid encoded input
  def get_spec_type(input : Value) forall Value
    buffer = IO::Memory.new(sizeof(UInt8))

    # **DEBUG INPUT TYPE**
    #
    # puts typeof(input)
    # puts input
    #

    if typeof(input) == UInt8
      if input >= 0x00u8 || input < 0xFFu8
        return :self_encoded
      end
    else
      return :unimplemented
    end
  end
end
