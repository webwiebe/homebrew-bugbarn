class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.331"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.331.tar.gz"
      sha256 "9a67f5044553cd4d31c2de1fc752d866cbeb9cde85c0e5b0c943404d51fedecf"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.331.tar.gz"
      sha256 "e0d507af1df2366adae563fe28ed24e3e125f64277192d3da1ce9b8b2cf99ba7"
    end
  end

  def install
    bin.install "bb"
  end
end
