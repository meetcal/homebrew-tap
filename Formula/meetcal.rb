class Meetcal < Formula
  desc "CLI for querying MeetCal lifting data"
  homepage "https://github.com/meetcal/meetcal-app/tree/master/cli"
  version "3.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v3.1.0/darwin-arm64.tar.gz"
      sha256 "97af6827e9b3ac3a0b40cafeabd6aefb16fa9793774463bbb4c44cd23bc9c673"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v3.1.0/darwin-x64.tar.gz"
      sha256 "a4f9da560d807434856242ca9bf8217d8676cf61dcf604481dd2f25bb1143f36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v3.1.0/linux-arm64.tar.gz"
      sha256 "07b826dafbea9648f88ce2520f6b8bc3801ccc6ceeaf0701e333424573472dcd"
    else
      url "https://github.com/meetcal/meetcal-app/releases/download/cli-v3.1.0/linux-x64.tar.gz"
      sha256 "1f96632a327712da2f359c6cd1b2dd8fcbb4fae149bc863af26b0c7431f2ce4f"
    end
  end

  def install
    bin.install "meetcal"
  end

  test do
    system bin/"meetcal", "--help"
  end
end
