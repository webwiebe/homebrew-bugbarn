class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.254"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.254.tar.gz"
      sha256 "5da1692c6589b5d80d49a456b8eecf46c679f25f53513d86fa859f299b9397db"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.254.tar.gz"
      sha256 "33aac0cdd04348c9890599c95b2ca21141909a71f6523fd68493b51969e4d86e"
    end
  end

  def install
    bin.install "bb"
  end
end
