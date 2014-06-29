package "git"
package "curl"

git "/ceres-pallas" do
  repository "git://github.com/ceres-pallas/reinforcement-learning-explanation.git"
  action :sync
end

git "/ceres-pallas" do
  repository "git://github.com/ceres-pallas/asteroids-server.git"
  action :sync
end

git "/ceres-pallas" do
  repository "git://github.com/ceres-pallas/inverted-pendulum.git"
  action :sync
end
