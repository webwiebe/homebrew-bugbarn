class Bugbarn < Formula
  desc "Self-hosted error tracking server"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bugbarn-darwin-amd64-0.3.7.tar.gz"
      sha256 "fe47e5c0514e94050d47709a3b2a9e785151e41ed4e0f901782656d96813ac1c"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bugbarn-darwin-arm64-0.3.7.tar.gz"
      sha256 "a4db7ddcb7578aaf717dd4edb90ba9b43170a2b72980461af30be86c07441d66"
    end
  end

  def install
    bin.install "bugbarn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bugbarn version")
  end
end
