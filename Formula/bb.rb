class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.106"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.106.tar.gz"
      sha256 "11e12161e509270f5250dbc39ff3a5ad30ec93880649c0a8da51eb686b285ab9"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.106.tar.gz"
      sha256 "0477f49b9a4841f02a014e6701adf44e2c6bd8361b8e29246d4c7cba2976c3eb"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
