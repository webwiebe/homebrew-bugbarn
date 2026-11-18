class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.376"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.376.tar.gz"
      sha256 "9f4c05b1ca4e46585a60724f7dbdd8ea6ea22abe355065636aba7f2c2dadfc96"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.376.tar.gz"
      sha256 "466e46eeab17ef6150dd8423591e4e65776ce1a832d2508860a098e14d8e42f2"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
