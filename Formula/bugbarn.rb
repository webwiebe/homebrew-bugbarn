class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.248"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.248.tar.gz"
      sha256 "f9fcbf89afd38d05cdfec5ad9cc93258e1b62a0f33addbad26bab87bf0865811"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.248.tar.gz"
      sha256 "d9cc461d8090606ad053e686cc83953e0a701b38438ea3bd00d1f82f5a146cea"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
