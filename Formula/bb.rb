class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.146"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.146.tar.gz"
      sha256 "9dec366521324d8a390b62755fd61e513173d69f37cb6e57c8b39e9e2ba29416"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.146.tar.gz"
      sha256 "77414b271acf84f9e56e865f9dd25d41bd4b3457707fd497e6943ad940b8725b"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
