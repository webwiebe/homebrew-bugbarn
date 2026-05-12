class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.125"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.125.tar.gz"
      sha256 "887ffe367dd7fb58566911ec9a66b0083e2e634c9533c57bc091dbc13717a654"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.125.tar.gz"
      sha256 "1dbb3191787ce9eb9f1e67adabce4b8a632b2b5d0d11b2eccb4138ba62e393e9"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
