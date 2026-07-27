# frozen_string_literal: true

cask "trimwm" do
  version "0.3.1"
  sha256 "69477a8018e84c6b8847d5aedf2bd996310821fbdbe5a3d9458396e6aec1c5f8"

  url "https://github.com/cornz/TrimWM/releases/download/v#{version}/TrimWM-#{version}.zip",
      verified: "github.com/cornz/TrimWM/"
  name "TrimWM"
  desc "Fast, animation-free tiling window manager with BSP and scrolling columns"
  homepage "https://github.com/cornz/TrimWM"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "TrimWM.app"

  zap trash: [
    "~/.config/trimwm",
    "~/Library/Application Support/TrimWM",
  ]

  caveats <<~EOS
    Grant TrimWM access under:
      System Settings → Privacy & Security → Accessibility
  EOS
end
