class Edgeai < Formula
  desc "CLI that bridges Telegram with local LLM toolchains"
  homepage "https://github.com/edgehunt-ai/edgeai-bot"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/edgehunt-ai/edgeai-bot/releases/download/v0.1.1/edgeai-macos-aarch64.tar.gz"
      sha256 "c76da08cf1866f410f974f6fa89ce0902813db48098e4bdce150501314632eb6"
    end

    on_intel do
      url "https://github.com/edgehunt-ai/edgeai-bot/releases/download/v0.1.1/edgeai-macos-x86_64.tar.gz"
      sha256 "5d928244a01cf219d766a81843a1593982b058f8224e8589db44cdae9b916e00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/edgehunt-ai/edgeai-bot/releases/download/v0.1.1/edgeai-linux-aarch64.tar.gz"
      sha256 "df0380916f4a63a8a985ad2af15511197dce33f5b87cdab56a365b088ae0dc1c"
    end

    on_intel do
      url "https://github.com/edgehunt-ai/edgeai-bot/releases/download/v0.1.1/edgeai-linux-x86_64.tar.gz"
      sha256 "d57670945f822cb763bc0dc209fd24b298522188a805e3701acbb8ae697118a5"
    end
  end

  def install
    bin.install "edgeai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgeai --version")
  end
end
