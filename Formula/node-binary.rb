class NodeBinary < Formula
    desc "Platform built on the V8 JavaScript runtime to build network applications, binaries installation. This is the current version with latest features."
    homepage "https://nodejs.org/"
    version "7.3.0"

    option "with-taobao-mirror", "Download tarball from https://npm.taobao.org/mirrors/node/, use this option if you're in mainland China for a faster downloading speed."

    if MacOS.prefer_64_bit?
        if build.with? "taobao-mirror"
            url "https://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}-linux-x64.tar.xz"
        else
            url "https://nodejs.org/dist/v#{version}/node-v#{version}-linux-x64.tar.xz"
        end

        sha256 "e5caa2040084015198cab97181aa450c687a19cbf76a09cc81e8368dad81fd8c"
    else
        if build.with? "taobao-mirror"
            url "https://npm.taobao.org/mirrors/node/v#{version}/node-v#{version}-linux-x86.tar.xz"
        else
            url "https://nodejs.org/dist/v#{version}/node-v#{version}-linux-x86.tar.xz"
        end

        sha256 "90edc1e88c07ed63c1fb5acc86f0c9280821f2371d64d73c05cb6e3b41df10a8"
    end

    bottle :unneeded
    conflicts_with "node", "node-binary-lts"

    def install
        libexec.install Dir["*"]
        bin.install_symlink Dir["#{libexec}/bin/*"]
    end
end
