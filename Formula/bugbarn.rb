class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.254"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.254.tar.gz"
      sha256 "38404c6d5ec238bc53bd0ecc545290fa746f3ca0b5b479083308faf930a68f8e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.254.tar.gz"
      sha256 "7a2745e0ea6185e53d49ceff294f3d714794f8c8195003b45209a458b59c502f"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
