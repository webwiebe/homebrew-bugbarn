class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.129"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.129.tar.gz"
      sha256 "44b15dbd12a7e8171dd710a180c5a752af8e8c22b7c9897ba0b5ebf427f09cc9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.129.tar.gz"
      sha256 "3ae528165bbbe82d63dd121cbdaeee60efc2a83d8f41d91c268667d8a733e4c2"
    end
  end

  def install
    bin.install "bb"
  end
end
