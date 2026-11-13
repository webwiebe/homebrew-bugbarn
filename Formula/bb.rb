class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.366"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.366.tar.gz"
      sha256 "8504dadd303ffd33d65912c1ac7e46175f6e0e8f3a8f695f9b748eee09c3622e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.366.tar.gz"
      sha256 "c1fa17272ca1f89b707d349e0a446611bb0edb32023c34a6fb018f404c2c7995"
    end
  end

  def install
    bin.install "bb"
  end
end
