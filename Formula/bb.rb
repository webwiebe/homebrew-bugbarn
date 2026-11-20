class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.391"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.391.tar.gz"
      sha256 "30b6db77c755736f07e034111e828cc348461d3b41ecb3b9e9275733b8c80af5"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.391.tar.gz"
      sha256 "c051caa4b4535bf86e4a4637ca91fc8731ce892654429312cfa7922e875af086"
    end
  end

  def install
    bin.install "bb"
  end
end
