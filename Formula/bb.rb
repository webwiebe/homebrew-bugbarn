class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.157"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.157.tar.gz"
      sha256 "600fe7dff20f617f383753af035fd6bd6730797681915285b5d67b413f8aeeac"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.157.tar.gz"
      sha256 "39aa676c018be5083491c657e51a824269a3c4b413b7dc223b52193a11d143af"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
