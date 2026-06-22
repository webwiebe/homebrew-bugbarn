class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.94"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.94.tar.gz"
      sha256 "a06b067469761c934b51d4ca6fa0c4026109ff644eef75a3c4b36046e76661b4"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.94.tar.gz"
      sha256 "f16370da55ef4f35620325d26f9156913f4984ef00a2ac6e66781de88b0c1866"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
