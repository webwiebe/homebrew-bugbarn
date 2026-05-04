class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.43"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.43.tar.gz"
      sha256 "3e378b64fc0543b2dc5710b06fe9e5fce0d9a583b0d11dc0eb7e50329448609f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.43.tar.gz"
      sha256 "2bf34310cdda9f0dbfe1c920bd7c04e5859e12bfd1736b5f4a5c0fda2ce06764"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
