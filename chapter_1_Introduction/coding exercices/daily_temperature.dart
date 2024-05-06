List<int> dailyTemperatures(List<int> temperatures) {
  List<int> answer = List.filled(temperatures.length, 0);
  List<int> stack = [];

  for (int i = 0; i < temperatures.length; i++) {
    while (stack.isNotEmpty && temperatures[i] > temperatures[stack.last]) {
      int prevIndex = stack.removeLast();
      answer[prevIndex] = i - prevIndex;
    }
    stack.add(i);
  }

  return answer;
}

void main() {
  List<int> temperatures1 = [73, 74, 75, 71, 69, 72, 76, 73];
  print(dailyTemperatures(temperatures1)); // Output: [1,1,4,2,1,1,0,0]

  List<int> temperatures2 = [30, 40, 50, 60];
  print(dailyTemperatures(temperatures2)); // Output: [1,1,1,0]

  List<int> temperatures3 = [30, 60, 90];
  print(dailyTemperatures(temperatures3)); // Output: [1,1,0]
}
