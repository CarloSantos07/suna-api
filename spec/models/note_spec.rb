require 'rails_helper'

RSpec.describe Note, type: :model do

  describe 'positive generic spec tests for the model' do
    stand = FactoryBot.create(:stand_up, date: Time.now)
    note = FactoryBot.create(:note, employee: Faker::FunnyName.name, kind: 1, stand_up_id: stand.id)

    it 'verifies the presence of employee name' do
      expect(note.employee).not_to be_nil
      expect(note.employee).not_to be_empty
    end

    it 'verifies the presence of the kind of note' do
      expect(note.kind).not_to be_blank
      expect(note.kind).not_to be_nil
      expect(note.kind).not_to be_empty
    end
  end

  describe 'negative generic spec tests for the model' do
    stand = FactoryBot.create(:stand_up, date: Time.now)
    note = FactoryBot.create(:note, employee: '', kind: 'today', stand_up_id: stand.id)

    it 'verifies the absence of employee name' do
      expect(note.employee).to be_blank
      expect(note.employee).to be_empty
    end

    it 'verifies the absence of note body' do
      expect(note.body).not_to be_empty
      expect(note.body).not_to be_blank
    end
  end

  describe 'positive specific/explicit spec tests for the model' do
    stand = FactoryBot.create(:stand_up, id: SecureRandom.uuid, scrum_master: 'Ben N. Gerries', pod_id: '00000001')
    note = FactoryBot.create(:note, employee: 'Ben N. Gerries', kind: 'roadblocks', body: Faker::TvShows::StrangerThings.quote, stand_up_id: stand.id)

    it 'verify the presence of a employee name' do
      expect(note.employee).to eq('Ben N. Gerries')
    end

    it 'verify the presence of a kind of note' do
      expect(note.kind).not_to eq('yesterday')
      expect(note.kind).not_to eq('today')
      expect(note.kind).to eq('roadblocks')
    end

    it "verify the presence of information in the note's body" do
      expect(note.body).not_to eq('')
      expect(note.body).not_to be_blank
      expect(note.body).not_to be_empty
    end
  end

  describe 'negative specific/explicit spec tests for the model' do
    stand = FactoryBot.create(:stand_up, id: SecureRandom.uuid, scrum_master: 'Ben N. Gerries', pod_id: '00000001')
    # note = FactoryBot.create(:note, employee: 'Ben N. Gerries', kind: 'roadblocks', body: Faker::TvShows::StrangerThings.quote, stand_up_id: stand.id)
    note = FactoryBot.create(:note, employee: 'Ben N. Gerries', kind: 'roadblocks', body: 'Heey!', stand_up_id: stand.id)


    it 'verify that the employee name is valid' do
      expect(note.employee).not_to eq('')
    end

    it 'verify that the kind of note has a valid type' do
      expect(note.kind).not_to eq('yesteryear')
      expect(note.kind).not_to eq('whenever')
    end

    it 'verify the note contains some kind of information' do
      expect(note.body).not_to eq('')
      expect(note.body).not_to eq('hey')
      expect(note.body).not_to eq('hey!')
      expect(note.body).not_to be_blank
      expect(note.body).not_to be_empty
    end

  end
end
