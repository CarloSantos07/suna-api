require 'rails_helper'

RSpec.describe Note, type: :model do

  describe 'positive model testing' do
    # let!(:stand) {create(:stand_up, id: '1')}
    # let!(:note) { create(:note, stand_up_id: stand.id) }

    # binding.pry
    # let!(:stand) { create(:stand_up) }
    # let!(:note) { create(:note, stand_up_id: stand.id) }
    stand = FactoryBot.create(:stand_up)
    note = FactoryBot.create(:note, employee: Faker::FunnyName.name, stand_up_id: stand.id)
    binding.pry

    it 'verifies the presence of an id' do
      expect(note.id).not_to be_blank
      expect(note.id).not_to be_nil
    end

    it 'verifies the presence of employee name' do
      # expect(note.employee).to be('name')
      expect(note.employee).not_to be_nil
      expect(note.employee).not_to be_empty
    end

    it 'verifies the presence of the kind of note' do
      # binding.pry
      expect(note.kind).not_to be_blank
      expect(note.kind).not_to be_nil
      expect(note.kind).not_to be_empty
    end

  end

end
