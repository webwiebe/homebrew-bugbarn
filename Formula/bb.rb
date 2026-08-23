class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.161"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.161.tar.gz"
      sha256 "74b4dad57377707074f90b9c5140bf581004932b246c80ab1fbbd6b2df9f4fef"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.161.tar.gz"
      sha256 "96d4e729650a08511f76e2c8f95de4913a7d8a4f2fbdde9d1935d9e716bf1a54"
    end
  end

  def install
    bin.install "bb"
  end
end
