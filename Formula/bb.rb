class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.199"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.199.tar.gz"
      sha256 "8ba0b4800b017f3f98701af78c83287acc1dd5b54943b984dc71b8fe277a2fbc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.199.tar.gz"
      sha256 "6246ae2460fce95c926a87c1031343eea233774bbceea0aa7b9b89fbf1a6ff53"
    end
  end

  def install
    bin.install "bb"
  end
end
