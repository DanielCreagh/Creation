require 'rubygems'
require 'nokogiri'

SUBSTRING_FEATURE             = 'Feature\/'
SUBSTRING_ISSUE               = 'Issue\/'
FEATURES_NOTES_FILE_NAME      = 'featureNotes.txt'
FEATURES_NOTES_FILE_NAME_TEMP = 'tempFeatureNotes.txt'
HEADER_STRING_FEATURE_NOTES   = "Feature Notes\n=============\n\n"
RELEASE_NOTES_FILE_NAME       = "Release_notes.txt"
RELEASE_NOTES_FILE_NAME_TEMP  = "Release_notes_temp.txt"
HEADER_STRING_RELEASE_NOTES   = "Release Notes v"
HEADER_STRING_RELEASE_LINE    = "==================\n\n"
SUB_HEADING_RELEASE           = "Version: "
SUB_HEADING_RELEASE_LINE      = "------------\n"

PATH_PLIST                    = "./Creation/Info.plist"
PATH_MANIFEST_XML             = "Boss/app/src/main/AndroidManifest.xml"

IS_DROID = false # false if iOS build

task :test_command do 

  puts "THIS TASK IS BEING EXECUTED"

  if File.file?(PATH_MANIFEST_XML)
    puts "ANDROID MANIFEST FOUND"    
    next
  end 

  if File.file?(PATH_PLIST)
    puts "iOS PLIST FOUND"    
    next
  end 

  puts "neither ios or android components found"
end

task :update_feature_notes do

  last_commit_msg =  `git log -1 --pretty=%B`
  if last_commit_msg.match /(#{SUBSTRING_ISSUE}|#{SUBSTRING_FEATURE})./
    feature_text = last_commit_msg.match /(#{SUBSTRING_ISSUE}|#{SUBSTRING_FEATURE}).+/
    first, commit_name = feature_text[0].split("/")
    commit_name = commit_name.strip
    feature_notes_file = File.open FEATURES_NOTES_FILE_NAME, "a+"
    temp_feature_notes_file = File.open FEATURES_NOTES_FILE_NAME_TEMP, "a+"
    temp_feature_notes_file.puts HEADER_STRING_FEATURE_NOTES
    temp_feature_notes_file.puts "- (#{getBuildVersionNumber}) #{commit_name}\n"
    File.readlines(FEATURES_NOTES_FILE_NAME).each do |line|
      if line.match /^(- \()./
        temp_feature_notes_file.puts line
      end
    end
    feature_notes_file.close
    temp_feature_notes_file.close
    `rm #{FEATURES_NOTES_FILE_NAME}`   
    `mv #{FEATURES_NOTES_FILE_NAME_TEMP} #{FEATURES_NOTES_FILE_NAME}`
    commitAndPushToGit(FEATURES_NOTES_FILE_NAME, "Updating new feature notes for v#{getBuildVersionNumber}")
  end
end

task :update_release_notes do

  temp_release_notes_file = File.open RELEASE_NOTES_FILE_NAME_TEMP, "a+"
  releaseNotesHeaderString = HEADER_STRING_RELEASE_NOTES 
  releaseNotesHeaderString << getBuildVersionNumber
  temp_release_notes_file.puts releaseNotesHeaderString
  temp_release_notes_file.puts HEADER_STRING_RELEASE_LINE
  lastReleaseVersionNumber = getLastReleaseVersion

  File.readlines(FEATURES_NOTES_FILE_NAME).each do |line|
    if line.match /^(- \()./
      versionString = line.match /\(([0-9]+)\)/
      versionNumber = versionString[0].match /([0-9]+)/
      versionNumber = versionNumber[0].to_i
      if versionNumber > lastReleaseVersionNumber
        line[/\(([0-9]+)\)/] = ""
        temp_release_notes_file.puts line
      end 
    end
  end

  if File.file?(RELEASE_NOTES_FILE_NAME)
    temp_release_notes_file.puts "\n\n"
    subHeading = SUB_HEADING_RELEASE
    subHeading << lastReleaseVersionNumber.to_s
    temp_release_notes_file.puts subHeading
    temp_release_notes_file.puts SUB_HEADING_RELEASE_LINE
    File.readlines(RELEASE_NOTES_FILE_NAME).each_with_index do |line, index|
      if !(index == 0 || index == 1) # ignore the first two lines as they're just headers
        temp_release_notes_file.puts line
      end
    end
    `rm #{RELEASE_NOTES_FILE_NAME}`
  end

  temp_release_notes_file.close
  `mv #{RELEASE_NOTES_FILE_NAME_TEMP} #{RELEASE_NOTES_FILE_NAME}`
  commitAndPushToGit(RELEASE_NOTES_FILE_NAME, "Updating Release notes for v#{getBuildVersionNumber}")
end

def getLastReleaseVersion

  if !File.file?(RELEASE_NOTES_FILE_NAME)
    return 0
  end 

  File.readlines(RELEASE_NOTES_FILE_NAME).each do |line|
    if line.match /(#{HEADER_STRING_RELEASE_NOTES})*/  
      number = line.match /(v)([0-9]+)/
      number = number[0].match /([0-9]+)/
      return number[0].to_i
    end
  end  
end

def getBuildVersionNumber 
  if IS_DROID
    doc = File.open(PATH_MANIFEST_XML) { |f| Nokogiri::XML(f) }
    return doc.xpath("//manifest").attr("versionCode")
  end
  %x[/usr/libexec/PlistBuddy -c "Print CFBundleVersion" #{PATH_PLIST}].to_i
end

def commitAndPushToGit(filename, commitMessage)
 puts ` git status `  
 puts ` git add #{filename} `
 puts ` git commit -m "#{commitMessage} [ci skip]" `
 puts ` git push origin HEAD `
end

