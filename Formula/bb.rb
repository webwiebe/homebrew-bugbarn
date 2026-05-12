class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.130"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.130.tar.gz"
      sha256 "93d4dfd4240dae76a2557628e81919aca4a5f4649a80b195687bd22a9553b717"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.130.tar.gz"
      sha256 "b47546debc6b0038b64e6c0e0fd64cde3fd85742edc859474d8b0da155a82af9"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
