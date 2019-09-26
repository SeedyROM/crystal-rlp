module RLP
  # Current version
  VERSION = "0.0.1"

  # Use RLP as a namespace
  extend self

  # Value type
  alias Value = Int64 | Char

  # Encode a valid encoded input
  def encode_spec_type(input : T) forall T
    buffer = IO::Memory.new(sizeof(UInt8))

    # Test input type
    # puts typeof(input)
    # puts input

    if typeof(input) == UInt8
      if input >= 0x00u8 || input < 0xFFu8
        msg = "OWN ENCODING"
        puts msg
        return msg
      end
    else
      msg = "NOT IMPLEMENTED"
      puts msg
      return msg
    end
  end
end
