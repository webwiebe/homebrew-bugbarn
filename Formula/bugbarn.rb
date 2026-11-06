class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.340"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.340.tar.gz"
      sha256 "c1c11a9639b94e2ae8c766e52c01e8cadf368ec63e419891e85dd5deb3ede30c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.340.tar.gz"
      sha256 "c5b081a4c4c6b9c74ce04c11d026783a80cdad868b0429e3384e20d79e398168"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
