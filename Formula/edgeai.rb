class Edgeai < Formula
  desc "CLI that bridges Telegram with local LLM toolchains"
  homepage "https://github.com/edgehunt-ai/edgeai-bot"
  version "0.1.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/edgehunt-ai/edgeai-bot/releases/download/v0.1.2/edgeai-macos-aarch64.tar.gz"
      sha256 "916a1ceae0ad4a5d0692257228024276d3dc8e2e147d04b7fdd758e9286a1fca"
    end

    on_intel do
      url "https://github.com/edgehunt-ai/edgeai-bot/releases/download/v0.1.2/edgeai-macos-x86_64.tar.gz"
      sha256 "089beefe52754f0795f9590f4fd9cccdceff8fe21adae0bf25d26704953ee3ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/edgehunt-ai/edgeai-bot/releases/download/v0.1.2/edgeai-linux-aarch64.tar.gz"
      sha256 "f0eb8b6eba1372d6a584c1f00807334042c829c2a3fb187a22148aaa3e49a7c7"
    end

    on_intel do
      url "https://github.com/edgehunt-ai/edgeai-bot/releases/download/v0.1.2/edgeai-linux-x86_64.tar.gz"
      sha256 "24ba9f251b63ed98a1d6f9b760182ccef36f1bfbf06be38c74b9a9fda0774594"
    end
  end

  def install
    bin.install "edgeai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgeai --version")
  end
end
