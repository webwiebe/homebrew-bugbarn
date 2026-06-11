class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.66"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.66.tar.gz"
      sha256 "4a5b4542123d3b923f4bb6006b6fd6c9f821021db490ec172e97a26dd48cfc62"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.66.tar.gz"
      sha256 "570b7e5c70a20fb0c40a03448be5637c8b9c8d0c6f222ea234f5c71853ee0f72"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
