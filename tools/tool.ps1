cd "..\docs\images"
$fileArr = Get-ChildItem -Name
$outFilePath = "..\js\sticker.load.js"
function addString
{
    param (
        $text,
        $outFilePath,
        $maxLength
    )
    write-output $text | out-file -filepath $outFilePath -NoClobber -Append -Width $maxLength
}
function addText
{
    param (
        $text
    )
    write-output $text | out-file -filepath $outFilePath -NoClobber -Append -Width 255
}
write-output "let sticker_list=[" | out-file -filepath $outFilePath -Width 255
foreach($filename in $fileArr)
{
    addText "{"
    addText ("title:'" + $filename + "',")
    addText ("href:'images/" + $filename + "',")
    addText "},"
}
addText "];"
