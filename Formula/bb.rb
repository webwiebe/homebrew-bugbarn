class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.329"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.329.tar.gz"
      sha256 "e94088581eb816e4597870eacfdf7877d9660b75148f66d8742a3e9236c06dc6"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.329.tar.gz"
      sha256 "8e044c7291c6c55a669e855b604f7fe189808d5b33f34488cb0a294ef6c20e38"
    end
  end

  def install
    bin.install "bb"
  end
end
