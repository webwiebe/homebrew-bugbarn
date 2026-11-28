class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.398"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.398.tar.gz"
      sha256 "946491466662f6e5c1020541ff8dce835a89456d6d6da1b72e998a7eb665ff67"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.398.tar.gz"
      sha256 "3414cf38a0697a3a51bda8bf67e08a40787cf843842510cc50b1b5cbe2f7a492"
    end
  end

  def install
    bin.install "bb"
  end
end
