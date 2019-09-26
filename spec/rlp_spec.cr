require "./spec_helper"

describe RLP do
  it "encodes data properly" do
    result = RLP.get_spec_type(0xf0u8)
    result.should eq(:self_encoded)
  end

  it "should not encode unspecified formats" do
    result = RLP.get_spec_type(1337)
    result.should eq(:unimplemented)
  end
  # it "works" do
  #   false.should eq(true)
  # end
end
