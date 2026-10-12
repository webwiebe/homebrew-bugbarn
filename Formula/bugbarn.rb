class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.223"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.223.tar.gz"
      sha256 "5b2bc2549b861b4e998075db43f1cfd4d586f1f69043c3a552658f81028b838d"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.223.tar.gz"
      sha256 "dde3af98c7ec157697203266765ccb488cf3049581ba4d0f80f353eaaffa179e"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
