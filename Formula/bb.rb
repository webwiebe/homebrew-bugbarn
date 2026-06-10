class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.65"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.65.tar.gz"
      sha256 "09e322585e0ad7a8d217a15518508085c6365119f975bf60567b05ff28e9832a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.65.tar.gz"
      sha256 "92e43c7b32e52c398ac0025de668d7fa385c7654cf34b6f03f80d434c96bd0f5"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
