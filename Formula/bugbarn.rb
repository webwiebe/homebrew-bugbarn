class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.119"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.119.tar.gz"
      sha256 "95c7f964e0d956e7569b05213609f720b35510db8f80e045a17a04366c70c85a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.119.tar.gz"
      sha256 "e3b9b2d88dcb9019bc69c5729fefed1fa944acdbb0814f6fe6cef6b2c6a9c690"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
