class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.158"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.158.tar.gz"
      sha256 "39505af690ec5667065f13debe19830110d736b56e2c985c493ad5fcf757d49f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.158.tar.gz"
      sha256 "fa89c5bee7ca9e7e54bb5db2ba956c824204bba0e90713355b9375a8f78844d1"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
