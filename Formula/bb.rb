class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.120"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.5.120.tar.gz"
      sha256 "fa0433b55c360d7969badd1970112c5238caab9914a7725e5dc7da6ec58aa70a"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.5.120.tar.gz"
      sha256 "ba88c7b7ee5fa602b75dd8ac32c41feb2f538dbe8bc04db95f235ba192b0eb21"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
