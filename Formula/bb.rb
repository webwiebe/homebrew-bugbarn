class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.152"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.152.tar.gz"
      sha256 "901a71e7d39128395b7044bfd1739357799e9b8f0fde4872b92fc90d5d7ca3d2"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.152.tar.gz"
      sha256 "1389d7368d46caae4f5511cc75fcd68295e842794f9a8f0f96667a227cbe3820"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
