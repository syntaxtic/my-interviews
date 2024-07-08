#       A
#      / \
#     B   C
#    / \   \
#   D   E   F
#      / \
#     G   H
#    /
#   I
#
# Input: 2 LNodes
# Output: first common ancestor LNode
#

# first: on level 5 (n)
# second: on level 2

def get_common_ancestor(first, second):
    # implement solution here

    # B: [B, A]
    # D: [D, B, A]
    # I: [I, G, E, B , A]

    if first == second:
        return first

    # Step 1: List ancestors
    firstAncestors = [first]
    while first.parent is not None:
        firstAncestors.append(first.parent)
        first = first.parent

    while second is not None:
        if second in firstAncestors:
            return second
        second = second.parent


    # Step 2: Find the first common ancestor
    firstLength = len(firstAncestors)
    secondLength = len(secondAncestors)

    for i in range(0, firstLength):

        firstIndex = firstLength -1 - i
        secondIndex = secondLength -1 - i

        if firstIndex < 0:
            return firstAncestors[0]

        if secondIndex < 0:
            return secondAncestors[0]

        if firstAncestors[firstIndex] != secondAncestors[secondIndex]:
            return firstAncestors[firstIndex +1]


    return firstAncestors[-1]


class LNode:
    def __init__(self, name, parent):
        self.name = name
        self.parent = parent
        self.children = []
        if parent is not None:
            parent.add_child(self)

    def __str__(self):
        return str(self.name)

    def add_child(self, child):
        self.children.append(child)


def test(first, second, commonAncestor):
    print(first.name + " & " + second.name + " -> " +
          "Expected: " + commonAncestor.name +
          " | Actual: " + get_common_ancestor(first, second).name)

a = LNode("A", None);
b = LNode("B", a);
c = LNode("C", a);
d = LNode("D", b);
e = LNode("E", b);
f = LNode("F", c);
g = LNode("G", e);
h = LNode("H", e);
i = LNode("I", g);

test(d, i, b) # D & I -> B
test(i, d, b) # I & D -> B
test(g, h, e) # G & H -> E
test(d, f, a) # D & F -> A
test(d, g, b) # D & G -> B
test(h, f, a) # H & F -> A
test(i, h, e) # I & H -> E
test(a, e, a) # A & E -> A
test(e, a, a) # E & A -> A
test(g, g, g) # G & G -> G
