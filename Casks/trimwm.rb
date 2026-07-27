# frozen_string_literal: true

cask "trimwm" do
  version "0.3.0"
  sha256 "9600e79c3a27d7109ea633357588d728e819023747dde3361e7c867bef15a75d"

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
