FactoryBot.define do
  factory :today_traning do
    start_time { '2021-12-08' }
    traning_weight { 100}
    traning_reps { 10 }
    traning_note { "ใในใ" }
    association :user
    association :traningevent
  end
end
