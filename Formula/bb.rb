class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.84"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.84.tar.gz"
      sha256 "926cd0fc8933f24c894a60711b22b26dabcc79b35ecc5492057792f351484873"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.84.tar.gz"
      sha256 "809d6434358ca14710f9e6cfd101bb69eb771200d94ecc36f06f2a2880383c7b"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
