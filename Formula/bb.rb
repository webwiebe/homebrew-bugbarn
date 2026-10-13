class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.229"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.229.tar.gz"
      sha256 "22bd090d43f8372bab919197d04030726331528975d6a269b7f7db8749ded0d6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.229.tar.gz"
      sha256 "c9f4061d588c56679c52b979e598453b88a46ba9ca3713826646e354b5c0a8a2"
    end
  end

  def install
    bin.install "bb"
  end
end
