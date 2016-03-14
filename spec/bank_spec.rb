require_relative '../Bank'
require_relative '../Member'

describe Bank do
  let(:new_bank) { Bank.new }

  describe "#list_of_members" do
    it 'should be readable' do
      expect(new_bank.list_of_members.length).to eq(0)
    end
    it 'should be equal to zero when a new bank is created' do
      expect(new_bank.list_of_members.length).to eq(0)
    end

  end

  describe '#add_member' do
    it 'should make one more be a customer of the bank' do
      new_bank.add_member("Bill", "Smith")
      list_of_members = new_bank.list_of_members
      expect(list_of_members.length).to eq(1)
    end
  end

  describe '#display_members' do
    it 'should display all members of the bank' do
      new_bank.add_member("Bob", "Stevenson")
      new_bank.add_member("Jana", "Phillips")
      expect(new_bank.display_members).to eq(["2 Bob Stevenson", "3 Jana Phillips"])
    end
  end

  describe "#find_member_by_name" do
    it 'should return a member when you search for the proper name' do
      new_bank.add_member("Elton", "John")
      new_bank.add_member("Benny", "Jets")
      expect(new_bank.find_member_by_name("Benny", "Jets")). to eq(new_bank.list_of_members.pop)
    end
  end

end
