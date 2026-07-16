class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.144"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.144.tar.gz"
      sha256 "38a5eddea66fae14df54706065ec6cc7ba1b07c00c424e426a84c5d847cc4ff0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.144.tar.gz"
      sha256 "636f5e78b0361e91bf0b7a1a888bb35dfba2901d97e44fa67e0cefef30451e2c"
    end
  end

  def install
    bin.install "bb"
  end
end
