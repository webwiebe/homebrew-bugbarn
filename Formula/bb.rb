class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.183"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.183.tar.gz"
      sha256 "5054d390d6590505215a510150acf65622f3969aaf8aaad1bcd4cf8170de91c7"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.183.tar.gz"
      sha256 "0dececba585b59f2311db26377cc04729edd0a7d1e5065ed28ca8d46985aec76"
    end
  end

  def install
    bin.install "bb"
  end
end
