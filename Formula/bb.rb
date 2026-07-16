class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.149"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.149.tar.gz"
      sha256 "be9138449c59dcc589a8d40dbab81073b06c53826f2deaedc9ad5fe65eb44ff9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.149.tar.gz"
      sha256 "d48368f527e063eae5a6f4f36df17a2438a0f66e3d34dfffa3bd244447f1b36f"
    end
  end

  def install
    bin.install "bb"
  end
end
