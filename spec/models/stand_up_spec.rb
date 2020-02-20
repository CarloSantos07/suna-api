require 'rails_helper'
require 'faker'

RSpec.describe StandUp, type: :model do
  describe 'positive model spec tests' do
    # let!(:stand) { StandUp.new(id: SecureRandom.uuid, date: Time.now, scrum_master: 'Rich', pod_id: Faker::Hipster.word) }
    # let!(:stand) { create(:stand_up) }

    stand = FactoryBot.create(:stand_up)
    
    binding.pry
    

    it 'verify the presence of id' do
      expect(stand.id).not_to be_empty
      expect(stand.id).not_to be_blank
      expect(stand.id).not_to be_nil
    end

    it 'verify the length of id' do
      expect(stand.id.length).to be <= 36
    end

    it 'verify the presence of a date' do
      expect(stand.date).not_to be_nil
      expect(stand.date).not_to be_blank
    end

    it 'verify the presence of a scrum master' do
      expect(stand.scrum_master).not_to be_empty
      # expect(stand.scrum_master).to eq('Rich')
    end

    it 'verify the presence of a pod id' do
      expect(stand.pod_id).not_to be_empty
    end
  end

  describe 'negative model spec tests' do
    let!(:stand) { StandUp.new(id: '', date: '', scrum_master: '', pod_id: '') }

    it 'verify that when no id is given its value will be empty or blank' do
      expect(stand.id).to be_empty
      expect(stand.id).to be_blank
    end

    it 'verify that when no id is given the length of id is 0 ' do
      expect(stand.id.length).to eq(0)
    end

    it 'verify that when no date is given its value will be nil/blank' do
      expect(stand.date).to be_nil
      expect(stand.date).to be_blank
    end

    it 'verify that when no scrum master has been entered then its value will be blank/empty' do
      expect(stand.scrum_master).to be_empty
      expect(stand.scrum_master).to be_blank
    end

    it 'verify that when no pod id is given then its value will be empty' do
      expect(stand.pod_id).to be_empty
    end
  end
end