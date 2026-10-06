class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.215"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.215.tar.gz"
      sha256 "93d011c5b78ee0c0b352e56232db28e8bb691ea6a3b88c39fb4c3fddfb8daf70"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.215.tar.gz"
      sha256 "c1fb20262176438db205bd686f326b7892928efb8fe9729bd3eaffe763ec6583"
    end
  end

  def install
    bin.install "bb"
  end
end
