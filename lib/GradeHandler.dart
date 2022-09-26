class GradeHandler {
  int getPoints(String value) {
    switch (value) {
      case 'A':
        {
          return 12;
        }
      case 'A-':
        {
          return 11;
        }
      case 'B+':
        {
          return 10;
        }
      case 'B':
        {
          return 9;
        }
      case 'B-':
        {
          return 8;
        }
      case 'C+':
        {
          return 7;
        }
      case 'C':
        {
          return 6;
        }
      case 'C-':
        return 5;

      case 'D+':
        return 4;

      case 'D':
        return 3;

      case 'D-':
        return 2;

      case 'E':
        return 1;

      default:
        return 0;
    }
  }
}
