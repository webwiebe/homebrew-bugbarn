class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.305"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.305.tar.gz"
      sha256 "91adfac21ce313c6c70c68ad6cca7a98dcd72372de8ac489cb4eb594a07bbae1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.305.tar.gz"
      sha256 "6fbc29103105af95f8fe395d7713efb5fe932bbd5498f514a9778417f41ce1be"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
