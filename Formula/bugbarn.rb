class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.97"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.236.97.tar.gz"
      sha256 "cd2c25fb7ca8cfd267e88aeb5f9f52d938ca2c84cc55f745622052cc667ad176"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.236.97.tar.gz"
      sha256 "35d95d76912d49d76c638dcdef4cb1940ae551898dadea8101d6c8978e7416e4"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
