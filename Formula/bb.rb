class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.395"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.395.tar.gz"
      sha256 "4d9c1c2d798e48a344f476ebddd0ef097892631ba87e5fe4607836b1955510c3"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.395.tar.gz"
      sha256 "adce46a623fdc357dc9b520eeda3081dfc15109fff44a007ac1fb627b190f88c"
    end
  end

  def install
    bin.install "bb"
  end
end
