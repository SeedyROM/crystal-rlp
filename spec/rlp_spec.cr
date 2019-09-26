require "./spec_helper"

describe RLP do
  it "encodes data properly" do
    result = RLP.encode_spec_type(0xf0u8)
    result.should eq("OWN ENCODING")
    result = RLP.encode_spec_type(1337)
    result.should eq("NOT IMPLEMENTED")
  end
  # it "works" do
  #   false.should eq(true)
  # end
end
