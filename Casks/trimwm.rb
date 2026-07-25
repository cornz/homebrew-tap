# frozen_string_literal: true

cask "trimwm" do
  version "0.2.30"
  sha256 "1f6077ace1ad4d07ce1183ab5880f9905bb1aad9a7bbbf80bb304404ea09611e"

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
