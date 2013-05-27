# all.txt 應該是全部的 txt 加在一起的大檔
# 但我忘了這程式是在做什麼用的了?
open IN, "all.txt";
open OUT, ">out.txt";
$line = 0;
$maxline = 0;
while(<IN>)
{
	if(/pxxxxxxx/)
	{
		$line++;
		if($line > $maxline)
		{
			$maxline = $line;
			$endline = $_;
		}
	}
	else
	{
		if($maxline >10)
		{
			print OUT "$maxline : $endline";
		}
		$line = 0;
		$maxline = 0;
	}
}
print OUT "$maxline : $endline";