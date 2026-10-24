class Bb < Formula
  desc "BugBarn"
  homepage "https://github.com/wiebe-xyz/bugbarn"
  version "0.236.275"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://webwiebe.nl/brew/bb-darwin-amd64-0.236.275.tar.gz"
      sha256 "8533b846e9cb97ee6c532f1a73cb2156d68ed43989cbb0a5063c4d11d9d825dc"
    elsif Hardware::CPU.arm?
      url "https://webwiebe.nl/brew/bb-darwin-arm64-0.236.275.tar.gz"
      sha256 "b26ce3b10961b1fadc472fa9859ab33b83d8b7480311e661c4b1163ac099173e"
    end
  end

  def install
    bin.install "bb"
  end
end
