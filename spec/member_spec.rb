require_relative '../Member'
require_relative '../Account'

describe Member do
  let (:grace_hopper) {Member.new("Grace", "Hopper")}

  describe "first_name" do
    it 'should be readable' do
      expect(grace_hopper.first_name).to eq("Grace")
    end
  end

end