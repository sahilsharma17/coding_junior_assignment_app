
class ProblemData {
  final String title;
  final String problem;
  final String constraints;
  final String example;

  ProblemData({
    required this.title,
    required this.problem,
    required this.constraints,
    required this.example,
  });
}

// List of problems
List<ProblemData> problems = [
  ProblemData(
    title: 'Problem 1',
    problem:
        'Given a list of integers, find the maximum product of two distinct elements from the list.',
    constraints:
        '- The list will contain at least two integers.\n- Integers can be both positive and negative.',
    example: 'Input: [2, 3, -2, 4]\nOutput: 6 (2 * 3)',
  ),
  ProblemData(
    title: 'Problem 2',
    problem:
        'Given an array of integers, find the subarray with the largest sum.',
    constraints:
        '- The array will contain at least one integer.\n- Integers can be both positive and negative.',
    example: 'Input: [-2, 1, -3, 4, -1, 2, 1, -5, 4]\nOutput: 6 ([4, -1, 2, 1])',
  ),
  ProblemData(
    title: 'Problem 3',
    problem:
        'Given a string, find the length of the longest substring without repeating characters.',
    constraints:
        '- The input string may contain any printable ASCII character.\n- The string may be empty.',
    example: "Input: 'abcabcbb'\nOutput: 3 ('abc' or 'bca' or 'cab')",
  ),
  ProblemData(
    title: 'Problem 4',
    problem:
        'Given a non-empty array of integers, every element appears twice except for one. Find that single one.',
    constraints:
        '- The array will always have one element that appears only once.\n- All other elements appear twice.',
    example: 'Input: [4, 1, 2, 1, 2]\nOutput: 4',
  ),
  ProblemData(
    title: 'Problem 5',
    problem:
        'Given a binary array, find the maximum length of a contiguous subarray with equal number of 0 and 1.',
    constraints:
        '- The array will contain at least one element.\n- Elements of the array can only be 0 or 1.',
    example: 'Input: [0, 1, 0, 1, 1, 1, 0, 0]\nOutput: 6 (the subarray [0, 1, 1, 1, 0, 0])',
  ),
];
