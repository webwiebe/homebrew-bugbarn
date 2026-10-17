class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.266"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.266.tar.gz"
      sha256 "27f46874cf87fbdef17bba1d713ef9b00e04916c033b8e519d1ddfb1ff1d586c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.266.tar.gz"
      sha256 "e71a0ebb17290b67cb4fb8f91cdba0f468dc0d52dca84ede84049fb10d95ba2e"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
