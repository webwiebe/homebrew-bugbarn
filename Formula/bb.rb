class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.89"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.89.tar.gz"
      sha256 "a9e03585118e46f0e01fc47239bccbc9d60c7b6d3594f5fc802c5df158db9d94"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.89.tar.gz"
      sha256 "d3fa1d1b9c97544425e0249618e47b7229e4f09b0488299cbb9105ad98cb8e5b"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
