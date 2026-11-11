class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.345"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.345.tar.gz"
      sha256 "ce6133b2f008562bc8d22bf337a7162cc2d85dd88c11a9d3774867187bb17a04"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.345.tar.gz"
      sha256 "d5c60848ccf6f12139587ded1708f399a6ffc1d21409517a71dac4684881b266"
    end
  end

  def install
    bin.install "bb"
  end
end
