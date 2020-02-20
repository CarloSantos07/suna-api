require 'rails_helper'

RSpec.describe Note, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  # let!(:stand) { StandUp.new(id: SecureRandom.uuid, date: Time.now, scrum_master: 'Rich', pod_id: Faker::Hipster.word) }
  # let!(:note) { Note.new(id: SecureRandom.uuid, employee: Faker::FunnyName.name, kind: Faker::Number.within(range: 0..2), body: Faker::Hipster.paragraph, stand_up_id_id: stand.id) }
  # let!(:note) { Note.new(id: SecureRandom.uuid, employee: Faker::FunnyName.name, kind: Faker::Number.number(digits: 1), body: Faker::Hipster.paragraph, stand_up_id_id: stand.id) }
  # let!(:note) { Note.new(id: SecureRandom.uuid, employee: Faker::FunnyName.name, kind: , body: Faker::Hipster.paragraph, stand_up_id_id: stand.id) }

  describe 'model' do

    let!(:stand) {create(:stand_up, id: '1')}

    # binding.pry
    # note = FactoryBot.create(:note, stand_up_id_id: stand.id)
    # let!(:note) { create(:note, stand_up_id_id: stand.id, employee: 'name' )}
    let!(:note) { create(:note, stand_up_id: stand.id) }

    # it 'verifies the presence of an id' do
    #   binding.pry

    #   expect(note.id).not_to be_blank
    #   expect(note.id).not_to be_nil
    # end

    it 'verifies the presence of employee name' do
      expect(note.employee).to be('name')
      expect(note.employee).not_to be_nil
      expect(note.employee).not_to be_empty
    end

    it 'verifies the presence of the kind of note' do
      binding.pry
      expect(note.kind).not_to be_blank
      expect(note.kind).not_to be_nil
      expect(note.kind).not_to be_empty
    end

  end

end
