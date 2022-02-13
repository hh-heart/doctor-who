const display = document.getElementById('clock');
const audio = new Audio('https://assets.mixkit.co/sfx/preview/mixkit-alarm-digital-clock-beep-989.mp3');
audio.loop = true;
let alarmTime = null;
let alarmTimeout = null;

function updateTime() {
    const date = new Date();

    const hour = formatTime(date.getHours());
    const minutes = formatTime(date.getMinutes());
    const seconds = formatTime(date.getSeconds());



    display.innerText=`${hour} : ${minutes} : ${seconds}`
}

function formatTime(time) {
    if ( time < 10 ) {
        return '0' + time;
    }
    return time;
}

function setAlarmTime(value) {
    alarmTime = value;
}



var i=0;
function new_btn(){    
  i++;  
  var node = document.createElement('div'); 
  node.innerHTML = '<input type="datetime-local" class="symptoms" id="alarm-time' + i + '" name="alarmTime' + i + '" ><p></p><button onclick= "setAlarm(i)" type="button" class="button set-alarm" id="set-alarm' + i + '" name="alarm-set' + i + '" >Set Alarm</button>';       
  document.getElementById('mycontainer').appendChild(node);    
}
// for this section, javascript ends here

function setAlarm() {
    if(alarmTime) {
        const current = new Date();
        const timeToAlarm = new Date(alarmTime);

        if (timeToAlarm > current) {
            const timeout = timeToAlarm.getTime() - current.getTime();
            alarmTimeout = setTimeout(() => alert('Take your Medication!'), timeout);
            alert('Alarm set');
        }
    }
}



setInterval(updateTime, 1000);
