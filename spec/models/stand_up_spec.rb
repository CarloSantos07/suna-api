require 'rails_helper'
require 'faker'

RSpec.describe StandUp, type: :model do
  describe 'model spec tests' do
    let!(:stand) { StandUp.new(id: SecureRandom.uuid, date: Time.now, scrum_master: Faker::FunnyName.name, pod_id: Faker::Hipster.word) }

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
    end

    it 'verify the presence of a pod id' do
      expect(stand.pod_id).not_to be_empty
    end
  end
end
