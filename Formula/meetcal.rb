class Meetcal < Formula
  desc "CLI for querying MeetCal lifting data"
  homepage "https://github.com/meetcal/meetcal-cli"
  version "2.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-cli/releases/download/v2.0.1/darwin-arm64.tar.gz"
      sha256 "1edadee4e6e8feee97abc92bf10903feb1a02d9771a03537089d2b2a02c23439"
    else
      url "https://github.com/meetcal/meetcal-cli/releases/download/v2.0.1/darwin-x64.tar.gz"
      sha256 "899c50c750c45dbd17ddd77473e7124497a7cdcb4396df73a80a470bf51c0c63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-cli/releases/download/v2.0.1/linux-arm64.tar.gz"
      sha256 "0066fe10fcf33759a7f60b6b0f52911ef6af3eca046b9da2df62447200ade414"
    else
      url "https://github.com/meetcal/meetcal-cli/releases/download/v2.0.1/linux-x64.tar.gz"
      sha256 "bdc98b0591c647a29326a101b07ffb67e10a8743b91ad8ac0bba8b7fa505e26a"
    end
  end

  def install
    bin.install "meetcal"
  end

  test do
    system bin/"meetcal", "--help"
  end
end
