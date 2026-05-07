class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.72"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.72.tar.gz"
      sha256 "c892099b2bd1180b8e4dbe2ccf6beb0640f8a522cf6aad992a477ae8f0d3cc7a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.72.tar.gz"
      sha256 "4ff52dd4d0eabf2f487462f60016cd70c7853896630ff5206ff85b5b13f88602"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
