#import <AudioToolbox/AudioToolbox.h>

%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)app {

	%orig;

	AudioServicesPlaySystemSound(kSystemSoundID_Vibrate); // try to vibrate phone with AudioToolbox

	NSLog(@"[NotifyOnRespring] The device has resprung and been vibrated."); // Send to log that tweak succeeded

}

%end
