import 'package:flutter/material.dart';

class Writer extends StatefulWidget {
  const Writer({Key? key}) : super(key: key);

  @override
  State<Writer> createState() => _WriterState();
}

class _WriterState extends State<Writer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        actions: [
          CloseButton(
          onPressed: (){
            Navigator.pop(context);
          },
        ),],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 12.0,top: 10.0,right: 10.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Text("PowerSupply TroubleShooting",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black87)),
              ),
              SizedBox(height: 10,),
              _ctView,
            ],
          ),
        ),
      )
    );
  }

  var mainView;

  final _ctView=RichText(text: const TextSpan(
            children: [
              TextSpan(text: 'Troubleshooting the power supply basically means isolating the supply as the cause of problems within a system and if necessary, replace it',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black87,letterSpacing: 1.0),
              ),
              WidgetSpan(child: Padding(padding: EdgeInsets.all(20)
                ,child: (Text('CAUTION \n\nit is rarely recommended that an inexperienced user open a power supply to make repairs because of the dangerous high voltage present.'
                    'Even when unplugged, power supplies can retain dangerous voltage and must be discharged (like a monitor) before service.Such internal repairs are beyond '
                    'the scope of this book and are specifically not recommended unless the technician knows what he is doing')),
              )),
              TextSpan(text: 'Many symptoms lead to suspect that the power supply in a system is failing. This can sometimes be difficult for an inexperienced technicians to see '
                  'because at times little connection seems to exist between the symptom and the cause. The power supply could fail if \n\n- there\'s a power surge from lightning,power '
                  'spikes etc, Dirt/foreign substance from cigarette smoke,house dust etc, Overheating and/or Ventilation Failures \n\n- Failure of fan(typically low reliability part'
                  ') resulting in failure to cool semiconductors and thus lead \n\n- Failure of a semiconductor component due to excessive temperature of the die or age related breakdown'
                  '\n\n- Failure of a component having low reliabity such as an electrolytic capacitor \n\n- Overload caused by a failure of a downstream component if the power supply does not'
                  ' include overload protection(such as fuses) \n\n- Transients on the AC line that are not squelched by appropriate built-in protection\n\n',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black87,letterSpacing: 1.0),),
              TextSpan(text: 'TROUBLESHOOTING POWER SUPPLY:\n  The first place to start is always confirming that the power supply is operating properly.When you start troubleshooting '
                  'a dead computer, never ignore the possibility that the AC power to the PC\'s power supply is at fault. Power supplies often fail gradually, giving rise to symptoms that'
                  ' appear to be caused by individual component failure. One major part to blame the majority of intermittent failures in cheap disposable PC\'s are on the power supply.\n'
                  '\n   THE ATX POWER SUPPLY FAILURE DIAGNOSTICS\n\n1.   The first step in power supply diagnostic is determining whether or not the power comes on. How can you tell if the '
                  'power is on? Can you hear fans turning and drives motors spinning up,see little lights on the front of the CPU case or hear beeps? If the system case is hot(if you get a shock)'
                  ', pull the plug immediately - you have a ground failure and a short. If your hearing isn\'t good, you can always check to see if the power supply fan is creating a breeze. '
                  'Monitors are powered independently, so unless you\'re looking at a notebook PC, a live screen doesn\'t indicate a working power supply supply.\n\n2.   If the power doesn\'t '
                  'come on, the first thing is to check is that you have a live power source. You don\'t need a DVM(Digital Voltmeter) to check if your power outlet is live. Just unplug the power '
                  'supply cord and plug in a lamp or a radio. If you are using a power strip, don\'t assume the socket you are using is good because the other outlets are working and the power '
                  'strip status light is on. Many power strips could have at least one bad outlet, and working outlets have.\n\n3.   Check to make sure the correct voltage(110V/ 220V) is selected '
                  'on the power supply. While this should never come up with a PC that\'s just been sitting on the desk, if you\'ve replaced the power supply or moved the PC, it\'s always a possibility '
                  '. this small red slide switch is located on power supply, usually between the power cord and the on/off override switch on the back of the case. Unplug the supply and select the '
                  'proper voltage for your country. If you tried to power up with the switch set to 220v in a country using 110v, the system should be okay when you correct the voltage. If you tried '
                  'running on 110v in a 220v country, you\'ve probably blown a fuse in the supply(at the least), or damaged the supply and possibly other components.\n\n4.   If pressing your power switch '
                  'doesn\'t immediately shut down the PC, that\'s normal for ATX stems. The action of the power switch is programmable and is controlled through CMOS Setup. The default operation '
                  'for most power switches requires you to hold the switch in for three to five seconds before the system will power down. This allows use of the power switch to wake the PC from '
                  'some power saving "sleep" or "stand-by" modes depending on CMOS setup power management settings. If the problem is that the operating system can\'t turn off the PC when you shut down '
                  ', it\'s likely a bad setting in power management or a corrupted file in the operating system\n\nOne very good reason for the power supply to fail is an unconnected power switch '
                  '. The power switch lead on ATX PCs, often labeled PW or PW-ON, runs from the front panel of the case to a connector block on the motherboard. This issue should only come up if you\'ve'
                  ' been working in the case(the leads can pull off the connection block very easily), or if you\'ve replaced the motherboard. The switch isn\'t polarized so it doesn\'t matter which way '
                  'it goes on the motherboard posts, but it must be on the correct two posts. The proper location is usually printed right on the motherboard next to the connector block, and you can also '
                  'consult the motherboard documentation. In cases where the documentation provided with the system and information printed on the motherboard don\'t agree, it is recommended to go with the '
                  'motherboard.\n\n5.   Check the switch operation with a Digital Volt Meter on the continuity or resistance setting. On all ATX systems, the power switch is really just a logic switch that '
                  'tells the motherboard, to which a trickle of live power is always supplied, to instruct the power supply to come fully alive. If your power supply features a heavy cord running forward '
                  'to a large switch on the case front, with four connections, you have an old AT style supply and potentially deadly live line voltage is present at the switch. These procedures do not '
                  'apply to the obsolete AT power supplies. When i\'m working on an ATX system and don\'t have a handy,1 short the two pins on the motherboard with a screwdriver, where the logic switch '
                  'from front panel should be attached,and see if the system starts. This is a "live power" test. Don\'t do it if you may get started and bash the screwdriver into something should the '
                  'system power up, because there\'s no way to repair short-circuit or gougoing damage once it\'s done. If the switch is bad and you don\'t have a replacement switch, check for a rest '
                  'button on the front panel. You can usually get away with using the reset button for the PW-ON logic switch, and live without the hard reset.\n\n6.   The power supply will fail to '
                  'operate if the power to motherboard isn\'t connected. Check that the 20 or 24 pin main ATX power connector and any additional motherboard power connections, such as the 4 pin ATX '
                  '12v supply (8 pin on some systems), are properly directly from the power supply with one or two 6-pin PCI Express supplementary connectors, or standard 4-pin Molex connectors, the '
                  'kind used for non-SATA drives\n\n9.   If the power supply comes on but you don\'t get a live screen,switch off and try again. You may have to hold the power switch in for five or more '
                  'seconds before the system powers back down. If it  fails to power down, youcan turn off the switch on the back of the power supply, turn off your power strip, or unplug the cord, A '
                  'PC that boots on the second or third try is most likely suffering froma quick power_ok(or power_good) signal,coming on before the power supply has stabilized. The presence of the power_'
                  'ok signal tells the motherboard that the power supply is stable, while its absence tells the motherboard to stay off to protect itself. It\'s possible the power supply isn\'t quite up to'
                  ' the current ATX standard or the motherboard is a little too demanding about timing. Booting twice every time you want to turn on the PC isn\'t an ideal situation, so unles you leave '
                  'it on all the time, look into buying a higher quality power supply, ideally one recommended by the motherboard manufacturer.\n\n10.   Beep codes are part of the PC\'s Power On Self '
                  'Test(POST) routine. One beep means the system has passed the test and the BIOS believe that the CPU and memory and video are functioning properly. All other beep codes vary by BIOS '
                  'supplier and system brand, but endlessly repeating slow beeps often indicate RAM failure, so shut down and try reseating the memory module(s). A repeated string of beeps, either 3 or 9 '
                  'beeps long, is frequently video failure, so unplug the power and try reseating the video adapter If you are getting beeps with a live screen, the problem is unlikely to be power supply '
                  'related. Proceed to the Motherboard, CPU and RAM Failure diagnostics.' ,style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black87,letterSpacing: 1.0,wordSpacing: 5.0),),
            ],
          ),);


   choice(int num) {
     if(num==0){

       mainView=_ctView;
     }
     return mainView;
    // if(num==0) {
    //   return
    //   <Widget>[
    //     RichText(text: const TextSpan(
    //       children: [
    //         TextSpan(text: "MotherBoard TroubleShooting \n",
    //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,))
    //       ],
    //     ),),
    //   ];
    //
    // }
  }
}


