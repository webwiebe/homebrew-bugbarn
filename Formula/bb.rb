class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.397"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.397.tar.gz"
      sha256 "8cb43cd083ec9669c1c02c39cf3fb4e673031ac8ddf04ee6eef5543a4ac069d0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.397.tar.gz"
      sha256 "e2d4b804e92583841ebc05b72f131bc5c41663e15812929f50e7a3e4b5e6b7e2"
    end
  end

  def install
    bin.install "bb"
  end
end
