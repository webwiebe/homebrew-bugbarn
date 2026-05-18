class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.234.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.234.1.tar.gz"
      sha256 "8076613bbfa2359f2354c2131327a2bdd49250e2629a69a650ab43c22599a455"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.234.1.tar.gz"
      sha256 "071e4a53f2a577f5fc1ecce77bfa07ca3b23b12a644cd592d14c81a384f470b9"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
