class Bb < Formula
  desc "CLI client for BugBarn error tracking"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.77"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.77.tar.gz"
      sha256 "7e2b3bc42c3d75ee7cfc0dc28f258d9419e166a8729a935f36a619cff965755b"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.77.tar.gz"
      sha256 "8816d23b2ae434cca85754a8ad7753af5ab7c9611b834ff38f93fcaa339e144d"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb version")
  end
end
