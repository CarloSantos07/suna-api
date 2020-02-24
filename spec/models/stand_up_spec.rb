require 'rails_helper'
require 'faker'

RSpec.describe StandUp, type: :model do

  describe 'positive generic spec tests for the model' do
    stand = FactoryBot.create(:stand_up, date: Time.now)

    # it 'verify the presence of id' do
    #   expect(stand.id).not_to be_empty
    #   expect(stand.id).not_to be_blank
    #   expect(stand.id).not_to be_nil
    # end

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

  describe 'positive specific/explicit spec tests for the model' do
    stand = FactoryBot.create(:stand_up, id: SecureRandom.uuid, scrum_master: 'Ben N. Gerries', pod_id: '00000001')

    it 'verify the presence of a scrum master' do
      expect(stand.scrum_master).to eq('Ben N. Gerries')
    end


    it 'verify the presence of a pod id' do
      expect(stand.pod_id).to eq('00000001')
    end
  end

  describe 'negative generic spec tests for the model' do
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

  describe 'negative specific/explicit spec tests for the model' do
    let!(:stand) { StandUp.new(id: '', date: '', scrum_master: '', pod_id: '') }

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