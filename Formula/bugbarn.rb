class Bugbarn < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.346"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.346.tar.gz"
      sha256 "40fe67a538821d2244f9cf7ef21e1ed660fab7a36222a47731e66195ba70438a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.346.tar.gz"
      sha256 "427f9e9e36ce63801d86e2a3e155a787ab07fc151e16da7b4f94d2f4f4e1f942"
    end
  end

  def install
    bin.install "bugbarn"
  end
end
