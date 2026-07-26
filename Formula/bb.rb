class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.156"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.156.tar.gz"
      sha256 "59fdf2c901bb3dace7f18eed8a1f5668837f639bfd824ce91f3a999244c8e034"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.156.tar.gz"
      sha256 "1d5176ab91ada0db57fe9de961cff89947e5da5cb96a7b260cd99feea5fafc0e"
    end
  end

  def install
    bin.install "bb"
  end
end
