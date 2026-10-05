class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.207"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.207.tar.gz"
      sha256 "ce00855557266573133d9b57d090105863b484b14093f23f5b003fd4243c259f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.207.tar.gz"
      sha256 "0278c2991d15e4743dfd19424a03c9f03de55a65dd76118acba2f6e83fce7c8b"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
