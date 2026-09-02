class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.167"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.167.tar.gz"
      sha256 "2be3a57f09d48162f90ed714e91c642604de1ded3646859e84311656f4a9669e"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.167.tar.gz"
      sha256 "f37470b258aea67c7c0f1e35a1db6ff8d658d2e20b6f56f63d7703696158f90d"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
