

class CustomDateFormatter {
  
  var date;

  CustomDateFormatter () {
    date = DateTime.now();
  }

  String get dmy => '$shortDay ${date.day} de $month';
  
  String get day {
    switch (date.weekday) {
      case 1:
        return 'Lunes';
        break;
      case 2:
        return 'Martes';
        break;
      case 3:
        return 'Miércoles';
        break;
      case 4:
        return 'Jueves';
        break;
      case 5:
        return 'Viernes';
        break;
      case 6:
        return 'Sábado';
        break;
      case 7:
        return 'Domingo';
        break;
    }
    return '';
  }

  String get shortDay {
    switch (date.weekday) {
      case 1:
        return 'Lun.';
        break;
      case 2:
        return 'Mar.';
        break;
      case 3:
        return 'Miér.';
        break;
      case 4:
        return 'Jue.';
        break;
      case 5:
        return 'Vie.';
        break;
      case 6:
        return 'Sáb.';
        break;
      case 7:
        return 'Dom.';
        break;
    }
    return '';
  }

  String get month {
    switch (date.month) {
      case 1:
        return 'Enero';
        break;
      case 2:
        return 'Febrero';
        break;
      case 3:
        return 'Marzo';
        break;
      case 4:
        return 'Abril';
        break;
      case 5:
        return 'Mayo';
        break;
      case 6:
        return 'Junio';
        break;
      case 7:
        return 'Julio';
        break;
      case 8:
        return 'Agosto';
        break;
      case 9:
        return 'Septiembre';
        break;
      case 10:
        return 'Octubre';
        break;
      case 11:
        return 'Noviembre';
        break;
      case 12:
        return 'Diciembre';
        break;
    }
    return '';
  }
  
  String get time {
    if(date.hour<10) {
      return date.minute<10 ? '0${date.hour}\n0${date.minute}' : '0${date.hour}\n${date.minute}';
    } else {
      return date.minute<10 ? '${date.hour}\n0${date.minute}' : '${date.hour}\n${date.minute}';
    }
  }
}