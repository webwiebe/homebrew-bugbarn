class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.5.134"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.5.134.tar.gz"
      sha256 "cf014e57f4e749ff979c4b75d46d636defdf560c47f8b2fb49fac35187f78724"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.5.134.tar.gz"
      sha256 "bb7ea4773897654e88e5fe5577787c8a70aa6b3119daffe9dd823e5f8e5c3c4f"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
