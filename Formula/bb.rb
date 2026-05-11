class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.110"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.110.tar.gz"
      sha256 "bd984a773e7eb0676392ce58c73637bc9f524547a23152c3fa8dd8d122766eeb"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.110.tar.gz"
      sha256 "1b329fb7d6af760ad1ce900eaf6f8776b57d429035c2b7081f12f3efa3f7b65e"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
