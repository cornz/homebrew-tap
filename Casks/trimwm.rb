# frozen_string_literal: true

cask "trimwm" do
  version "0.9.4"
  sha256 "01f74a317b0a6dca7a286df901732b7312a435830a0b073c9b1e145d1c9b02ee"

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
