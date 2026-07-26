# frozen_string_literal: true

cask "devcontrolroom" do
  version "0.8.0"
  sha256 "dc5efb6a10e4a82aad107df59278e06b61e31728ec6c6babfe46fb0c14310671"

  url "https://github.com/cornz/DevControlRoom/releases/download/v#{version}/DevControlRoom-#{version}-universal.zip",
      verified: "github.com/cornz/DevControlRoom/"
  name "DevControlRoom"
  desc "Menu bar control room for running and monitoring local development services"
  homepage "https://github.com/cornz/DevControlRoom"

  depends_on macos: :sonoma

  app "DevControlRoom.app"

  zap trash: "~/.config/devcontrolroom"
end
