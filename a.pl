# all.txt ���ӬO������ txt �[�b�@�_���j��
# ���ڧѤF�o�{���O�b������Ϊ��F?
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