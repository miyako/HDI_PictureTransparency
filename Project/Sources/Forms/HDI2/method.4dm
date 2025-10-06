
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		C_PICTURE:C286(vPict1)
		C_PICTURE:C286(vPict2)
		
		$file1:=Get 4D folder:C485(Current resources folder:K5:16)+"rgb-triangle.png"
		
		READ PICTURE FILE:C678($file1; vPict1)
		READ PICTURE FILE:C678($file1; vPict2)
		READ PICTURE FILE:C678($file1; vPict3)
		
		TRANSFORM PICTURE:C988(vPict3; Transparency:K61:11; 0x00FFFFFF)
		// or
		
		// TRANSFORM PICTURE(vPict3;102;0x00FFFFFF)
		
		$file2:=Get 4D folder:C485(Current resources folder:K5:16)+"fond.bmp"
		READ PICTURE FILE:C678($file2; vPict4)
		
		$file3:=Get 4D folder:C485(Current resources folder:K5:16)+"4D.bmp"
		READ PICTURE FILE:C678($file3; vPict5)
		
End case 
