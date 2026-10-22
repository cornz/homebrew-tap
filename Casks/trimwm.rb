# frozen_string_literal: true

cask "trimwm" do
  version "0.9.5"
  sha256 "0848443488182cf0660a7704251b66d97b25484eebdd7b918010613665ba2692"

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
