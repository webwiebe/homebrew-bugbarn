class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.167"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.167.tar.gz"
      sha256 "1a6c0354b325fbf1324ed0685737db6aa8d1d5de76d8548ef8f108e5b63e6e88"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.167.tar.gz"
      sha256 "2b9151a341b4a20e767aab3f2b916cf534c0d744642cb25719cccf07637f3696"
    end
  end

  def install
    bin.install "bb"
  end
end
