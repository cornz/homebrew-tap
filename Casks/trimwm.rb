# frozen_string_literal: true

cask "trimwm" do
  version "0.7.0"
  sha256 "42287324fb1d31b7d631e354fd02291f414a533cb5d05cb10b39d62a23b219a9"

  url "https://github.com/cornz/TrimWM/releases/download/v#{version}/TrimWM-#{version}.zip"
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
