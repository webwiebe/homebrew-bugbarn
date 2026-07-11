class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.135"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.135.tar.gz"
      sha256 "19b17812cf044da06e7d2e24fb7c21b921664d5df3cddd0d5375199a79949ce0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.135.tar.gz"
      sha256 "9a23d0ff595faf5b83af5176e48836e480bef14f86f90e8b6fac9d2843189586"
    end
  end

  def install
    bin.install "bb"
  end
end
