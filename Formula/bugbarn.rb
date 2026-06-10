class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.66"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.66.tar.gz"
      sha256 "2e256aeac5df3c016bcc0d42cd1664290ee6d87798c6fce24a40be0d6ea75b2f"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.66.tar.gz"
      sha256 "b4644d0afc77f7e374dd95411e7ccd39bdcb27de75e908e2388dfafa3bcdb93a"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
