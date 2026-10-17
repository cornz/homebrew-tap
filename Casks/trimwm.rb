# frozen_string_literal: true

cask "trimwm" do
  version "0.9.3"
  sha256 "b5f30c00d77088fc0adc0f59f784ba50f82b60808805ca9e627453b12fe4002c"

  url "https://github.com/cornz/TrimWM/releases/download/v#{version}/TrimWM-#{version}.zip"
  name "TrimWM"
  desc "Fast, animation-free tiling window manager with BSP, scrolling columns, and tabs"
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
