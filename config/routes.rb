MochaRice::Engine.routes.draw do
  match "/(:suite)", :to => "spec#index", defaults: { suite: nil }
end

if MochaRice.mount
  Rails.application.routes.draw do
    mount MochaRice::Engine => MochaRice.mount_at
  end
end
