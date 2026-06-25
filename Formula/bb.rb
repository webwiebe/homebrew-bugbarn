class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.103.tar.gz"
      sha256 "922eec0c120144ef5c716231e7d0c604262451d3f90a635d1d2d87b06b18de1a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.103.tar.gz"
      sha256 "00355dfd0d12145a8f0c78ee7677801185a320b76793dc1e19ce8264585521f7"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
