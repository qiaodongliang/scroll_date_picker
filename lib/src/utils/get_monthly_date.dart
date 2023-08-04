int getMonthlyDate({required int year, required int month}) {
  int day = 0;
  switch (month) {
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      day = 31;
      break;
    case 2:
      day = (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 ? 29 : 28;
      break;
    case 4:
    case 6:
    case 9:
    case 11:
      day = 30;
      break;
    default:
      day = 30;
      break;
  }
  return day;
}
