import android.*;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import processing.core.*;
import processing.*;

import android.view.inputmethod.InputMethodManager;

import android.database.Cursor;
import android.content.ContentResolver;
import android.provider.ContactsContract;
//import android.support.v4.app.ActivityCompat;
import android.app.Activity;
import android.database.Cursor;
import android.content.Intent;
import android.net.Uri;

import javax.swing.JOptionPane;

int state = 0;

boolean root, keyboard;
String rootacc;
String acc;



Bootscreen bs;
Desktop desktop;
TF tf;

Activity act;

void settings() {
  fullScreen();
  bs = new Bootscreen();
  desktop = new Desktop();
  tf = new TF();
}

void draw() {
  if (state == 0) {
    bs.drawBootScreen();
  } else if (state == 1) {
    desktop.drawDesktop();
  }
  
  if(bs.size <= 1040){
    bs.size += 10;
  }else{
    state = 1;
  }
  
}

void mousePressed() {
  if(state == 1){
    state++;
  }
}

void mouseReleased() {
  if (mouseX >= 1 && mouseX <= width && mouseY >= 1 && mouseY <= height/2) {
    if (state == 2) {
      act = this.getActivity(); 
      Cursor phones = act.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, null, null, null);
      while (phones.moveToNext()) {
        String contactName=phones.getString(phones.getColumnIndex(ContactsContract.CommonDataKinds.Phone.DISPLAY_NAME));
        String contactNumber = phones.getString(phones.getColumnIndex(ContactsContract.CommonDataKinds.Phone.NUMBER));
        print(contactName+"  ");
        println(contactNumber);
      }
      phones.close();
      Uri number = Uri.parse("tel:");
      Intent callIntent = new Intent(Intent.ACTION_DIAL, number);
      startActivity(callIntent);
    }
    state = 1;
  }


  if (mouseX >= 1 && mouseX <= width && mouseY >= height/2 && mouseY <= height) {
    if (state == 2) {
      tf.drawTF();
    }
  }
}


void backPressed() {
  if (state >= 2) {
    state = 1;
  }
}
