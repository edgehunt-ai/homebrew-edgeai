class Edgeai < Formula
  desc "CLI that bridges Telegram with local LLM toolchains"
  homepage "https://github.com/edgehunt-ai/edgeai-bot"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/edgehunt-ai/edgeai-bot/releases/download/v0.1.0/edgeai-macos-aarch64.tar.gz"
      sha256 "5094e09de9cf6929acf76d8274aace44fea1dfa1262d17ad99adc1f1bddc9662"
    end

    on_intel do
      url "https://github.com/edgehunt-ai/edgeai-bot/releases/download/v0.1.0/edgeai-macos-x86_64.tar.gz"
      sha256 "7353f273559bedfae462bcf1fd1ab368f6323f4d59e3d822fcbe7b7fbaf3ec4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/edgehunt-ai/edgeai-bot/releases/download/v0.1.0/edgeai-linux-aarch64.tar.gz"
      sha256 "79f99cb0e028517638c5c5572e79a7c198b9f8a24d27d5507af3664daeb97fcf"
    end

    on_intel do
      url "https://github.com/edgehunt-ai/edgeai-bot/releases/download/v0.1.0/edgeai-linux-x86_64.tar.gz"
      sha256 "cee45a321bf8cdf6fdfdea100f87c72ad0d8c2bcd192dccefb5d32b6e9cae324"
    end
  end

  def install
    bin.install "edgeai"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/edgeai --version")
  end
end
