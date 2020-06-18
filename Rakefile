## [ Deploy ] ##################################################################

swifty_mocky_url = "git@github.com:MakeAWishFoundation/SwiftyMocky.git"

desc "Sets new version"
task :version do
    ARGV.each { |a| task a.to_sym do ; end }
    version_from = ARGV[1].to_s.strip
    version_to = ARGV[2].to_s.strip
    if version_from && !version_from.empty? && version_to && !version_to.empty?
        print("Changing version from #{version_from} -> #{version_to} !\n")
        sh("sed -i '' 's|#{version_from}|#{version_to}|g' ./Makefile")
        sh("sed -i '' 's|#{version_from}|#{version_to}|g' ./README.md")
        sh("sed -i '' 's|#{version_from}|#{version_to}|g' ./Sources/SwiftyMockyCLICore/Application.swift")
    else
        print("Missing versions!\n")
        exit(1)
    end
end

desc "Assetizes template for specified version of a SwiftyMocky"
task :assetize do
    ARGV.each { |a| task a.to_sym do ; end }
    version = ARGV[1].to_s.strip
    if !version.empty?
        print("Assetizing version \"#{version}\":\n")
        # Checkout specified branch/tag
        sh("git clone --single-branch -b #{version} #{swifty_mocky_url} ./Temp")
        # Copy assets
        sh("cp ./Temp/Sources/Mock/Mock.swifttemplate ./Sources/Templates/Mock.swifttemplate")
        sh("cp ./Temp/Sources/Prototype/Prototype.swifttemplate ./Sources/Templates/Prototype.swifttemplate")
        # Clean temp contents
        sh("rm -rf ./Temp")
        # Assetize template
        sh("swift run swiftymocky assetize")
    else
        print("Missing version number!\n")
        exit(1)
    end
end

desc "Deploys new version of a binary, by pushing passed tag"
task :deploy do
    ARGV.each { |a| task a.to_sym do ; end }
    version = ARGV[1].to_s
    if version && !version.to_s.strip.empty?
        print("Deploying version \"#{version}\":\n")
        # Deploy new CLI version
        sh("git tag #{version} && git push --tags")
    else
        print("Missing version number!\n")
        exit(1)
    end
end

## [ Buid ] ####################################################################

desc "Build CLI"
task :build do
    sh("swift build")
end

## [ Helpers ] #################################################################

def print_info(str)
    (red,clr) = (`tput colors`.chomp.to_i >= 8) ? %W(\e[33m \e[m) : ["", ""]
    puts red, "== #{str.chomp} ==", clr
end
