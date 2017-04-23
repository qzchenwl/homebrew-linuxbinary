class Sqltabs < Formula
    desc "SQL Tabs is an open source cross platform desktop client for postgresql."
    homepage "http://www.sqltabs.com/"
    version "0.16"

    url "https://github.com/sasha-alias/sqltabs/releases/download/v0.16.0/sqltabs.linux.tar.gz"
    sha256 "ddfbf8037f2d53783c079247935d5f373f6ab2933ea386055fc38f66ba8c9c77"

    bottle :unneeded

    def install
        libexec.install Dir["*"]
        bin.install_symlink({"#{libexec}/sqltabs" => "sqltabs"})
    end

    def caveats; <<-EOS.undent
        This formula depends on libpq, you have to resolve this denpendency
        based on the linux distro you use.
        EOS
    end
end
