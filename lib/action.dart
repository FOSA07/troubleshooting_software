

import 'package:example_flutter/main.dart';

class Control{
  String setText="";
  String? ans;
  late int c;
  late int d;

  Control(this.c);

  String? operation(){

    if(c==0){
      setText="POWER COMES ON?";
    }
    if(c==1) {
      setText="LIVE SCREEN?";
    }else if(c==2){
      setText="BOOT ON SECOND TRY?";
    }else if(c==3){
      setText="PREMATURE POWER_OK SIGNAL. TRY DIFFERENT POWER SUPPLY";
    }else if(c==-2){
      setText="PROCEED TO VIDEO FAILURE CHART";
    }else if(c==-1){
      setText="GOOD POWER SOURCE?";
    }else if(c==-3){
      setText="USE LIVE OUTLET";
    }else if(c==4){
      setText="Is 110/220v SET?";
    }else if(c==-4){
      setText="SELECT PROPER VOLTAGE ON REAR OF POWER SUPPLY.";
    }else if(c==-5){
      setText="HEAR ANY BEEPS?";
    }else if(c==5){
      setText="PROCEED TO MOTHERBOARD FAILURE CHART";
    }else if(c==-6){
      setText="NEW HARDWARE INSTALLED?";
    }else if(c==6){
      setText="REMOVE LATEST ADDITION AND RETRY. TEST,REPLACE POWER SUPPLY.";
    }else if(c==7){
      setText="INSTALLED MOTHERBOARD LEAD?";
    }else if(c==-7){
      setText="CHECK MANUAL AND MOTHERBOARD SILKSCREEN, CONNECT LEAD FROM FRONT PANEL SWITCH";
    }else if(c==8){
      setText="POWER SWITCH FAIL?";
    }else if(c==9){
      setText="REPLACE SWITCH OR SUBSTITUTE FRONT PANEL SWITCH, IF AVAILABLE.";
    }else if(c==-8){
      setText="POWER SUPPLY CONNECTIONS TO MOTHERBOARD CORRECT?";
    }else if(c==10){
      setText="HARD DRIVE SPIN UP?";
    }else if(c==-9){
      setText="REMAKE MOTHERBOARD POWER SUPPLY CONNECTIONS";
    }else if(c==-10){
      setText="SPIN UP ON OTHER LEAD?";
    }else if(c==-11){
      setText="TRY DRIVE IN TEST PC";
    }else if(c==11){
      setText="DEFECTIVE POWER SUPPLY LEAD OR CONNECTOR.";
    }else if(c==12){
      setText="BUILD ADAPTER ON BUS?";
    }else if(c==13){
      setText="STRIP SYSTEM DOWN TO VIDEO ADAPTER ONLY. SEE BOX A, ON CONFLICT RESOLUTION CHART";
    }else if(c==-12){
      setText="POWERS MOTHERBOARD ON BENCH?";
    }else if(c==-13){
      setText="REPLACE POWER SUPPLY";
    }else if(c==14){
      setText="EITHER YOU HAVE A SHORT CIRCUIT IN THE CASE OR A GEOMETRY PROBLEM PLACING AN UNACCEPTABLE STRESS ON THE MOTHERBOARD.IT'S ALSO" +
          "POSSIBLE THAT THE VIDEO ADAPTER ";
    }
    d=c;

    return setText;
  }

  int counter(int num,int wish,int cont){
    c=num;
    if(cont==1) {
      if (wish == 1) {
        yes();
      } else if (wish == 2) {
        no();
      }
    }else if(cont==2){
      if (wish == 1) {
        MByes();
      } else if (wish == 2) {
        MBno();
      }
    }

    print('d $d');
    return d;
  }

  String? yes(){

    if(c==0) {
      c++;
    }else if(c==1){
      c++;
    }else if(c==2) {
      c++;
    }else if(c==-1){
      c=4;
    }else if(c==-5){
      c=5;
    }else if(c==-6){
      c=6;
    }else if(c==4){
      c=7;
    }else if(c==7){
      c=8;
    }else if(c==8){
      c=9;
    }else if(c==-8){
      c=10;
    }else if(c==-10){
      c=11;
    }else if(c==10){
      c=12;
    }else if(c==12){
      c=13;
    }else if(c==-12){
      c=14;
    }
    print('yes c $c');

    ans=operation();
    return ans;
  }

  String? no(){

    if(c==0){
      c=-1;
    }else if(c==1){
      c=-2;
    }else if(c==-1){
      c=-3;
    }else if(c==4){
      c=-4;
    }else if(c==2){
      c=-5;
    }else if(c==-5){
      c=-6;
    }else if(c==7){
      c=-7;
    }else if(c==8){
      c=-8;
    }else if(c==-6){
      c=10;
    }else if(c==-8){
      c=-9;
    }else if(c==10){
      c=-10;
    }else if(c==-10){
      c=-11;
    }else if(c==12){
      c=-12;
    }else if(c==-12){
      c=-13;
    }
    print('no c $c');

    ans=operation();
    return ans;
  }

  String? MBOperation(){

    if(c==0){
      setText="Live Screen?";
    }else if(c==1){
      setText="Freezes on boot screen?";
    }else if(c==-1){
      setText="Power diagnostic done?";
    }else if(c==2){
      setText="Video diagnostic done?";
    }else if(c==-2){
      setText="Proceed to Power Supply Failure";
    }else if(c==3){
      setText="RAM Matched seated";
    }else if(c==-3){
      setText="Proceed to video failure diagnostic chart";
    }else if(c==4){
      setText="CPU Seated Flat?";
    }else if(c==-4){
      setText="Reset RAM positive lever lock,Install pairs if required";
    }else if(c==5){
      setText="Fan on heatSink active?";
    }else if(c==-5){
      setText="Restart CPU and heatsink";
    }else if(c==6){
      setText="Hear Beeps?";
    }else if(c==-6){
      setText="Check fan power point,(fan 1), replace";
    }else if(c==7){
      setText="Replace RAM with type listed in motherboard documentation";
    }else if(c==-7){
      setText="Default motherBoard settings";
    }else if(c==8){
      setText="Runs on bench?";
    }else if(c==-8){
      setText="Restore default motherboard settings with jumpers or switches";
    }else if(c==9){
      setText="Locate short binding or swap case";
    }else if(c==-9){
      setText="CPU Swap work?";
    }else if(c==10){
      setText="Bad CPU, Watch voltage and heatsink on replacemet ";
    }else if(c==-10){
      setText="MotherBoard bad";
    }else if(c==11){
      setText="Freezes bare bones?";
    }else if(c==-11){
      setText="Proceed to MotherBoard Performance chat";
    }else if(c==-12){
      setText="Proceed to Conflict resolution chart";
    }else if(c==12){
      setText="Freezes on Swapped RAM?";
    }else if(c==13){
      setText="CMOS Settings default?";
    }else if(c==14){
      setText="Heatsink active?";
    }else if(c==-14){
      setText="Load defaults from BIOS";
    }else if(c==-15){
      setText="Intall new heatsink, connect fan may be too late for CPU";
    }
    d=c;

    return setText;
  }

  String? MByes(){
    if(c==0){
      c=1;
    }else if(c==-1){
      c=2;
    }else if(c==2){
      c=3;
    }else if(c==3){
      c=4;
    }else if(c==4){
      c=5;
    }else if(c==5){
      c=6;
    }else if(c==6){
      c=7;
    }else if(c==-7){
      c=8;
    }else if(c==8){
      c=9;
    }else if(c==-9){
      c=10;
    }else if(c==1){
      c=11;
    }else if(c==11){
      c=12;
    }else if(c==12){
      c=13;
    }else if(c==13){
      c=14;
    }else if(c==14){
      c=8;
    }

    ans=MBOperation();
    return ans;
  }

  String? MBno(){
    if(c==0){
      c=-1;
    }else if(c==-1){
      c=-2;
    }else if(c==2){
      c=-3;
    }else if(c==3){
      c=-4;
    }else if(c==4){
      c=-5;
    }else if(c==6){
      c=-7;
    }else if(c==-7){
      c=-8;
    }else if(c==8){
      c=-9;
    }else if(c==-9){
      c=-10;
    }else if(c==1){
      c=-11;
    }else if(c==11){
      c=-12;
    }else if(c==12){
      c=7;
    }else if(c==13){
      c=-14;
    }else if(c==14){
      c=-15;
    }

    ans=MBOperation();
    return ans;
  }
}