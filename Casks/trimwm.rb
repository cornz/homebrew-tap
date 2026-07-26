# frozen_string_literal: true

cask "trimwm" do
  version "0.2.31"
  sha256 "29669e40a6c83d7629882f9c426fcc32183196c3a0d6f4c33d47e6abde761947"

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
