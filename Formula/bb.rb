class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.105"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.105.tar.gz"
      sha256 "c6be9d7957a78283072a96d1eb82780b60d1596f09f95649d5dd7837a3bd3272"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.105.tar.gz"
      sha256 "a9554f419000589f5d0e6df352922fec0be4918bc8d444e2ffd21311425be040"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
