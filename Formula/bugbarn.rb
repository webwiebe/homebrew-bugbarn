class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.311"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.311.tar.gz"
      sha256 "81e1aef7bfd0b47ca167555cebf4d48e893e51c84b116b75b65149173ffb4838"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.311.tar.gz"
      sha256 "6dac40d25330be28718d58a1dc3be7e0bd2e77f1bad6e4816d5281720f8771ea"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
