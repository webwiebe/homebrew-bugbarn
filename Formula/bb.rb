class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.145"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.145.tar.gz"
      sha256 "44e3063078d2d4639393693614f21a3727f69b77b434f40534e22dfaba92c8de"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.145.tar.gz"
      sha256 "e247b925d966236c1b83b50b541647f44688f420cccd228facc7bad4565ebfb6"
    end
  end

  def install
    bin.install "bb"
  end
end
