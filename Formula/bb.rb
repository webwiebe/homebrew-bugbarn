class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.333"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.333.tar.gz"
      sha256 "75fc93387c854d1f128a632a30ceefd1aa39ce6f1766b106d14e3a618410b838"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.333.tar.gz"
      sha256 "3992624afc0d14a6b46db66273d9f9a374d88ed628451b0d381a43fc5e2af316"
    end
  end

  def install
    bin.install "bb"
  end
end
