class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.264"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.264.tar.gz"
      sha256 "240a6e0471688633ea1006dbd7d8adbf60fa74eb73f9ff0240517ba31cda6c3a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.264.tar.gz"
      sha256 "8afc6ed74a8cabf709b578615fa021f8d39b83d232c4694706a98f275c9e74db"
    end
  end

  def install
    bin.install "bb"
  end
end
