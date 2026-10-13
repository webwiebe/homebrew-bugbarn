class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.232"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.232.tar.gz"
      sha256 "130288181d9a7b60d9a3bee8c0e0897bd2f6848a1c7c16fdded12fee8b32497b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.232.tar.gz"
      sha256 "d013e1a66db7134c6e138f6129a10ab7745b224471211b573a1055a2225af8dd"
    end
  end

  def install
    bin.install "bb"
  end
end
