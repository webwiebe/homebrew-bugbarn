class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.46"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.46.tar.gz"
      sha256 "43c95ce13d9c4e71d3c0851cac710e558c26501622d55e64edc127465417b2b0"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.46.tar.gz"
      sha256 "addbac601da8f62fe202c377e6b172252a1fe322917233f09b73df07f9b1f79d"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
