package "git"
package "curl"

include_recipe "nodejs"

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

execute "npm install" do
  cwd "/ceres-pallas/asteroids-server" 
  command "npm install"
  creates "/ceres-pallas/asteroids-server/node_modules"
end
