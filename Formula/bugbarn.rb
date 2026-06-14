class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.81"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.81.tar.gz"
      sha256 "aec298481080d97cdc06f5ea50f426d34d467ed92c8f767504bd9e4e281fe3a8"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.81.tar.gz"
      sha256 "6771034e636c3a8f35687a4edadc83e5414fb9e43cca8a21460a87e640a650e2"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
