class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.318"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.318.tar.gz"
      sha256 "0c26df9444ff84d46bf5a84c3e9399a4bfb752b50f244d5f7836b34dde440fb1"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.318.tar.gz"
      sha256 "ebdc7e5622cdc91417704c8a5b0b07350a2bc9920ce8fc662b6a47251fb91bf4"
    end
  end

  def install
    bin.install "bb"
  end
end
