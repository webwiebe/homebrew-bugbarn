class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.249"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.249.tar.gz"
      sha256 "c582a725a695b38745b1b732e46a715b54ac031ba389517d87701c770ac1e8b2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.249.tar.gz"
      sha256 "5811167e658002383dbb4674b8db748ccfb2980af9103c13c9a059796eed3fec"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
