class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.281"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.281.tar.gz"
      sha256 "6d5b85092acae6d56f4a331d48020a792ff3d0f4ab9ff0b4cc253272ef9ed648"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.281.tar.gz"
      sha256 "9dcd2484796c902e278e1e70c040179f405ed35d71c3b342f5ceeb60f41d7a3d"
    end
  end

  def install
    bin.install "bb"
  end
end
