class AndroidStudio < Formula
    desc "The official Android IDE."
    homepage "https://developer.android.com/sdk/"
    version "2.3.1.0_3871768"
    url "https://dl.google.com/dl/android/studio/ide-zips/2.3.1.0/android-studio-ide-162.3871768-linux.zip"
    sha256 "36520f21678f80298b5df5fe5956db17a5984576f895fdcaa36ab0dbfb408433"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/bin/studio.sh" => "android_studio"})
    end
end
