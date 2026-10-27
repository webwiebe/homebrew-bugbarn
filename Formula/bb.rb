class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.291"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.291.tar.gz"
      sha256 "feff5b1042e8d3e4097a280aa3db32cfb01b92257d0b44e96afb094b7d293166"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.291.tar.gz"
      sha256 "dd6bb6370cba35517690eeeb241e8a4923b79a2751dd2f11a7a0603639b944f2"
    end
  end

  def install
    bin.install "bb"
  end
end
