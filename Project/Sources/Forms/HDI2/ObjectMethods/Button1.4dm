
$file2:=Get 4D folder:C485(Current resources folder:K5:16)+"fond.bmp"
READ PICTURE FILE:C678($file2; vPict4)

$file3:=Get 4D folder:C485(Current resources folder:K5:16)+"4D.bmp"
READ PICTURE FILE:C678($file3; vPict5)

TRANSFORM PICTURE:C988(vpict5; Scale:K61:2; 1.5; 1.5)

COMBINE PICTURES:C987(vpict4; vpict4; Superimposition:K61:10; vPict5; 30; 90)