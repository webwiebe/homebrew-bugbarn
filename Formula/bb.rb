class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.228"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.228.tar.gz"
      sha256 "2c98e63b41b7a6600fa738b8e90cf7335da39bde01234eaf063a3d7db991c416"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.228.tar.gz"
      sha256 "8b37f5e71d6506395bb0cc83f76ed552d0813b58cec884398b8b4ae76572ab54"
    end
  end

  def install
    bin.install "bb"
  end
end
