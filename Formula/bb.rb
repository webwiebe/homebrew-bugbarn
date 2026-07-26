class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.160"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.160.tar.gz"
      sha256 "9886494934c51fde1e6af99bc6bb6dee7305fdfc8bf7e80508d1cc8ca97d422d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.160.tar.gz"
      sha256 "3d9b89a05acf8d3e7e6c96ceb9b075f86707516c55a6c1b1712e200b67209bad"
    end
  end

  def install
    bin.install "bb"
  end
end
