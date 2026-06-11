class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.68"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.68.tar.gz"
      sha256 "2b444058f1e87609b0489d389725cf6b15642764bc04f82572dcec8c4e11128c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.68.tar.gz"
      sha256 "8dd20907e01cd330f57aa9fd872dfdb8fb2576ba4245a689d44ddd26aff31eb5"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
