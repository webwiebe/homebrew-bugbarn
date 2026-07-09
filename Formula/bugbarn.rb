class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.126"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.126.tar.gz"
      sha256 "f2fcd60aa777b41f224cb8e9c0b5d18886f95c5dfe46143db35ea6c3bcbe34fa"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.126.tar.gz"
      sha256 "e84e63294813d316b4acc9dcbf1011ba08da1e5599ecd7e9a06db3ab672851b2"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
