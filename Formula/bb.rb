class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.111"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.111.tar.gz"
      sha256 "ea8581d558b216c033a5456255e6fb1c071e77645b419c53a7dc4c51ac010a96"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.111.tar.gz"
      sha256 "c2dbe84e6d281113ffed544dad278949daf55a3a7c2b5795a458c9cc9caa7425"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
