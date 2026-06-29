class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.110"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.110.tar.gz"
      sha256 "07c992990a6fa0ddf4622488b6bc09ad77bfa4da322fab83f717069dfc12259b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.110.tar.gz"
      sha256 "5edc3c5ce65bd7964db0029d441d0a3c99aa1bd5445b4e94a50ed70be9edc6f1"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
