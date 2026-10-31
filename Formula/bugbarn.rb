class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.307"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.307.tar.gz"
      sha256 "12a368c58562ab9f648096d98ffc06e35a2e34bb4cf068bbaf214a58425a370b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.307.tar.gz"
      sha256 "f528d55b83c76b9288f69413503f44af335b3ecc911e776ab1b1a9abd4ba5538"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
