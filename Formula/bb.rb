class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.145"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.145.tar.gz"
      sha256 "01dd58fa5cc225b639e95bc000a74b5d93179be8880846c30bb2b7cbfa07f110"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.145.tar.gz"
      sha256 "75c088cfc3b83387aaa787cf0af06c775c04d465cc73b37f64acfc3a74601c90"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
